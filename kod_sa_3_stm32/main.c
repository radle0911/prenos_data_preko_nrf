#include "ov7670/ov7670.h"
#include "ov7670/ov7670_reg.h"
#include "i2c/i2c.h"
#include "ov7670/ov7670_init.h"
#include "stm32f4xx.h"
#include "usart/misc.h"
#include "usart/usart.h"
#include "delay/delay.h"
#include "check/check.h"
#include "./dma/dma.h"
#include "DCMI/dcmi.h"
#include "nRF24L01/nRF24L01.h"
#include "gpio/gpioc.h"
#include <stdint.h>
#include "lis302dl/lis302dl.h"
#include "led/led.h"
#include <string.h>
#include <stddef.h>  // <--- za NULL


#define FRAME_START_1 0xAA
#define FRAME_START_2 0x55


void autic_dma_interrupt();
void DMA2_Stream1_IRQHandler(void);

void autic_double_buffer();
void kontroler_double_buffer();

void sendFrameNRF(volatile uint16_t* frame_buffer, uint32_t length);
void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length);


volatile uint16_t* frame_to_send = NULL; // pokazuje koji buffer je spreman za slanje
volatile uint8_t buffer_ready = 0; // 0 = ništa, 1 = M0AR spreman, 2 = M1AR spreman

volatile uint8_t frame_ready = 0;
volatile uint8_t citamo_buffer = 0;

// za kontrolu autica
int8_t accel_data[ACC_DATA_LENGTH];
void startMasterNodeSYS();

int main(void)
{
  uint8_t node_type = NRF24L01_NODE_TYPE_RX;
  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // raditi provjeru vremena
  }

  printUSART2("izvrsavamo inicijalizaciju za Nrf modul\n\n\n");

  initGPIOC6_GND();
  delay_ms(10);
  chkConnection_GPIOC6_GND(&node_type); // 0->RX->(lebdi zica) | 1->TX->(spojen na GND)

  initnRF24L01(node_type);
  delay_ms(1000);


  printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w                   nRF24L01 Tx[1]-Rx[0] => [%d]               w\n",node_type);
  printUSART2("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");




  if (node_type == NRF24L01_NODE_TYPE_TX) {



  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW\n");
  printUSART2("WWWWWWWWWWW  Circular buffer od OV7679   WWWWWWWWWWWWW\n");
  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWwWWWWWWW\n\n\n");

  // NOTE:
  // Da bi provjerili da li je OV7670 "ziv" potrebno je da upostavimo 
  // komunikaciju i dobiojemo ID. Da bi dobili ID, potrebno je da dovedemo
  // XCLK clock na OV7670:

  OV7670_XCLK_TIM1_init();
  delay_ms(100);

  // NOTE:
  // Nakon toka mozemo mozemo dobiti ID kamere. Pozivamo funk. koja vrsi u sebi
  // inicijalizaciju I2C : "initI2C1(OV7670_REG_WRITE);" gdje je "OV7670_REG_WRITE == 0x42"

  getOV7670_ID();   // Vrsi ispis PID i VER
  delay_ms(50);


  // NOTE:
  // Kada smo se uvjerili da je kamera "ziva" upisujemo zeljene vrijednosti u kameru


  OV7670_SetupQQVGA_Custom_sa_neta();     // OVO JE MOJA I OVO JE ISPRAVNOA 
  delay_ms(1000);

  // NOTE:
  // Nakon upisivanja vrsimo provjeru upisa, tj. da li su dobro upisane zeljene vrijednosti

  OV7670_VerifyRegisters_Custom();
  printUSART2("================================================================\n");

  //DCMI_Init_OV7670();   // igraje se sa PCLPOL vjerovatno pogresan ili ne...
  DCMI_Init_OV7670_continuous_mode();   // ovo je za continuos mode

  printUSART2("DCMI inicijalizacija je zavrsena, vrsimo provjeru: \n\n");
  DCMI_CheckConfig(); // NOTE:  pin D0 je 0 zato sto je mracna soba, upali svjetlo 


  initDMA2_for_OV7670_continuous_mode_double_buffer(frame_buffer0, frame_buffer1, FRAME_MAX);
  delay_ms(100);

  checkDMA2_Stream1_status();



  DCMI_start_continuous_mode();

  }else { // NOTE: Ovo je za RX blok (kontrolor)
    initPWM();
    delay_ms(10);

    initLIS320DL(); // akcelerometar
    delay_ms(10);

    initnRF24L01_SPI3(NRF24L01_NODE_TYPE_TX);
    delay_ms(1000);
  }

  //conRegNRF24L01(NRF24L01_EN_AA, 0x00);     // gasimo ACK
  delay_ms(200);
  printUSART2("#################################################################\n");
  printUSART2("Da li su upisane vrijednosti u nRF modul ???\n");
  printUSART2("NRF24L01_RF_SETUP = 0x%xh\n", getRegNRF24L01(NRF24L01_RF_SETUP));
  printUSART2("NRF24L01_EN_AA = 0x%xh\n", getRegNRF24L01(NRF24L01_EN_AA));
  printUSART2("#################################################################\n");
  


  if (node_type == NRF24L01_NODE_TYPE_TX) {
    //autic_double_buffer();
    autic_dma_interrupt();
  }else {
    kontroler_double_buffer();  // za ovo se ne bi trebalo imati nista mjenjati
  }

  return 0;
}





