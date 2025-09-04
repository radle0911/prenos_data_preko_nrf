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
#include "led/led.h"
#include "lis302dl/lis302dl.h"
#include <stdint.h>

// ovo je od nRF modula -----------------

int8_t accel_data[ACC_DATA_LENGTH];

void startMasterNodeSYS();
void startSlaveNodeSYS();
// --------------------------------------



//volatile uint8_t frame_ready = 0;
volatile uint8_t citamo_buffer = 0;



int main(void)
{
  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // raditi provjeru vremena
  }


  uint8_t node_type = NRF24L01_NODE_TYPE_RX;

  // INICIJALIZACIJA START -----------------------------------------------  ovo je za nRF modul
  {
    // TX or RX check
    initGPIOC6_GND();
    delay_ms(10);
    chkConnection_GPIOC6_GND(&node_type); // 0->RX->(spojen na GND) | 1->TX->(lebdi)

    initPWM();

    initLIS320DL();
    delay_ms(10);

    initnRF24L01(node_type);
    delay_ms(1000);
  }
  // INICIJALIZACIJA END -------------------------------------------------


  printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w                   nRF24L01 Tx[1]-Rx[0] => [%d]               w\n",node_type);
  printUSART2("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");



//  if (node_type == NRF24L01_NODE_TYPE_TX) {
//    startMasterNodeSYS();
//  }else {
//    startSlaveNodeSYS();
//  }
//  // NOTE:
//  //      U nRF modulu ovdje inace zavrsava kod jer u Maste i Slave funkcijama 
//  //      se nalazi while(1) petlja u kojoj se vrti program.
























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


  //while(1) {
  //    // 1. Kontrola autića
  //    getDataLIS302DL(accel_data);
  //    txDataNRF24L01((uint8_t*)c_nrf_slave_addr, (uint8_t*)accel_data);
  //    updateMotors(accel_data);
  //
  //    // 2. Video slanje (ako imamo spreman frame)
  //    if(frame_ready) {
  //        send_chunk();
  //
  //        if (send_index >= IMG_W*IMG_H) {
  //            send_index = 0;   // reset za sljedeći frame
  //            frame_ready = 0;  // čekaj novi DMA frame
  //        }
  //    }
  //}





  while (1){

    if (node_type == NRF24L01_NODE_TYPE_TX ) {

      // NOTE: Kontrola za autic ide prije DMA logike "OVDJE"
      
      if ((DMA2_Stream1->CR & DMA_SxCR_CT) == DMA_SxCR_CT) { // ovo znaci current_target = 1, a to znaci da se upisuju podaci u M1AR, a M0AR je slobodan za citanje
        // Citamo M0AR
        if (citamo_buffer == 0) {
          send_data_via_nrfmodul(frame_buffer0, FRAME_MAX);  // to je kao startMasterNodeSYS() 
          citamo_buffer = 1;
        }
      }else { 
        // citamo M1AR
        if (citamo_buffer == 1) {
          send_data_via_nrfmodul(frame_buffer1, FRAME_MAX); // to je kao startMasterNodeSYS()
          citamo_buffer = 0;
        }
      }// else CT blok

    }else { // ako je RX
      // NOTE: Ovo treba izmjeniti kada se uvede autic ovaj blok za primanje podataka jer ce se primati i podaci od autica :)
      //       RX FUNKCIJA NE SMIJE VIŠE BITI BESKONAČNA PETLJA KADA SE UVEDE KONTROLA AUTICA PREKO ISTOG NRF MODULA
      startSlaveNodeRX();;
    }
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


