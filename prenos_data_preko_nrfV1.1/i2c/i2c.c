#include "i2c.h"
#include "../usart/usart.h"
#include "stm32f4xx.h"
#include "../delay/delay.h"
#include <stdint.h>


volatile uint8_t i2c1_addresa;

void initI2C1(uint8_t adresa)
{
  // inicijalizaicja pinova PB8 (SCL) & PB9 (SDA)
  {
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;

    GPIOB->MODER &= ~(GPIO_MODER_MODER8 | GPIO_MODER_MODER9);
    GPIOB->MODER |= GPIO_MODER_MODER8_1 | GPIO_MODER_MODER9_1;                // AFR mode
    
      /*
      Open-drain → da se pinovi ne tuku kad više uređaja šalje "1"/"0".
      Pull-up → da linija ne "visi u zraku" nego da prirodno ode u logičku "1" kad niko ne vuče.   

      kod I2C je standard, da su SCL i SDA pinovi OPEN-DRAIN, mora se podesiti pull-up na pupdr registru, jer:
      Pošto pinovi nikad aktivno ne tjeraju "1" (zbog open-drain logike), mora postojati nešto što liniju drži na "1" kad niko ne vuče.
      */

    GPIOB->OTYPER |= (GPIO_OTYPER_OT_8 | GPIO_OTYPER_OT_9);                   // open-drain
    GPIOB->OSPEEDR |= (GPIO_OSPEEDER_OSPEEDR6_1 | GPIO_OSPEEDER_OSPEEDR9_1);  // fast speed 
    GPIOB->PUPDR &= ~(GPIO_PUPDR_PUPDR8 | GPIO_PUPDR_PUPDR9);
    GPIOB->PUPDR |= (GPIO_PUPDR_PUPDR8_0 | GPIO_PUPDR_PUPDR9_0);              // pull-up 

    GPIOB->AFR[1] &= ~(0x000000FF);                                             // AFR
    GPIOB->AFR[1] |= 0x00000044;                                             // AFR
  }

  // inicijalizacija I2C1 protokola
  {
    i2c1_addresa = adresa;
    RCC->APB1ENR |= RCC_APB1ENR_I2C1EN;
    I2C1->CR1 |= I2C_CR1_SWRST;           // 1 -> periferal under reset state
    I2C1->CR1 &= ~I2C_CR1_SWRST;          // 0 -> periferan not under reset state

    I2C1->CR1 &= ~(I2C_CR1_PE);           // 0 -> periferal disable | 1 -> periferan enable (PE)

    //I2C1->CR2 = I2C_CR2_FREQ_3;           // 0x0008 -> 8Mhz -> Fpclk1 // NAVODNO OVO NIJE TACNO I MORA ICI FREK KOJA JE U APB1 (42MHz)
    I2C1->CR2 = 42; // 42 dec 0x2A

    //I2C1->CCR = 0x00000028;               // 40(dec) --->> je broj taktova  :SCL = Fpclk1 / (2 * CCR) = 8Mhz / 2*40 = 100khz
    I2C1->CCR = 210;

    //I2C1->TRISE = 0x000000009;            // sta je ovooo ??? 
    I2C1->TRISE = 43;
    /*
        Maksimalno dozvoljeno vrijeme porasta SCL, izraženo u broju PCLK1 ciklusa + 1.
        U Standard mode (100 kHz) formula je:
        TRISE = Fpclk1(MHz) + 1
        Za 8 MHz → 8 + 1 = 9. Zato je 0x09 ispravno.
    */

    //I2C1->OAR1 = 0x4033;                  // sta se desava ovdje? sta je ovoo ?? 
    I2C1->OAR1 = 0x4032;
    /*
        OAR1 je tvoja (MCU) vlastita I2C adresa kada glumiš slave (nema veze s adresom uređaja na koji ideš kao master).
        Raspored bitova u 7-bit modu:
        bit 15 (ADDMODE) = 0 → 7-bit režim
        bit 14 mora biti 1 (tako kaže RM; “keep 1”)
        bits 7:1 = tvoja 7-bit slave adresa (lijevo poravnata)
        bit 0 treba biti 0 u 7-bit modu
        0x4033 = 0x4000 (bit14=1) + 0x0033.
        0x0033 >> 1 = 0x19 → to znači da si postavio vlastitu 7-bit adresu = 0x19 (25 dec) — OK.
        Ali LSB (bit0) ti je 1 (jer 0x33 je …0011). U 7-bit modu taj bit treba biti 0.

        ISPRAVNIJE JE 0X4032 OD 0X4033
    */

    I2C1->CR1 |= (I2C_CR1_ACK | I2C_CR1_PE);    // enable ACK and Peripheral enable


  }
}


void writeI2C(uint8_t reg, uint8_t* data, uint16_t nbyte)
{
  startI2C1(I2C_WRITE);

  txByteI2C1(reg);

  for (uint16_t k = 0; k < nbyte; k++)
  {
    txByteI2C1(data[k]);
  }

  stopI2C1();
}