void autic_double_buffer()
{
  while (1) {
    if ((DMA2_Stream1->CR & DMA_SxCR_CT) == DMA_SxCR_CT) { // ovo znaci current_target = 1, a to znaci da se upisuju podaci u M1AR, a M0AR je slobodan za citanje
      // Citamo M0AR
      if (citamo_buffer == 0) {


        //printUSART2("frame_buffer0 = 0x%xh\n",frame_buffer0[500]);
        sendFrameNRF((uint16_t*)frame_buffer0, FRAME_MAX); // send frame via nRF to MCU 

        citamo_buffer = 1;
      }
    }else {
      // citamo M1AR
      if (citamo_buffer == 1) {


        //printUSART2("frame_buffer1 = 0x%xh\n",frame_buffer1[500]);
        sendFrameNRF((uint16_t*)frame_buffer1, FRAME_MAX); // send frame via nRF to MCU 
        
        
        citamo_buffer = 0;
      }
    }
  }
}




void sendFrameNRF(volatile uint16_t* frame_buffer, uint32_t length) 
{
  uint8_t packet[32];  // maksimalno što nRF24L01 može poslati odjednom
  uint32_t i, j = 0;

  // --- 1) Pošalji start frame signale (2 bajta) ---
  packet[0] = 0xAA;  // primjer, start byte 1
  packet[1] = 0x55;  // primjer, start byte 2
  txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);  // šalje samo ova dva bajta, ostatak paketa se ignoriše

  for (i = 0; i < length; i++) {
    // niz od 16 bita se pretvara u 2 bajta
    packet[j++] = (uint8_t)(frame_buffer[i] & 0xFF);        // low byte
    packet[j++] = (uint8_t)((frame_buffer[i] >> 8) & 0xFF); // high byte

    // kad popunimo paket do 32 bajta, šaljemo ga
    if (j == 32) {
      txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
      j = 0;
    }
  }

  // ako ostane još nešto što nije poslano (manje od 32 bajta)
  if (j > 0) {
    txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
  }
}



void kontroler_double_buffer()
{
  while (1) {
    receiveFrameNRF((uint16_t*)frame_buffer, FRAME_MAX);
  }
}



void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length) 
{
    uint8_t packet[32];
    uint32_t bytes_received = 0;
    uint32_t total_bytes = length * 2; // svaki pixel = 2 bajta
  //
  //
  //


  uint8_t* send_msg = (uint8_t*)accel_data; // ovo je za kontrolu autica !!!

    while (1) {
        // čekaj paket
        if (dataReadyNRF24L01() == NRF_DATA_READY) {
            rxDataNRF24L01(packet);

            // Ako paket počinje sa FRAME_START, resetujemo buffer
            if (packet[0] == FRAME_START_1 && packet[1] == FRAME_START_2) {
                bytes_received = 0;  // počinje novi frame
                continue;            // preskoči start bajtove
            }

            // kopiraj podatke u frame buffer
            for (int i = 0; i < 32 && bytes_received < total_bytes; i++) {
                uint32_t index = bytes_received / 2;
                if (bytes_received % 2 == 0) {
                    // low byte
                    frame_buffer[index] = packet[i];
                } else {
                    // high byte
                    frame_buffer[index] |= ((uint16_t)packet[i] << 8);
                }
                bytes_received++;
            }

            // ako je frame kompletiran
            if (bytes_received >= total_bytes) {
                send_frame_buffer(frame_buffer, FRAME_MAX);  // pošalji dalje
                startMasterNodeSYS();   // ugasena while petlja
               // bytes_received = 0; // spreman za novi frame
                break;
            }
        }


    // ovdje daposalje kontrolu 

    //startMasterNodeSYS();   // ugasena while petlja
    
    }
}



