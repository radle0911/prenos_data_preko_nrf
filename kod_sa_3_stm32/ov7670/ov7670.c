#include "ov7670.h"
#include "ov7670_reg.h"
#include "../i2c/i2c.h"
#include "../usart/usart.h"
#include "../delay/delay.h"
#include "stm32f4xx.h"
#include <stdint.h>




void getOV7670_ID()
{
  uint8_t data[4];
  uint8_t val;
  uint8_t chk = 0;
  uint32_t utmp32;

  // Inicijalizacija I2C
  initI2C1(OV7670_REG_WRITE);

  // Citanje PID i VER
  readI2C(OV7670_REG_PID, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 product ID (PID) [0x%xb]\n", utmp32);
  if (utmp32 == 0x76) ++chk;

  readI2C(OV7670_REG_VER, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 version (VER) [0x%xb]\n", utmp32);
  if (utmp32 == 0x73) ++chk;
  if (chk == 2) printUSART2("   Kamera radi ispravno\n");
  else printUSART2("    Kamera ne radi ispravno\n");
  printUSART2("==============================================\n");
}



void OV7670_XCLK_TIM1_init(void)
{
  // inicijalizacija pin-a na kojem cemo dovesti xclk
  // PA8 
  {
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    GPIOA->MODER &= ~GPIO_MODER_MODER8;
    GPIOA->MODER |= GPIO_MODER_MODER8_1;    // AFR
    GPIOA->AFR[1] &= ~0x0000000F;            // TIM1_CH1 
    GPIOA->AFR[1] |= 0x00000001;            // TIM1_CH1 
  }
  {
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
    TIM1->PSC = 0x0000;                       // 168MHz -> 168MHz/1 = 168MHz
    TIM1->ARR = 0x0006;                       // 14     -> 168MHz/(6+1) = 24MHz
    TIM1->CCR1 = 0x003;                      // 50% duty cycle -> 24MHz * 0.5 =(squere) sig ---___---___---___---___ 
                                              // odredili smo sqer sig. 50% high 50% low  freq je 24MHz


    // CR1 za ovaj slucaj nije obavezan ??  (2 linije ispod)
    TIM1->CR1 |= TIM_CR1_ARPE | TIM_CR1_URS;
    TIM1->CR1 &= ~(TIM_CR1_CMS | TIM_CR1_DIR);

    TIM1->CCMR1 &= ~(TIM_CCMR1_OC1M);

    TIM1->CCMR1 |= TIM_CCMR1_OC1PE | TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1;

    TIM1->CCER &= ~(TIM_CCER_CC1P); // active high
    TIM1->CCER |= TIM_CCER_CC1E;    // enable  capture/compare 
    
    TIM1->BDTR |= TIM_BDTR_MOE;     // Main output enable (bitno za advanced timer!)

    TIM1->EGR |= TIM_EGR_UG;
    TIM1->CR1 |= TIM_CR1_CEN;


  }

}


// NOTE: ovo je update (bolja slika), treba testirati. Stara je ispod i detaljno je objasnjena
void OV7670_SetupQQVGA_Custom(void)
{
    uint8_t val;

    // Reset
    val = OV7670_REG_COM7_RESET;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // Clock i frame rate
    val = 0x00;
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // COM3 - enable DCW (downsample)
    val = 0x04;
    writeI2C(OV7670_REG_COM3, &val, 1);

    // COM7 - QCIF / QQVGA mode
    val = (0x04);  // bilo 0x04 // 0x02 myb NOOO!!!
    writeI2C(OV7670_REG_COM7, &val, 1);

    // COM14 - enable DCW + PCLK divider /4
    val = 0x1A;   // 1A je bilo------------------------>
    writeI2C(OV7670_REG_COM14, &val, 1);

    // Horizontal window
    val = 0x16;
    writeI2C(OV7670_REG_HSTART, &val, 1);
    val = 0x04;
    writeI2C(OV7670_REG_HSTOP, &val, 1);
    val = 0xA4;
    writeI2C(OV7670_REG_HREF, &val, 1);

    // Vertical window
    val = 0x02;
    writeI2C(OV7670_REG_VSTART, &val, 1);
    val = 0x7A;
    writeI2C(OV7670_REG_VSTOP, &val, 1);
    val = 0xA4;
    writeI2C(OV7670_REG_VREF, &val, 1);

    // Scaling
    val = 0x22;
    writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);
    val = 0xF2; // 0xF2 bilo ------------------------>  // puno ljepse je sa 0xF2, ali sporije 
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);

    // COM10 - PCLK & VSYNC polaritet
    val = 0x00;
    writeI2C(OV7670_REG_COM10, &val, 1);

    // ========================================================
    //                     ZA KRAJ!
    // ========================================================
    
    // COM15 - RGB565 format (!!!!!!!!!!!!!!!!OBVEZNO!!!!!!!!!!!!!!!!v)
    val = 0xD0; // bilo 0xD0 i najboje, 0x90 je prihvatljivo  mmsm da je 0x50
    writeI2C(0x40, &val, 1);

    // PCLK delay (!!!!!!!!!!!!!!!!OBVEZNO!!!!!!!!!!!!!!!!)-> RM data
    val = 0x02;
    writeI2C(0xA2, &val, 1);



    // Kontrast
    val = 0x40;
    writeI2C(0x56, &val, 1);  // CONTRAST

  
    // AWB
    val = 0xE7;
    writeI2C(0x13, &val, 1);  // COM8


  // NOTE: Ovo je za boju setup


// ispod je dodatak, proba za boju : --------> radi nesto, nekako, malo ...
//  
//
// COM13 - Gamma, color matrix enable
//    val = 0x80; // bilo 0x80
//    writeI2C(0x3D, &val, 1);
//
//    // Matrica boja - OVO JE KLJUCNO ZA BOJU!
//    // Standardna matrica za OV7670
//    val = 0x80; // MTX1
//    writeI2C(0x4F, &val, 1);
//    val = 0x80; // MTX2
//    writeI2C(0x50, &val, 1);
//    val = 0x00; // MTX3
//    writeI2C(0x51, &val, 1);
//    val = 0x18; // MTX4  0x34
//    writeI2C(0x52, &val, 1);
//    val = 0x48; // MTX5 0x5A
//    writeI2C(0x53, &val, 1);
//    val = 0x40; // MTX6 0x11
//    writeI2C(0x54, &val, 1);
//    
//    // Sign matrix coefficients
//    val = 0x1E; // MTXS
//    writeI2C(0x58, &val, 1);
//
//  // Saturation za prirodnije boje:
//  val = 0x30;  // Umjesto 0x40 (smanji za 0x10)
//  writeI2C(0x4C, &val, 1);



}