void readI2C(uint8_t reg, uint8_t* data, uint16_t nbyte)
{// read data from I2C slave
  uint16_t k;

  startI2C1(I2C_WRITE);   // ------------

  txByteI2C1(reg);
  
  stopI2C1();             // ------------


    while (I2C1->CR1 & I2C_CR1_STOP);  // čekaj dok STOP ne nestane

  
  startI2C1(I2C_READ);


  for (k = 0; k<nbyte; ++k) {
    if (k == (nbyte - 1)) { //  nbyte je broj bajta koji upisujemo, ako smo poslali da zelimo samo 1 bayt(8bita) upisati ova ce se funk. odma pozvat
      data[k] = rxByteNackI2C();  // a) zadnji bajt: primi uz NACK (+ STOP unutra)
    }else {
      data[k] = rxByteAckI2C();   // b) svi prethodni bajtovi: primi uz ACK (traži još)
    }
  }
}




uint8_t rxByteNackI2C(void)
{
  uint32_t sreg;
  uint8_t data;

  I2C1->CR1 &= ~I2C_CR1_ACK;

  sreg = I2C1->SR1;
  sreg = I2C1->SR2;   // clear SR2 & SR1 registers by reading it

  I2C1->CR1 |= I2C_CR1_STOP;

  while (1) {
    sreg = (I2C1->SR2) << 16;   // pomjera SR2 u gornjih 16 bita  
    sreg |= (I2C1->SR1);        // dodaje SR1 u donjih 16 bita  
    if ((sreg & 0x00030040) == 0x00030040) {
      /*
        bit 6 (SR1.RXNE) → Receive buffer not empty (ima bajt u DR za čitanje).
        bit 16 (SR2.MSL) → Master mode.
        bit 17 (SR2.BUSY) → Bus busy
       */
      break;
    }
  }
  data = I2C1->DR;
  return data;


}


uint8_t rxByteAckI2C(void)
{
  uint32_t sreg;
  uint8_t data;
  I2C1->CR1 |= I2C_CR1_ACK;

  while (1) {
    sreg = (I2C1->SR2) << 16;   // pomjera SR2 u gornjih 16 bita  
    sreg |= (I2C1->SR1);        // dodaje SR1 u donjih 16 bita  
    if ((sreg & 0x00030040) == 0x00030040) {
      /*
        bit 6 (SR1.RXNE) → Receive buffer not empty (ima bajt u DR za čitanje).
        bit 16 (SR2.MSL) → Master mode.
        bit 17 (SR2.BUSY) → Bus busy
       */
      break;
    }
  }
  data = I2C1->DR;
  return data;
}




void txByteI2C1(uint8_t data)
{
  uint32_t sreg;
  while (1) {
    sreg = (I2C1->SR2) << 16;   // pomjera SR2 u gornjih 16 bita  
    sreg |= (I2C1->SR1);        // dodaje SR1 u donjih 16 bita  
    if ((sreg & 0x00070080) == 0x00070080) { // bilo je 0x00070080 -> prof. ja dodao BTF tj 0x00070084
      /*
        bit 2  (SR1.BTF) → BTF: Byte transfer finished 
        bit 7  (SR1.TXE) → Data register empty (transmit)
        bit 15 (SR1.TRA) → Transmitter mode
        bit 16 (SR2.MSL) → Master mode
        bit 17 (SR2.BUSY) → Bus busy
       */
      break;
    }
  }
  I2C1->DR = data;

  //printUSART2("dodje do while petlje\n");
  // sada čekamo da bajt bude kompletno poslat (BTF)
  // while (!(I2C1->SR1 & I2C_SR1_BTF));


  uint32_t timeout;
  timeout = 100000; // prilagodi po brzini MCU / I2C
  while (!(I2C1->SR1 & I2C_SR1_BTF) && timeout--) ;
  if(timeout==0){
    printUSART2("I2C timeout!\n");
    return; // ili neki error handling
  }


}



void stopI2C1()
{
  uint32_t sreg;
  I2C1->CR1 |= I2C_CR1_STOP;
  while (1) {
    sreg = (I2C1->SR2) << 16;   // pomjera SR2 u gornjih 16 bita  
    sreg |= (I2C1->SR1);        // dodaje SR1 u donjih 16 bita  
    if ((sreg & 0x00070084) == 0x00070084) {
      /*
        bit 2 (SR1.BTF) → Byte Transfer Finished
        bit 7 (SR1.TXE) → Data register empty (transmit)
        bit 15 (SR1.TRA) → Transmitter mode
        bit 16 (SR2.MSL) → Master mode
        bit 17 (SR2.BUSY) → Bus busy
       */
      break;
    }
  }
}

/*
void stopI2C1(void)
{
    // 1. Sačekaj da se završi prijenos
    while (!(I2C1->SR1 & I2C_SR1_BTF) && !(I2C1->SR1 & I2C_SR1_TXE));

    // 2. Pošalji STOP condition
    I2C1->CR1 |= I2C_CR1_STOP;

    // 3. Sačekaj da BUSY flag padne (bus slobodan)
    while (I2C1->SR2 & I2C_SR2_BUSY);
}
*/