//int8_t accel_data[ACC_DATA_LENGTH];
void startMasterNodeSYS(){
  uint8_t* send_msg = (uint8_t*)accel_data;
 // while (1) {
    getDataLIS302DL(accel_data);
    txDataNRF24L01_SPI3((uint8_t*)c_nrf_slave_addr_spi3, send_msg);

    // ------------------------------------------------------------
    // zelena (PD12 = CCR1) 
    TIM4->CCR1 = (accel_data[0] < -5 ) ? -accel_data[0] * 14 : 0;
    // narandzasta (PD13 = CCR2)
    TIM4->CCR2 = (accel_data[1] > 5 ) ? accel_data[1] * 14 : 0;

    // plava (PD15 = CCR4)
    TIM4->CCR4 = (accel_data[1] < -5 ) ? -accel_data[1] * 14 : 0;

    // crvena (PD14 = CCR3)
    TIM4->CCR3 = (accel_data[0] > 5 ) ? accel_data[0] * 14 : 0;
    // ------------------------------------------------------------
    //printUSART2("-> |[%d],[%d],[%d]|\n",accel_data[0],accel_data[1],accel_data[2]);
  //}
}


void startSlaveNodeSYS(){
  uint8_t is_data_ready;
  int8_t nrf_data[ACC_DATA_LENGTH];
  while (1) {
    //setTxAddrNRF24L01(c_nrf_master_addr);
    is_data_ready = dataReadyNRF24L01_SPI3();
    if (is_data_ready == NRF_DATA_READY) {
      rxDataNRF24L01_SPI3(nrf_data);
      printUSART2("-> |[%d],[%d],[%d]|\n",nrf_data[0],nrf_data[1],nrf_data[2]);
      // ------------------------------------------------------------
      // zelena (PD12 = CCR1) 
      TIM4->CCR1 = (nrf_data[0] < -5 ) ? -nrf_data[0] * 14 : 0;
      // narandzasta (PD13 = CCR2)
      TIM4->CCR2 = (nrf_data[1] > 5 ) ? nrf_data[1] * 14 : 0;

      // plava (PD15 = CCR4)
      TIM4->CCR4 = (nrf_data[1] < -5 ) ? -nrf_data[1] * 14 : 0;

      // crvena (PD14 = CCR3)
      TIM4->CCR3 = (nrf_data[0] > 5 ) ? nrf_data[0] * 14 : 0;
      // ------------------------------------------------------------
    }
  }
}





// NOTE: ove 2 funk ispod su ako budem zelio da probam sa interuptima:  (kaze da je CPU frendly)
//
//
void DMA2_Stream1_IRQHandler(void)
{
    // Half Transfer (prva polovina M0AR ili M1AR gotova)
    if(DMA2->LISR & DMA_LISR_HTIF1) {
        DMA2->LIFCR = DMA_LIFCR_CHTIF1;  // clear flag
        // možeš ovdje signalizirati polu-buffer ako želiš
    }

    // Transfer Complete (full buffer gotov)
    if(DMA2->LISR & DMA_LISR_TCIF1) {
        DMA2->LIFCR = DMA_LIFCR_CTCIF1;  // clear flag

        if ((DMA2_Stream1->CR & DMA_SxCR_CT) == 0) {
            // DMA je trenutno pisao M0AR → M1AR je sada slobodan za čitanje
            frame_to_send = frame_buffer1;
        } else {
            // DMA je trenutno pisao M1AR → M0AR je sada slobodan
            frame_to_send = frame_buffer0;
        }

        buffer_ready = 1; // flag da je buffer spreman za slanje
    }
}


void autic_dma_interrupt() {
    while(1) {
        if(buffer_ready) {
            // pošalji frame
            sendFrameNRF(frame_to_send, FRAME_MAX);
            buffer_ready = 0; // reset flag
        }

        // ovdje možeš raditi i druge stvari, npr. LED blink, UART, itd.
    }
}








//
//// ovo smo koristili samo da provjerimo da li radi circular buffer 
//// onaj IRQ se poziva i za M0AR i za M1AR
//void DMA2_Stream1_IRQHandler(void)
//{
//  if(DMA2->LISR & DMA_LISR_HTIF1) {     // half-transfer interupt flag
//    DMA2->LIFCR = DMA_LIFCR_CHTIF1;  // clear flag
//    //citamo_buffer = 0;
//    //        printUSART2("1.\n");
//  }
//  if(DMA2->LISR & DMA_LISR_TCIF1) {     // transfer complete interupt flag
//    DMA2->LIFCR = DMA_LIFCR_CTCIF1;  // clear flag
//    //citamo_buffer = 1;
//    //        printUSART2("2\n");
//  }
//}
//


//
//void DMA2_Stream1_IRQHandler(void)
//{
//    if (DMA2->LISR & DMA_LISR_TCIF1) // Transfer Complete
//    {
//        DMA2->LIFCR |= DMA_LIFCR_CTCIF1; // clear flag
//        frame_ready = 1; // samo postavi flag
//    }
//}
//
//




