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
#include <stdint.h>



volatile uint8_t frame_ready = 0;
volatile uint8_t citamo_buffer = 0;

uint8_t node_type = NRF24L01_NODE_TYPE_RX;


int main(void)
{
  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // raditi provjeru vremena
  }


  printUSART2("izvrsavamo inicijalizaciju za Nrf modul\n\n\n");

  initnRF24L01(node_type);
  delay_ms(1000);


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
  //OV7670_SetupQQVGA_Custom_sa_neta_deep_seek();
  // OV7670_InitQQVGA_RGB565();    // upisujemo potrebne vrijendosti u registre kamere
  delay_ms(1000);

  // NOTE:
  // Nakon upisivanja vrsimo provjeru upisa, tj. da li su dobro upisane zeljene vrijednosti

  //OV7670_VerifyRegisters();
  OV7670_VerifyRegisters_Custom();
  //  printUSART2("MISMATCH! u COM14 je navodno takav, provjeri detaljno kasnije\n");
  printUSART2("================================================================\n");

  //DCMI_Init_OV7670();   // igraje se sa PCLPOL vjerovatno pogresan ili ne...
  DCMI_Init_OV7670_continuous_mode();   // ovo je za continuos mode

  printUSART2("DCMI inicijalizacija je zavrsena, vrsimo provjeru: \n\n");
  DCMI_CheckConfig(); // NOTE:  pin D0 je 0 zato sto je mracna soba, upali svjetlo 


  //initDMA2_for_OV7670_continuous_mode(frame_buffer, FRAME_MAX);
  initDMA2_for_OV7670_continuous_mode_double_buffer(frame_buffer0, frame_buffer1, FRAME_MAX);
  delay_ms(100);

  checkDMA2_Stream1_status();



  DCMI_start_continuous_mode();
  uint32_t i_frm = 600;
  uint32_t vrijeme = getSYSTIMER();

  while (1){

    if ((DMA2_Stream1->CR & DMA_SxCR_CT) == DMA_SxCR_CT) { // ovo znaci current_target = 1, a to znaci da se upisuju podaci u M1AR, a M0AR je slobodan za citanje
      // Citamo M0AR
      if (citamo_buffer == 0) {
        //printUSART2("Citamo iz buffera-0 -> [%d us]\n",getSYSTIMER() - vrijeme);
        send_frame_buffer(frame_buffer0, FRAME_MAX);    // radi ali veoma lose i sporo
        citamo_buffer = 1;
        //vrijeme = getSYSTIMER();
      }
    }else { 
      // citamo M1AR
      if (citamo_buffer == 1) {
        //printUSART2("Citamo iz buffera-1 -> [%d us]\n",getSYSTIMER() - vrijeme);
        send_frame_buffer(frame_buffer1, FRAME_MAX);  // radi ali veoma lose i sporo
        citamo_buffer = 0;
        //vrijeme = getSYSTIMER();
      }
    }// else CT blok


  } // while petlja


  return 0;
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







