#include "dma.h"
#include "stm32f4xx.h"



void initDMA2_for_OV7670_snapshot(volatile uint16_t* buff0, uint16_t tsize)
{
  RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;

  DMA2_Stream1->CR = 0x00000000;  // DISABLE STREAM

  while (DMA2_Stream1->CR & DMA_SxCR_EN);    // sacekaj da se ugasi

  // Stream0–3 → pripadaju LIFCR/LISR (low interrupt grupa)
  // Stream4–7 → pripadaju HIFCR/HISR (high interrupt grupa)

  // clear all flags for Stream1
  DMA2->LIFCR = (DMA_LIFCR_CFEIF1   |
                 DMA_LIFCR_CDMEIF1  |
                 DMA_LIFCR_CTEIF1   |
                 DMA_LIFCR_CHTIF1   |
                 DMA_LIFCR_CTCIF1);

  DMA2_Stream1->CR |= (DMA_SxCR_CHSEL_0);   // Channel 1 selected
  // MBURST:
  // PBURST[1:0]
  // Bit 19 CT:   Current target (only in double buffer mode)
  DMA2_Stream1->CR &= ~(DMA_SxCR_DBM);      // 0: No buffer switching at the end of transfer
  DMA2_Stream1->CR |= DMA_SxCR_PL;          // Priority level: Very high
  //PINCOS: Peripheral increment offset size -> samo ako je PBURST drugaciji od 0x00
  DMA2_Stream1->CR |= DMA_SxCR_MSIZE_0;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_PSIZE_1;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_MINC;        // 1: Memory address pointer is 
                                            //    incremented after each data transfer 
                                            //    (increment is done according to MSIZE)
  DMA2_Stream1->CR &= ~DMA_SxCR_PINC;       // 0: Peripheral address pointer is fixed
  DMA2_Stream1->CR &= ~DMA_SxCR_CIRC;       // zato sto zelimo snapshot, a za continuous mode 1
  DMA2_Stream1->CR &= ~DMA_SxCR_DIR;        // 00: Peripheral-to-memory
  DMA2_Stream1->CR &= ~DMA_SxCR_PFCTRL;     // 0: The DMA is the flow controller
  DMA2_Stream1->CR |= DMA_SxCR_TCIE;        // Transfer complete interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_HTIE;        // HTIE: Half transfer interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_TEIE;        // TEIE: Transfer error interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_DMEIE;       // DMEIE: Direct mode error interrupt enable


  DMA2_Stream1->NDTR = tsize/2;               // NDT[15:0]: Number of data items to transfer
                                            // posto je PSIZE 32bita, a MSIZE 16bita. To znaci
                                            // da ce biti duplo manje transakcija
                                            // Upisujemo koliko elemnata prenosimo (broj elemenata u nizu)
  DMA2_Stream1->PAR = (uint32_t)&DCMI->DR;  // PAR[31:0]: Peripheral address
  DMA2_Stream1->M0AR = (uint32_t)buff0;     // M0A[31:0]: Memory 0 address --> postavlja se na uint32_t
                                            // Memory 0 Address Register (M0AR, 32-bit) 
                                            // Postavlja adresu memorijskog buffera u koji DMA upisuje podatke.
                                            // Cast u uint32_t je potreban jer je registar 32-bitni, a buff0 je uint16_t*

  DMA2_Stream1->FCR &= ~(DMA_SxFCR_DMDIS);  // 0: Direct mode enabled


  DMA2_Stream1->CR |= DMA_SxCR_EN;          // EN: Stream enable / flag stream ready when read low
  /*
   NOTE:        ----"DMA_SxCR_EN"----
          This bit may be cleared by hardware:
          –   on a DMA end of transfer (stream ready to be configured)
          –   if a transfer error occurs on the AHB master buses
          –   when the FIFO threshold on memory AHB port is not compatible with 
              the size of the burst
          When this bit is read as 0, the software is allowed to program the Configuration and FIFO
          bits registers. It is forbidden to write these registers when the EN bit is read as 1.
          Note: Before setting EN bit to '1' to start a new transfer, the event flags corresponding to the
          stream in DMA_LISR or DMA_HISR register must be cleared.
  */

}