void startI2C1(uint8_t type) {
    uint32_t timeout = 100000;

    // čekaj da bus bude slobodan
    while ((I2C1->SR2 & I2C_SR2_BUSY) && --timeout);

    // generiši START
    I2C1->CR1 |= I2C_CR1_START;

    // čekaj SB=1
    while (!(I2C1->SR1 & I2C_SR1_SB));

    // pošalji adresu
    if (type == I2C_READ)
        I2C1->DR = i2c1_addresa | 0x01;
    else
        I2C1->DR = i2c1_addresa;

    // čekaj ADDR=1
    while (!(I2C1->SR1 & I2C_SR1_ADDR));

    // clear ADDR
    (void)I2C1->SR1;
    (void)I2C1->SR2;

    // ako je write, čekaj TXE
    if (type == I2C_WRITE)
        while (!(I2C1->SR1 & I2C_SR1_TXE));
}












// OVO ISPOD JE GOGINO A OVO INAD JE CHATGPT ANAPISAO
//void startI2C1(uint8_t type) 
//{
//  uint32_t sreg, utmp32;
//
//
//  // -------------- Chat GPT rekao da dodam ovo START ------------
//
//  uint32_t timeout;
//
////  printUSART2("start 1.\n");
//  // čekaj da bus bude slobodan
//  timeout = 100000;
//  while (I2C1->SR2 & I2C_SR2_BUSY) {
//      if (--timeout == 0) return; // timeout fail
//  }
//
// // printUSART2("start 2.\n");
//  // -------------- Chat GPT rekao da dodam ovo END ------------
//
//  sreg = I2C1->SR2;
//  sreg = I2C1->SR1;   // clear SR2 & SR1 registers by reading it
//  
//
//  I2C1->CR1 |= I2C_CR1_START;   
//
//  
//  /*
//      START: Start generation
//
//      This bit is set and cleared by software and cleared by hardware when start is sent or PE=0.
//      In Master Mode:
//      0: No Start generation
//      1: Repeated start generation
//      In Slave mode:
//      0: No Start generation
//      1: Start generation when the bus is free
//  */
//
//  //printUSART2("dodje do 2. while petlje\n");
// // printUSART2("start 3.\n");
//  // ------------------while-------------------------------------------
//  while (1) {
//    sreg = (I2C1->SR2) << 16;     // pomjera SR2 u gornjih 16 bita  
//    sreg |= I2C1->SR1;            // dodaje SR1 u donjih 16 bita    
//   // printUSART2("SR1: 0x%xb, SR2: 0x%xb\n", I2C1->SR1, I2C1->SR2);
//    if ((sreg & 0x00030001) == 0x00030001) {
//          /*
//          bit 0   (SR1.SB)    → Start Bit = 1 (generisan START)
//          bit 16  (SR2.MSL)   → Master mode = 1
//          bit 17  (SR2.BUSY)  → Busy = 1
//          */
//      break;
//    }
//  }
//  // ------------------while-------------------------------------------
//
//  printUSART2("izadje iz 2. while petlje\n");
//  // --------- IF-ELSE ------------------------------------------------
//  //printUSART2("start 4.\n");
//  if (type == I2C_READ) {
//    
// // printUSART2("start 5.\n");
//    I2C1->DR = i2c1_addresa | 0x01;
//    while (1) {
//      sreg = (I2C1->SR2) << 16;
//      sreg |= I2C1->SR1;
//      if ((sreg & 0x00030002) == 0x00030002) {
//        /*
//          bit 1   (SR1.ADDR)  → Address sent/received (ADDR flag)
//          bit 16  (SR2.MSL)   → Master mode = 1
//          bit 17  (SR2.BUSY)  → Busy = 1
//         */
//        break;
//      }
//    }
//  }else {
//
////  printUSART2("start 6.\n");
////printUSART2("Saljem I2C adresu: 0x%xb\n", i2c1_addresa);
//    I2C1->DR = i2c1_addresa;
//
//
// // printUSART2("dodje do 4. while petlje i treba jer je write \n");
//    while (1) {
//      sreg = (I2C1->SR2) << 16;     
//      sreg |= I2C1->SR1;
//      //printUSART2("DEBUG: SR1=0x%xb, SR2=0x%xb\n", I2C1->SR1, I2C1->SR2);
//      if ((sreg & 0x00070082) == 0x00070082) {
//          /*
//          bit 1  (SR1.ADDR) → Address flag = 1
//          bit 7  (SR1.TXE)  → Transmit data register empty (spreman da primi bajt)
//          bit 15 (SR1.TRA)  → Transmitter/receiver = 1 (master u transmit modu)
//          bit 16 (SR2.MSL)  → Master mode = 1
//          bit 17 (SR2.BUSY) → Busy = 1
//          */
//        break;
//      }
//    }
//
//  printUSART2("izadje iz 4. while petlje i treba jer je write \n");
//  }
//  printUSART2("start 7.\n");
///*
//          0x00030001 → START poslano, master mode, busy
//          0x00030002 → Adresa poslata + ACK, master read mode
//          0x00070082 → Adresa poslata + ACK, master write mode, DR prazan
//*/
//  // --------- IF-ELSE ------------------------------------------------
//}

