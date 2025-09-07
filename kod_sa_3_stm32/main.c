#include "ov7670/ov7670.h"
#include "stm32f4xx.h"
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
#include "prenos/prenos.h"
#include <string.h>

int main(void)
{
  uint8_t node_type = NRF24L01_NODE_TYPE_RX;
  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // za provjeru vremena
  }

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


    OV7670_SetupQQVGA_Custom();     // OVO JE MOJA I OVO JE ISPRAVNOA 
    delay_ms(1000);

    // NOTE:
    // Nakon upisivanja vrsimo provjeru upisa, tj. da li su dobro upisane zeljene vrijednosti

    printUSART2("================================================================\n");

    DCMI_Init_OV7670_continuous_mode();   // ovo je za continuos mode

    printUSART2("DCMI inicijalizacija je zavrsena\n\n");


    initDMA2_for_OV7670_continuous_mode_double_buffer(frame_buffer0, frame_buffer1, FRAME_MAX);
    delay_ms(100);


    DCMI_start_continuous_mode();   // Start

  }else { // NOTE: Ovo je za RX blok (kontrolor)
    initPWM();
    delay_ms(10);

    initLIS320DL(); // akcelerometar
    delay_ms(10);

    initnRF24L01_SPI3(NRF24L01_NODE_TYPE_TX);
    delay_ms(1000);
  }

  conRegNRF24L01(NRF24L01_EN_AA, 0x00);     // gasimo ACK
  delay_ms(200);

  printUSART2("#################################################################\n");
  printUSART2("Da li su upisane vrijednosti u nRF modul ???\n");
  printUSART2("NRF24L01_RF_SETUP = 0x%xh\n", getRegNRF24L01(NRF24L01_RF_SETUP));
  printUSART2("NRF24L01_EN_AA = 0x%xh\n", getRegNRF24L01(NRF24L01_EN_AA));
  printUSART2("#################################################################\n");



  if (node_type == NRF24L01_NODE_TYPE_TX) {
    autic_dma_interrupt();
  }else {
    kontroler_double_buffer();  // RX -> pc
  }

  return 0;
}