void initDMA2_for_OV7670_continuous_mode(volatile uint16_t* buff0, uint16_t tsize)
{
  RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;

  DMA2_Stream1->CR = 0x00000000;  // DISABLE STREAM

  while (DMA2_Stream1->CR & DMA_SxCR_EN);    // sacekaj da se ugasi

  // Stream0–3 → pripadaju LIFCR/LISR (low interrupt grupa)
  // Stream4–7 → pripadaju HIFCR/HISR (high interrupt grupa)

  // clear all flags for Stream1
  DMA2->LIFCR = (DMA_LIFCR_CFEIF1   |
                 DMA_LIFCR_CDMEIF1  |
                 DMA_LIFCR_CTEIF1   |
                 DMA_LIFCR_CHTIF1   |
                 DMA_LIFCR_CTCIF1);

  DMA2_Stream1->CR |= (DMA_SxCR_CHSEL_0);   // Channel 1 selected
  // MBURST:
  // PBURST[1:0]
  // Bit 19 CT:   Current target (only in double buffer mode)
  DMA2_Stream1->CR &= ~(DMA_SxCR_DBM);      // 0: No buffer switching at the end of transfer
  DMA2_Stream1->CR |= DMA_SxCR_PL;          // Priority level: Very high
  //PINCOS: Peripheral increment offset size -> samo ako je PBURST drugaciji od 0x00
  DMA2_Stream1->CR |= DMA_SxCR_MSIZE_0;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_PSIZE_1;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_MINC;        // 1: Memory address pointer is 
                                            //    incremented after each data transfer 
                                            //    (increment is done according to MSIZE)
  DMA2_Stream1->CR &= ~DMA_SxCR_PINC;       // 0: Peripheral address pointer is fixed
  //DMA2_Stream1->CR &= ~DMA_SxCR_CIRC;       // zato sto zelimo snapshot, a za continuous mode 1
  DMA2_Stream1->CR |= DMA_SxCR_CIRC;        //  continuous mode 1
  DMA2_Stream1->CR &= ~DMA_SxCR_DIR;        // 00: Peripheral-to-memory
  DMA2_Stream1->CR &= ~DMA_SxCR_PFCTRL;     // 0: The DMA is the flow controller
  DMA2_Stream1->CR |= DMA_SxCR_TCIE;        // Transfer complete interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_HTIE;        // HTIE: Half transfer interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_TEIE;        // TEIE: Transfer error interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_DMEIE;       // DMEIE: Direct mode error interrupt enable


  DMA2_Stream1->NDTR = tsize/2;               // NDT[15:0]: Number of data items to transfer
                                            // posto je PSIZE 32bita, a MSIZE 16bita. To znaci
                                            // da ce biti duplo manje transakcija
                                            // Upisujemo koliko elemnata prenosimo (broj elemenata u nizu)
  DMA2_Stream1->PAR = (uint32_t)&DCMI->DR;  // PAR[31:0]: Peripheral address
  DMA2_Stream1->M0AR = (uint32_t)buff0;     // M0A[31:0]: Memory 0 address --> postavlja se na uint32_t
                                            // Memory 0 Address Register (M0AR, 32-bit) 
                                            // Postavlja adresu memorijskog buffera u koji DMA upisuje podatke.
                                            // Cast u uint32_t je potreban jer je registar 32-bitni, a buff0 je uint16_t*

  DMA2_Stream1->FCR &= ~(DMA_SxFCR_DMDIS);  // 0: Direct mode enabled


  NVIC_EnableIRQ(DMA2_Stream1_IRQn);
  NVIC_SetPriority(DMA2_Stream1_IRQn, 0); // po želji, 0 = najviši



  DMA2_Stream1->CR |= DMA_SxCR_EN;          // EN: Stream enable / flag stream ready when read low
  /*
   NOTE:        ----"DMA_SxCR_EN"----
          This bit may be cleared by hardware:
          –   on a DMA end of transfer (stream ready to be configured)
          –   if a transfer error occurs on the AHB master buses
          –   when the FIFO threshold on memory AHB port is not compatible with 
              the size of the burst
          When this bit is read as 0, the software is allowed to program the Configuration and FIFO
          bits registers. It is forbidden to write these registers when the EN bit is read as 1.
          Note: Before setting EN bit to '1' to start a new transfer, the event flags corresponding to the
          stream in DMA_LISR or DMA_HISR register must be cleared.
  */

}