void initOV7670() // NOTE: prva funkcija koja se ne korsiti, ali je sve detaljno objasnjeno :|
{
  uint8_t data[4];
  uint32_t utmp32;
  uint8_t val;

  initI2C1(OV7670_REG_WRITE);
  //printUSART2("izadje iz initI2C1\n");
  readI2C(OV7670_REG_PID, data, 1);
  //printUSART2("izadje iz readI2C1\n");

  utmp32 = data[0];

  printUSART2("-> OV7670 product ID (PID) [0x%xb]\n",utmp32);

  readI2C(OV7670_REG_VER, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 version (VER) [0x%xb]\n",utmp32);


  // Reset kamere
  val = OV7670_REG_COM7_RESET;
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(200);
  //printUSART2("Izvrsena je writeI2C funkcija za RESET\n");

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_COM7    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // Osnovni mod: RGB + QVGA (160x120)
    val = OV7670_REG_COM7_FMT_RGB | 0x10; // Odabiremo Bit[4]: Output format - QVGA selection   ---> RGB postavka
//  val = 0x01 | 0x03;                      //  0x10 = QVGA selection, 0x03 = MONO (grayscale)    ---> probati RGB
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(5);
  // NOTE: 
  //        #############################################################################################
  //        ###### Moguce je u REG COM7 podesiti samo na QVGA, a u SCALING cemo ga smanjiti na QQVGA ####
  //        #############################################################################################
  //        VGA:    640 x 480 [pixela]
  //        QVGA:   320 x 240 [pixela]  ==> (Quarter VGA)         -> (640/2) x (480/2) = 320 x 240 [pix]
  //        QQVGA:  160 x 120 [pixela]  ==> (Quarter Quarter VGA) -> (320/2) x (240/2) = 160 x 120 [pix]
  

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_COM15    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // COM15: RGB565, full range
  
  // RGB setup: <<<<<<----------------------------------------------------------------
  val = 0xD0; //  1101 => Bit[7:6] -> Data format - output full range enable. ==> 11 → full range, tj. puni opseg boja: 0–255 za svaki kanal.
  writeI2C(OV7670_REG_COM15, &val, 1); // skupo, puno info(bita) kada je full range 

  // OVA POSTAVKA ISPOD U VAL JE ZA GRAYSCALE OUTPUT, A IZNAD JE ZA RGB
  // GRAYSCALE setup:<<<<-----------------------------------------------------------
//  val = 0x00;   //  limited range, 16–235, grayscale output
//  writeI2C(OV7670_REG_COM15, &val, 1); // skupo, puno info(bita) kada je full range 
  delay_ms(5);

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW  VEZANO ZA CLOCK WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   REG_CLKRC    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // podesavanje clock-a
  val = 0x01;
  writeI2C(OV7670_REG_CLKRC, &val, 1);  // Bit[5:0]: Internal clock pre-scalar => F(internal clock) = F(input clock) / (Bit[5:0] + 1) range [0 0000 - 1 1111]
  delay_ms(5);
  // ovo 1 znaci 1 + 1 pa clock sa xclk koji je 12MHz / 2 = 6 MHz valjda ne znam kolik je sada tu fps???
  /*
    NOTE:
          1. XCLK spolja je 12 MHz sa STM32F407 dolazi na OV7670
          2. CLKRC (Clock control register) ==> Bit[5:0] → internal pre-scaler
          3. Formula je : (XCLK)/(Bit[5:0] + 1) ==> 12MHz/(1+1) = 6 MHz ====> F_internalCLOCK = 6MHz
          4. DBLV (PLL) -> Ako PLL enabled (DBLV), frekvencija se mnozi, npr. PLL x4 → 6 MHz × 4 = 24 MHz. To povecava fps.
          5. Formula za fps je u DBLV
  */


  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   REG_DBLV    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  val = 0x4A; // DBL: PLL x4  (what ???)
  writeI2C(OV7670_REG_DBLV, &val, 1);
  delay_ms(5);
  // NOTE: 
  //        val = 0x4A;
  //        0x4 hex (0100) -> aktivira PLL x4 multiplikaciju (Input clock x4)
  //        0xA hex (1010) -> dodatna podesavanja za regulator/rezervisane bitove, kako predlaze datasheet 

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW  CLOCK ZAVRSEN  WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  


  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_HREF    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // -----------------------------------   HORIZONTAL   -----------------------------------------------------
  // prozor za QVGA
  val = 0x80;   // HREF edge offset to data output, HREF – samo enable i mali offset
  writeI2C(OV7670_REG_HREF, &val, 1);
  delay_ms(5);
  val = 0x16;   // HSTART = offset od 22 pixela od leve ivice senzora
  writeI2C(OV7670_REG_HSTART, &val, 1);
  delay_ms(5);
  val = 0x04;   // HSTOP = offset 4 pixela od desne ivice (ili završetak linije)
  writeI2C(OV7670_REG_HSTOP, &val, 1);
  delay_ms(5);
  /*
    NOTE:
         PRIMJER:
                 Ako senzor ima ukupno 640 piksela u liniji, a HSTART = 16 -> znaci da 
                 kamera pocinje da salje podatke od 16. piksela, ne od prvog
                 -
                 Ako HSTOP = 623 -> znaxi da se linija završava na 623. pikselu, dakle ne salje se kraj linije (624–639)
                 -
                 Dakle offset = udaljenost od referentne nulte tacke (obicno pocetka senzora ili pocetka video signala) 
                 do stvarnog pocetka ili kraja slike koja trea da se snimi
                 -
                Width=(0x04−0x16) & 0xFF= (0x04+0x100−0x16)=0xEE=238 senzorskih jedinica
                Width=(0x04−0x16) & 0xFF= (4 + 256 − 22 ) = 0xEE=238 senzorskih jedinica
  */

  /*
   NOTE: 
          PIX.
          0                                                  640
          |---------------------------------------------------|
                      HSTART                  HSTOP
                        |                       |
                        |-----------------------|
                      HSTART                  HSTOP
                      offset                  offset
      --
      HSTART/HSTOP -> “izrezi” horizontalni deo senzora koji te zanima (crop).
      SCALING -> smanji taj crop na željenu rezoluciju (QQVGA = 160 px).

  */


  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_VREF    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // -----------------------------------   VERTIKALNI   -----------------------------------------------------
  //
  val = 0x02;   //  VSTART  – offset prvog reda slike (gornji rub).
  writeI2C(OV7670_REG_VSTART, &val, 1);
  delay_ms(5);
  val = 0x7A;   // VSTOP   – offset posljednjeg reda slike (donji rub).
  writeI2C(OV7670_REG_VSTOP, &val, 1);
  delay_ms(5);
  val = 0x0A;   // VREF    – referentna tacka za vertikalni prozor (ostavlja se fabrika, koristi se zajedno sa H/V scalingom).
  writeI2C(OV7670_REG_VREF, &val, 1);
  delay_ms(5);
  /*
    NOTE:
          Kako se računa visina, Slično kao kod horizontalnog:
          -------------------------------------------
          Height (raw)=((VSTOP+VREF_MSB)−VSTART)&0xFF
          -------------------------------------------
          VREF_MSB dolazi iz viših bitova VREF registra ako se koristi više od 8 bita za vertikalnu rezoluciju.
          & 0xFF → ograničava na 8-bitnu vrijednost.
          -------------------------------------------------------------------------------------------
          VSTART  = 0x02 → gdje pocinje vertikalni window, tj. gornji rub slike.
          VSTOP   = 0x7A → gdje se vertikalni window zavrsava, tj. donji rub slike.
          VREF    = 0x0A → referentna vertikalna tacka, uglavnom ne mijenja se, pomaze pri scalingu.
          -------------------------------------------------------------------------------------------
  */



  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_SCALING    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

    // Scaling kontrola
    val = 0x3A; 
    writeI2C(OV7670_REG_SCALING_XSC, &val, 1);
    delay_ms(5);
  /*
   NOTE:
          output_width = raw_window_width * (XSC / 256)
          raw_window_width = 238 senz. jedinica -> HSTART-HSTOP-HREF
          XSC = 0x3A znači da horizontalni window od 238 senzorskih jedinica → skalira na ~160 pixela.
  */
  
    val = 0x35; writeI2C(OV7670_REG_SCALING_YSC, &val, 1);
    delay_ms(5);
    val = 0x11; writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);     // 0x22 -- datasheet vrijednosti
    delay_ms(5);
    val = 0xF1; writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);   // 0xF2 -- datasheet vrijednosti za 30 fps qqvga
    delay_ms(5);
    val = 0x02; writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1); 
    delay_ms(5);




  printUSART2("-> OV7670 inicijalizacija za 160x120 RGB565 zavrsena!\n");

}
