#include "./usart/usart.h"
#include "./delay/delay.h"
#include "./nRF24L01/nRF24L01.h"
#include "./gpio/gpioc.h"
#include "led/led.h"
#include "lis302dl/lis302dl.h"
#include <stdint.h>



int8_t accel_data[ACC_DATA_LENGTH];

void startMasterNodeSYS();
void startSlaveNodeSYS();


int main(void)
{
  uint8_t node_type = NRF24L01_NODE_TYPE_RX;

  // INICIJALIZACIJA START -----------------------------------------------
  {
    // TX or RX check
    initGPIOC6_GND();
    delay_ms(10);
    chkConnection_GPIOC6_GND(&node_type); // 0->RX->(not on GND) | 1->TX->(GND)

    initUSART2(USART2_BAUDRATE_921600);

    initPWM();

    initLIS320DL();
    delay_ms(10);

    initSYSTIMER_TIM7();


    initnRF24L01_SPI3(node_type);
    delay_ms(1000);
  }
  // INICIJALIZACIJA END -------------------------------------------------

  printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w                   nRF24L01 Tx[1]-Rx[0] => [%d]               w\n",node_type);
  printUSART2("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");


  if (node_type == NRF24L01_NODE_TYPE_TX) {
    startMasterNodeSYS();
  }else {
    startSlaveNodeSYS();
  }

  return 0;
}



void startMasterNodeSYS(){
  uint8_t* send_msg = (uint8_t*)accel_data;
  while (1) {
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
  }
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