void initDMA2_for_OV7670_continuous_mode_double_buffer(volatile uint16_t* buff0,volatile uint16_t* buff1, uint16_t tsize)
{
  RCC->AHB1ENR |= RCC_AHB1ENR_DMA2EN;

  DMA2_Stream1->CR = 0x00000000;  // DISABLE STREAM

  while (DMA2_Stream1->CR & DMA_SxCR_EN);    // sacekaj da se ugasi

  // Stream0–3 → pripadaju LIFCR/LISR (low interrupt grupa)
  // Stream4–7 → pripadaju HIFCR/HISR (high interrupt grupa)

  // clear all flags for Stream1
  DMA2->LIFCR = (DMA_LIFCR_CFEIF1   |
                 DMA_LIFCR_CDMEIF1  |
                 DMA_LIFCR_CTEIF1   |
                 DMA_LIFCR_CHTIF1   |
                 DMA_LIFCR_CTCIF1);

  DMA2_Stream1->CR |= (DMA_SxCR_CHSEL_0);   // Channel 1 selected
  // MBURST:
  // PBURST[1:0]
  // Bit 19 CT:   Current target (only in double buffer mode)
  //DMA2_Stream1->CR &= ~(DMA_SxCR_DBM);      // 0: No buffer switching at the end of transfer
  DMA2_Stream1->CR |= (DMA_SxCR_DBM);      // 1: buffer switching at the end of transfer
  DMA2_Stream1->CR |= DMA_SxCR_PL;          // Priority level: Very high
  //PINCOS: Peripheral increment offset size -> samo ako je PBURST drugaciji od 0x00
  DMA2_Stream1->CR |= DMA_SxCR_MSIZE_0;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_PSIZE_1;     // 01: half-word (16-bit)
  DMA2_Stream1->CR |= DMA_SxCR_MINC;        // 1: Memory address pointer is 
                                            //    incremented after each data transfer 
                                            //    (increment is done according to MSIZE)
  DMA2_Stream1->CR &= ~DMA_SxCR_PINC;       // 0: Peripheral address pointer is fixed
  //DMA2_Stream1->CR &= ~DMA_SxCR_CIRC;       // zato sto zelimo snapshot, a za continuous mode 1
  DMA2_Stream1->CR |= DMA_SxCR_CIRC;        //  continuous mode 1
  DMA2_Stream1->CR &= ~DMA_SxCR_DIR;        // 00: Peripheral-to-memory
  DMA2_Stream1->CR &= ~DMA_SxCR_PFCTRL;     // 0: The DMA is the flow controller
  DMA2_Stream1->CR |= DMA_SxCR_TCIE;        // Transfer complete interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_HTIE;        // HTIE: Half transfer interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_TEIE;        // TEIE: Transfer error interrupt enable
  DMA2_Stream1->CR |= DMA_SxCR_DMEIE;       // DMEIE: Direct mode error interrupt enable


  DMA2_Stream1->NDTR = tsize/2;               // NDT[15:0]: Number of data items to transfer
                                            // posto je PSIZE 32bita, a MSIZE 16bita. To znaci
                                            // da ce biti duplo manje transakcija
                                            // Upisujemo koliko elemnata prenosimo (broj elemenata u nizu)
  DMA2_Stream1->PAR = (uint32_t)&DCMI->DR;  // PAR[31:0]: Peripheral address
  DMA2_Stream1->M0AR = (uint32_t)buff0;     // M0A[31:0]: Memory 0 address --> postavlja se na uint32_t
                                            // Memory 0 Address Register (M0AR, 32-bit) 
                                            // Postavlja adresu memorijskog buffera u koji DMA upisuje podatke.
                                            // Cast u uint32_t je potreban jer je registar 32-bitni, a buff0 je uint16_t*
  DMA2_Stream1->M1AR = (uint32_t)buff1;

  DMA2_Stream1->FCR &= ~(DMA_SxFCR_DMDIS);  // 0: Direct mode enabled


  NVIC_EnableIRQ(DMA2_Stream1_IRQn);
  NVIC_SetPriority(DMA2_Stream1_IRQn, 0); // po želji, 0 = najviši



  DMA2_Stream1->CR |= DMA_SxCR_EN;          // EN: Stream enable / flag stream ready when read low
  /*
   NOTE:        ----"DMA_SxCR_EN"----
          This bit may be cleared by hardware:
          –   on a DMA end of transfer (stream ready to be configured)
          –   if a transfer error occurs on the AHB master buses
          –   when the FIFO threshold on memory AHB port is not compatible with 
              the size of the burst
          When this bit is read as 0, the software is allowed to program the Configuration and FIFO
          bits registers. It is forbidden to write these registers when the EN bit is read as 1.
          Note: Before setting EN bit to '1' to start a new transfer, the event flags corresponding to the
          stream in DMA_LISR or DMA_HISR register must be cleared.
  */

}

