#include "dcmi.h"
#include "../ov7670/ov7670.h"
#include "../dma/dma.h"
#include "../check/check.h"
#include "stm32f4xx.h"
#include "../usart/usart.h"
#include "../delay/delay.h"
#include <stdint.h>



//volatile uint32_t frame_buffer[(IMG_W*IMG_H)/2]; // 160*120 = 19 200

//volatile uint16_t frame_buffer[IMG_W*IMG_H] = {0xAA, 0xAA, 0xAA, 0xAA, 0xAA}; // Za snapshot mode koristimo 

// Ova dva niza koristimo za circular mode double buffer
volatile uint16_t frame_buffer0[IMG_W*IMG_H]; // 160*120 = 19 200
volatile uint16_t frame_buffer1[IMG_W*IMG_H]; // 160*120 = 19 200

//  NOTE:   
//        The DMA controller and all DCMI configuration registers should be
//        programmed correctly before enabling this bit (CAPTURE).

void DCMI_Init_OV7670(void)
{
    /*
   NOTE:
          DCMI_D0     -   PA9
          DCMI_D1     -   PA10
          DCMI_D2     -   PC8 
          DCMI_D3     -   PC9
          DCMI_D4     -   PE4
          DCMI_D5     -   PD3 
          DCMI_D6     -   PE5
          DCMI_D7     -   PE6
          DCMI_PCLK   -   PA6
          DCMI_HSYNC  -   PA4
          DCMI_VSYNC  -   PB7
  */

    // inicijalizacija pinova koji se koriste za DCMI
    {
        RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN;
        { // GPIOA
            GPIOA->MODER &= ~(GPIO_MODER_MODER9|GPIO_MODER_MODER10|GPIO_MODER_MODER6|GPIO_MODER_MODER4);
            GPIOA->MODER |= GPIO_MODER_MODER9_1|GPIO_MODER_MODER10_1|GPIO_MODER_MODER6_1|GPIO_MODER_MODER4_1;   // AFR
            GPIOA->AFR[0] &= ~0x0F0F0000;     // AFR -> Pin4 & Pin6 cleaning
            GPIOA->AFR[0] |= 0x0D0D0000;      // AFR -> PA4 & PA6
            GPIOA->AFR[1] &= ~0x00000FF0;     // AFR -> Pin9 & Pin10 cleaning
            GPIOA->AFR[1] |= 0x00000DD0;      // AFR -> PA9 & PA10

            // chat gpt reko da ovak porbam 
            // PA6 => AFR[0] bits 24..27
            GPIOA->MODER &= ~(0x3 << (6*2));          // clear mode for PA6
            GPIOA->MODER |=  (0x2 << (6*2));          // set AF mode (10)

            GPIOA->AFR[0] &= ~(0xF << (6*4));         // clear AF nibble for PA6
            GPIOA->AFR[0] |=  (0xD << (6*4));         // AF13 = 0xD


            printUSART2("GPIOA MODER=0x%xw AFR0=0x%xw AFR1=0x%xw IDR=0x%xh\n",
                        GPIOA->MODER, GPIOA->AFR[0], GPIOA->AFR[1], GPIOA->IDR);

            //
            //
            /*
      NOTE: 
            PA9  -  DCMI_D0
            PA10 -  DCMI_D1
            PA6  -  DCMI_PCLK   !!!
            PA4  -  DCMI_HSYNC  !!!
      */
        }
        { // GPIOB
            GPIOB->MODER &= ~(GPIO_MODER_MODER7);
            GPIOB->MODER |= GPIO_MODER_MODER7_1;
            GPIOB->AFR[0] &= ~(0xF0000000);
            GPIOB->AFR[0] |= 0xD0000000;      // AFR -> PB7
            /*
      NOTE: 
            PB7  -  DCMI_VSYNC  !!!
      */
        }
        { // GPIOC
            GPIOC->MODER &= ~(GPIO_MODER_MODER8|GPIO_MODER_MODER9);
            GPIOC->MODER |= GPIO_MODER_MODER8_1|GPIO_MODER_MODER9_1;  // AFR
            GPIOC->AFR[1] &= ~(0x000000FF);
            GPIOC->AFR[1] |= (0x000000DD);    // AFR -> PC8 & PC9
            /*
      NOTE: 
            PC8  -  DCMI_D2
            PC9  -  DCMI_D3
      */
        }
        { // GPIOD
            GPIOD->MODER &= ~(GPIO_MODER_MODER3);
            GPIOD->MODER |= GPIO_MODER_MODER3_1;
            GPIOD->AFR[0] &= ~(0x0000F000);
            GPIOD->AFR[0] |= 0x0000D000;    // AFR -> PD3
            /*
      NOTE: 
            PD3  -  DCMI_D5
      */
        }
        { // GPIOE
            GPIOE->MODER &= ~(GPIO_MODER_MODER4|GPIO_MODER_MODER5|GPIO_MODER_MODER6);
            GPIOE->MODER |= (GPIO_MODER_MODER4_1|GPIO_MODER_MODER5_1|GPIO_MODER_MODER6_1);    // AFR
            GPIOE->AFR[0] &= ~(0x0FFF0000);
            GPIOE->AFR[0] |= 0x0DDD0000;
            /*
      NOTE: 
            PE4  -  DCMI_D4
            PE5  -  DCMI_D6
            PE6  -  DCMI_D7
      */
        }
    }

    // start DCMI clock
    RCC->AHB2ENR |= RCC_AHB2ENR_DCMIEN;

    // reset DCMI 
    RCC->AHB2RSTR |= RCC_AHB2RSTR_DCMIRST;     // reset periferije (postavljamo bit)
    RCC->AHB2RSTR &= ~RCC_AHB2RSTR_DCMIRST;    // brisemo bit (spremno za upotrebu)
    //FIFO-e i state mašine. Ako se nešto “zaglavilo”, reset im vraća stanje na 0.

    // DCMI config
    DCMI->CR = 0;   // deafault config
    /*
     ENABLE       = 0   -> DCMI disabled
     EDM[1:0]     = 00  -> interface captures 8-bit data on every pixel clock
     FCRC[1:0]    = 00  -> All frames are captured  
     VSPOL        = 0   -> VSYNC active low
     HSPOL        = 0   -> HSPOL active low
     PCKPOL       = 0   -> Falling edge active
     ESS          = 0   -> Hardware synchronization data capture (frame/line start/stop) is synchronized with the HSYNC/VSYNC signals.
     JPEG         = 0   -> Uncompressed video format
     CROP:        = 0   -> The full image is captured. In this case the total number of bytes in an image frame should be a multiple of 4
     CM           = 0   -> 0: Continuous grab mode - The received data are transferred into the destination
                              memory through the DMA. The buffer location and mode (linear or circular
                              buffer) is controlled through the system DMA.
     CAPTURE      = 0   -> 0: Capture disabled.

                Note: The DMA controller and all DCMI configuration registers should be
                programmed correctly before enabling this bit.
  */
    // EDM[1:0]     -> podeseno sa defalut config DCMI->CR = 0;
    // FCRC[1:0]    -> They are ignored in snapshot mode.
    DCMI->CR |= DCMI_CR_VSPOL;  // = 1   -> VSYNC active high   | 0 -> VSYNC active low 
    DCMI->CR &= ~(DCMI_CR_HSPOL);  // = 1 -> HSPOL active high   | 0 -> HSPOL active low 
    DCMI->CR &= ~DCMI_CR_PCKPOL; // = 1   -> Rising edge active. | 0 -> Falling edge active.   
    // ESS = 0 jer se radi HSYNC i VSYNC Hardware synchronization data capture
    // JPEG = 0
    // CROP = 0 jer kamera salje 160x120 sliku i mi je uzimamo cijelu
    //DCMI->CR &= ~DCMI_CR_CM; // continuous mode
    DCMI->CR |= DCMI_CR_CM;     // snapshot mode 

    DCMI->CR |= DCMI_CR_ENABLE;
}


void DCMI_Init_OV7670_continuous_mode(void)
{
    /*
   NOTE:
          DCMI_D0     -   PA9
          DCMI_D1     -   PA10
          DCMI_D2     -   PC8 
          DCMI_D3     -   PC9
          DCMI_D4     -   PE4
          DCMI_D5     -   PD3 
          DCMI_D6     -   PE5
          DCMI_D7     -   PE6
          DCMI_PCLK   -   PA6
          DCMI_HSYNC  -   PA4
          DCMI_VSYNC  -   PB7
  */

    // inicijalizacija pinova koji se koriste za DCMI
    {
        RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN;
        { // GPIOA
            GPIOA->MODER &= ~(GPIO_MODER_MODER9|GPIO_MODER_MODER10|GPIO_MODER_MODER6|GPIO_MODER_MODER4);
            GPIOA->MODER |= GPIO_MODER_MODER9_1|GPIO_MODER_MODER10_1|GPIO_MODER_MODER6_1|GPIO_MODER_MODER4_1;   // AFR
            GPIOA->AFR[0] &= ~0x0F0F0000;     // AFR -> Pin4 & Pin6 cleaning
            GPIOA->AFR[0] |= 0x0D0D0000;      // AFR -> PA4 & PA6
            GPIOA->AFR[1] &= ~0x00000FF0;     // AFR -> Pin9 & Pin10 cleaning
            GPIOA->AFR[1] |= 0x00000DD0;      // AFR -> PA9 & PA10

            // chat gpt reko da ovak porbam 
            // PA6 => AFR[0] bits 24..27
            GPIOA->MODER &= ~(0x3 << (6*2));          // clear mode for PA6
            GPIOA->MODER |=  (0x2 << (6*2));          // set AF mode (10)

            GPIOA->AFR[0] &= ~(0xF << (6*4));         // clear AF nibble for PA6
            GPIOA->AFR[0] |=  (0xD << (6*4));         // AF13 = 0xD


            printUSART2("GPIOA MODER=0x%xw AFR0=0x%xw AFR1=0x%xw IDR=0x%xh\n",
                        GPIOA->MODER, GPIOA->AFR[0], GPIOA->AFR[1], GPIOA->IDR);

            //
            //
            /*
      NOTE: 
            PA9  -  DCMI_D0
            PA10 -  DCMI_D1
            PA6  -  DCMI_PCLK   !!!
            PA4  -  DCMI_HSYNC  !!!
      */
        }
        { // GPIOB
            GPIOB->MODER &= ~(GPIO_MODER_MODER7);
            GPIOB->MODER |= GPIO_MODER_MODER7_1;
            GPIOB->AFR[0] &= ~(0xF0000000);
            GPIOB->AFR[0] |= 0xD0000000;      // AFR -> PB7
            /*
      NOTE: 
            PB7  -  DCMI_VSYNC  !!!
      */
        }
        { // GPIOC
            GPIOC->MODER &= ~(GPIO_MODER_MODER8|GPIO_MODER_MODER9);
            GPIOC->MODER |= GPIO_MODER_MODER8_1|GPIO_MODER_MODER9_1;  // AFR
            GPIOC->AFR[1] &= ~(0x000000FF);
            GPIOC->AFR[1] |= (0x000000DD);    // AFR -> PC8 & PC9
            /*
      NOTE: 
            PC8  -  DCMI_D2
            PC9  -  DCMI_D3
      */
        }
        { // GPIOD
            GPIOD->MODER &= ~(GPIO_MODER_MODER3);
            GPIOD->MODER |= GPIO_MODER_MODER3_1;
            GPIOD->AFR[0] &= ~(0x0000F000);
            GPIOD->AFR[0] |= 0x0000D000;    // AFR -> PD3
            /*
      NOTE: 
            PD3  -  DCMI_D5
      */
        }
        { // GPIOE
            GPIOE->MODER &= ~(GPIO_MODER_MODER4|GPIO_MODER_MODER5|GPIO_MODER_MODER6);
            GPIOE->MODER |= (GPIO_MODER_MODER4_1|GPIO_MODER_MODER5_1|GPIO_MODER_MODER6_1);    // AFR
            GPIOE->AFR[0] &= ~(0x0FFF0000);
            GPIOE->AFR[0] |= 0x0DDD0000;
            /*
      NOTE: 
            PE4  -  DCMI_D4
            PE5  -  DCMI_D6
            PE6  -  DCMI_D7
      */
        }
    }

    // start DCMI clock
    RCC->AHB2ENR |= RCC_AHB2ENR_DCMIEN;

    // reset DCMI 
    RCC->AHB2RSTR |= RCC_AHB2RSTR_DCMIRST;     // reset periferije (postavljamo bit)
    RCC->AHB2RSTR &= ~RCC_AHB2RSTR_DCMIRST;    // brisemo bit (spremno za upotrebu)
    //FIFO-e i state mašine. Ako se nešto “zaglavilo”, reset im vraća stanje na 0.

    // DCMI config
    DCMI->CR = 0;   // deafault config
    /*
     ENABLE       = 0   -> DCMI disabled
     EDM[1:0]     = 00  -> interface captures 8-bit data on every pixel clock
     FCRC[1:0]    = 00  -> All frames are captured  
     VSPOL        = 0   -> VSYNC active low
     HSPOL        = 0   -> HSPOL active low
     PCKPOL       = 0   -> Falling edge active
     ESS          = 0   -> Hardware synchronization data capture (frame/line start/stop) is synchronized with the HSYNC/VSYNC signals.
     JPEG         = 0   -> Uncompressed video format
     CROP:        = 0   -> The full image is captured. In this case the total number of bytes in an image frame should be a multiple of 4
     CM           = 0   -> 0: Continuous grab mode - The received data are transferred into the destination
                              memory through the DMA. The buffer location and mode (linear or circular
                              buffer) is controlled through the system DMA.
     CAPTURE      = 0   -> 0: Capture disabled.

                Note: The DMA controller and all DCMI configuration registers should be
                programmed correctly before enabling this bit.
  */
    // EDM[1:0]     -> podeseno sa defalut config DCMI->CR = 0;
    // FCRC[1:0]    -> They are ignored in snapshot mode.
    DCMI->CR |= DCMI_CR_VSPOL;  // = 1   -> VSYNC active high   | 0 -> VSYNC active low 
    DCMI->CR &= ~(DCMI_CR_HSPOL);  // = 1 -> HSPOL active high   | 0 -> HSPOL active low 
    DCMI->CR |= DCMI_CR_PCKPOL; // = 1   -> Rising edge active. | 0 -> Falling edge active.   
    // ESS = 0 jer se radi HSYNC i VSYNC Hardware synchronization data capture
    // JPEG = 0
    // CROP = 0 jer kamera salje 160x120 sliku i mi je uzimamo cijelu
    DCMI->CR &= ~DCMI_CR_CM; // continuous mode
    //DCMI->CR |= DCMI_CR_CM;     // snapshot mode 

    DCMI->CR |= DCMI_CR_ENABLE;
}


































// chat gpt funk: 


void DCMI_Init_OV7670_Snapshot(void)
{
    // --- GPIO konfiguracija za DCMI ---
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN |
                    RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIODEN | RCC_AHB1ENR_GPIOEEN;

    // GPIOA: D0, D1, PCLK, HSYNC
    GPIOA->MODER &= ~(GPIO_MODER_MODER9 | GPIO_MODER_MODER10 | GPIO_MODER_MODER6 | GPIO_MODER_MODER4);
    GPIOA->MODER |= (GPIO_MODER_MODER9_1 | GPIO_MODER_MODER10_1 | GPIO_MODER_MODER6_1 | GPIO_MODER_MODER4_1);
    GPIOA->AFR[1] &= ~(0xFF0);
    GPIOA->AFR[1] |= 0xDD0;       // D0, D1
    GPIOA->AFR[0] &= ~(0x0F0F0000);
    GPIOA->AFR[0] |= 0x0D0D0000;  // HSYNC, PCLK

    // GPIOB: VSYNC
    GPIOB->MODER &= ~(GPIO_MODER_MODER7);
    GPIOB->MODER |= GPIO_MODER_MODER7_1;
    GPIOB->AFR[0] &= ~(0xF << 28);
    GPIOB->AFR[0] |= 0xD << 28;

    // GPIOC: D2, D3
    GPIOC->MODER &= ~(GPIO_MODER_MODER8 | GPIO_MODER_MODER9);
    GPIOC->MODER |= GPIO_MODER_MODER8_1 | GPIO_MODER_MODER9_1;
    GPIOC->AFR[1] &= ~(0xFF);
    GPIOC->AFR[1] |= 0xDD;

    // GPIOD: D5
    GPIOD->MODER &= ~(GPIO_MODER_MODER3);
    GPIOD->MODER |= GPIO_MODER_MODER3_1;
    GPIOD->AFR[0] &= ~(0xF << 12);
    GPIOD->AFR[0] |= 0xD << 12;

    // GPIOE: D4, D6, D7
    GPIOE->MODER &= ~(GPIO_MODER_MODER4 | GPIO_MODER_MODER5 | GPIO_MODER_MODER6);
    GPIOE->MODER |= GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1;
    GPIOE->AFR[0] &= ~(0x0FFF0000);
    GPIOE->AFR[0] |= 0x0DDD0000;

    // --- Enable DCMI ---
    RCC->AHB2ENR |= RCC_AHB2ENR_DCMIEN;

    // Reset DCMI
    RCC->AHB2RSTR |= RCC_AHB2RSTR_DCMIRST;
    RCC->AHB2RSTR &= ~RCC_AHB2RSTR_DCMIRST;

    // --- DCMI konfiguracija ---
    DCMI->CR = 0;            // default
    DCMI->CR |= DCMI_CR_VSPOL;   // VSYNC HIGH active
    DCMI->CR |= DCMI_CR_HSPOL;   // HSYNC HIGH active
    DCMI->CR |= DCMI_CR_PCKPOL;  // PCLK rising edge
    DCMI->CR |= DCMI_CR_CM;      // SNAPSHOT mode
 //   DCMI->CR |= DCMI_CR_CAPTURE; // Capture enabled
}

// ovo iznda je chatgpt funkcija



//void DCMI_CaptureFrame_DebugPolling(void)
//{
//    DCMI_DebugStatus();
//    DCMI->CR |= DCMI_CR_CAPTURE;       // start capture
//    printUSART2("dodje do while petlje u captureFrame\n");
//
//    uint32_t timeout = 1000000; // samo da ne blokira beskonačno
//    while (DMA2_Stream1->NDTR != 0 && timeout--)
//    {
//        // Provjera DMA statusa
//        uint32_t dma_cr   = DMA2_Stream1->CR;
//        uint32_t dma_ndtr = DMA2_Stream1->NDTR;
//        uint32_t dma_isr  = DMA2->LISR;
//
//        // Provjera DCMI statusa
//        uint32_t dcmi_sr = DCMI->SR;
//        uint32_t dcmi_cr = DCMI->CR;
//
//        // Ispiši periodično da vidiš šta se dešava
//        static uint32_t cnt = 0;
//        if(cnt++ % 100000 == 0)
//        {
//            printUSART2("DMA NDTR=%, DMA_CR=0x%xb, DMA_ISR=0x%xb, DCMI_SR=0x%xb\n",
//                        dma_ndtr, dma_cr, dma_isr, dcmi_sr);
//        }
//    }
//
//    if(timeout == 0)
//        printUSART2("!!! WARNING: DMA capture timeout\n");
//
//    printUSART2("Izadje iz while petlje u captureFrame\n");
//    DCMI->CR &= ~DCMI_CR_CAPTURE;      // stop capture
//}

//void DCMI_CaptureFrame_DebugPolling(void) 
//{
//    uint32_t timeout;
//    uint8_t d0_d7;
//    uint32_t idx = 0;
//    uint8_t pclk, hsync, vsync;
//
//    printUSART2("=== Start Frame Capture Polling ===\n");
//
//    // čekaj početak frame-a (VSYNC HIGH)
//    timeout = 1000000;
//    while (!(GPIOB->IDR & (1 << 7)) && timeout--) __NOP(); // PB7 = VSYNC
//    if(timeout == 0) { printUSART2("Timeout waiting VSYNC HIGH!\n"); return; }
//
//    printUSART2("VSYNC HIGH detected, frame started!\n");
//
//    // dok traje frame, upisujemo u buffer
//    timeout = 10000000; // veći timeout jer čitamo cijeli frame
//    while ((GPIOB->IDR & (1 << 7)) && timeout-- && idx < FRAME_MAX) { // dok je VSYNC HIGH
//
//        // čekaj rising edge PCLK
//        while (!(GPIOA->IDR & (1<<6)) && timeout--);  // PA6 = PCLK HIGH
//        if(timeout == 0) break;
//
//        // očitavamo D0-D7
//        d0_d7  = ((GPIOA->IDR & ((1<<9)|(1<<10))) >> 9) & 0x03;      // D0-D1
//        d0_d7 |= ((GPIOC->IDR & ((1<<8)|(1<<9))) >> 6) & 0x0C;       // D2-D3
//        d0_d7 |= ((GPIOD->IDR & (1<<3)) << 2) & 0x10;                // D5
//        d0_d7 |= ((GPIOE->IDR & ((1<<4)|(1<<5)|(1<<6))) << 0) & 0xE0;// D4,D6,D7
//
//        // upiši u buffer
//        frame_buffer[idx++] = d0_d7;
//
//        // čekaj da PCLK padne (da ne čitamo više puta isti piksel)
//        while ((GPIOA->IDR & (1<<6)) && timeout--);
//    }
//
//    if(timeout == 0) printUSART2("Timeout while capturing frame!\n");
//
//    printUSART2("Captured %lu pixels\n", idx);
//    printUSART2("=== Frame Capture Polling End ===\n");
//
//
//
//
//
//printUSART2("=== Frame Capture Polling End ===\n");
//
//if (idx > 0) {
//    printUSART2("Prvih 10 pixela: ");
//    for (int i = 0; i < 10 && i < idx; i++) {
//        printUSART2("0x%xb ", frame_buffer[i]);
//    }
//    printUSART2("\n");
//
//    printUSART2("Zadnjih 10 pixela: ");
//    for (int i = (idx > 10 ? idx - 10 : 0); i < idx; i++) {
//        printUSART2("0x%xb ", frame_buffer[i]);
//    }
//    printUSART2("\n");
//
//    printUSART2("Ukupno očitanih pixela: %d\n", idx);
//
//} else {
//    printUSART2("Frame buffer je prazan!\n");
//}
//
//
//
//
//}

void DCMI_CaptureFrame(void)
{
    // Očisti flagove
    DCMI->ICR = 0x1F;

    // Uključi capture
    DCMI->CR |= DCMI_CR_CAPTURE;

    printUSART2("Dodje do while petlje\n");
    
    uint32_t timeout = 1000000; // opcioni timeout da ne blokira MCU
    while (!(DCMI->MISR & DCMI_MISR_FRAME_MIS) && timeout--) {
        // Debug: ispis vrednosti MISR svako 100000 iteracija, da ne spamuje
        static uint32_t counter = 0;
        if(counter++ > 100000) {
            counter = 0;
            printUSART2("MISR=0x%xb, CR=0x%xb\n", DCMI->MISR, DCMI->CR);
        }
        __NOP();
    }

    if(timeout == 0)
        printUSART2("ERROR: Capture timeout!\n");

    printUSART2("Izadje iz while petlje, timeout je %d\n",timeout);
}



//void DCMI_CaptureFrame(void)
//{
//    // Očisti flagove
//    DCMI->ICR = 0x1F;
//
//    // Uključi capture
//    DCMI->CR |= DCMI_CR_CAPTURE;
//
//    printUSART2("Dodje do while petlje\n");
//    // Čekaj dok se snapshot ne završi
//    while (!(DCMI->MISR & DCMI_MISR_FRAME_MIS));
//    printUSART2("Izadje iz while petlje\n");  // ne izlazi iz while petlje..
//}


// WARN: Ova funk. ispod nisam siguran da li ce ovo ispravno raditi ili ne (provjeri).
void OV7670_CheckPins(void) 
{
    if (GPIOA->IDR & GPIO_IDR_IDR_6) printUSART2("PCLK HIGH\n"); else printUSART2("PCLK LOW\n");
    if (GPIOA->IDR & GPIO_IDR_IDR_4) printUSART2("HSYNC HIGH\n"); else printUSART2("HSYNC LOW\n");
    if (GPIOB->IDR & GPIO_IDR_IDR_7) printUSART2("VSYNC HIGH\n"); else printUSART2("VSYNC LOW\n");
    
    if (GPIOA->IDR & GPIO_IDR_IDR_9) printUSART2("D0 HIGH\n"); else printUSART2("D0 LOW\n");
    if (GPIOA->IDR & GPIO_IDR_IDR_10) printUSART2("D1 HIGH\n"); else printUSART2("D1 LOW\n");
    if (GPIOC->IDR & GPIO_IDR_IDR_8) printUSART2("D2 HIGH\n"); else printUSART2("D2 LOW\n");
    if (GPIOC->IDR & GPIO_IDR_IDR_9) printUSART2("D3 HIGH\n"); else printUSART2("D3 LOW\n");
    if (GPIOD->IDR & GPIO_IDR_IDR_3) printUSART2("D5 HIGH\n"); else printUSART2("D5 LOW\n");
    if (GPIOE->IDR & GPIO_IDR_IDR_4) printUSART2("D4 HIGH\n"); else printUSART2("D4 LOW\n");
    if (GPIOE->IDR & GPIO_IDR_IDR_5) printUSART2("D6 HIGH\n"); else printUSART2("D6 LOW\n");
    if (GPIOE->IDR & GPIO_IDR_IDR_6) printUSART2("D7 HIGH\n"); else printUSART2("D7 LOW\n");
}




void OV7670_CheckPins_Fluctuation(uint32_t interval_ms)
{
    uint32_t start = getSYSTIMER_TIM7();
    while(getSYSTIMER_TIM7()-start<interval_ms){
        printUSART2("PCLK=%d, HSYNC=%d, VSYNC=%d, D0=%d, D1=%d, D2=%d, D3=%d, D4=%d, D5=%d, D6=%d, D7=%d\n",
            (GPIOA->IDR & GPIO_IDR_IDR_6)?1:0,
            (GPIOA->IDR & GPIO_IDR_IDR_4)?1:0,
            (GPIOB->IDR & GPIO_IDR_IDR_7)?1:0,
            (GPIOA->IDR & GPIO_IDR_IDR_9)?1:0,
            (GPIOA->IDR & GPIO_IDR_IDR_10)?1:0,
            (GPIOC->IDR & GPIO_IDR_IDR_8)?1:0,
            (GPIOC->IDR & GPIO_IDR_IDR_9)?1:0,
            (GPIOE->IDR & GPIO_IDR_IDR_4)?1:0,
            (GPIOD->IDR & GPIO_IDR_IDR_3)?1:0,
            (GPIOE->IDR & GPIO_IDR_IDR_5)?1:0,
            (GPIOE->IDR & GPIO_IDR_IDR_6)?1:0
        );
        delay_ms(1);
    }
}



uint16_t get_pixel(uint32_t *buf, uint32_t pixel_index)
{
    uint32_t word = buf[pixel_index / 2];
    if (pixel_index & 1) {
        return (uint16_t)((word >> 16) & 0xFFFF); // drugi piksel
    } else {
        return (uint16_t)(word & 0xFFFF);        // prvi piksel
    }
}



// ----------------------------------------------------NEW FILE
//
//
//
//




void DCMI_Init_OV7670_SnapshotOnly(void)
{
    // --- Enable GPIO clocks ---
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN |
                    RCC_AHB1ENR_GPIOBEN |
                    RCC_AHB1ENR_GPIOCEN |
                    RCC_AHB1ENR_GPIODEN |
                    RCC_AHB1ENR_GPIOEEN;

    // --- GPIO Init ---
    // GPIOA: D0, D1, PCLK, HSYNC
    GPIOA->MODER &= ~(GPIO_MODER_MODER9 | GPIO_MODER_MODER10 | GPIO_MODER_MODER6 | GPIO_MODER_MODER4);
    GPIOA->MODER |=  (GPIO_MODER_MODER9_1 | GPIO_MODER_MODER10_1 | GPIO_MODER_MODER6_1 | GPIO_MODER_MODER4_1);
    GPIOA->AFR[1] &= ~0x00000FF0;  // PA9, PA10
    GPIOA->AFR[1] |=  0x00000DD0;
    GPIOA->AFR[0] &= ~0x0F0F0000;  // PA4, PA6
    GPIOA->AFR[0] |=  0x0D0D0000;

    // GPIOB: VSYNC
    GPIOB->MODER &= ~(GPIO_MODER_MODER7);
    GPIOB->MODER |=  GPIO_MODER_MODER7_1;
    GPIOB->AFR[0] &= ~(0xF << 28);
    GPIOB->AFR[0] |=  0xD << 28;

    // GPIOC: D2, D3
    GPIOC->MODER &= ~(GPIO_MODER_MODER8 | GPIO_MODER_MODER9);
    GPIOC->MODER |=  (GPIO_MODER_MODER8_1 | GPIO_MODER_MODER9_1);
    GPIOC->AFR[1] &= ~0x000000FF;
    GPIOC->AFR[1] |=  0x000000DD;

    // GPIOD: D5
    GPIOD->MODER &= ~(GPIO_MODER_MODER3);
    GPIOD->MODER |=  GPIO_MODER_MODER3_1;
    GPIOD->AFR[0] &= ~(0xF << 12);
    GPIOD->AFR[0] |=  0xD << 12;

    // GPIOE: D4, D6, D7
    GPIOE->MODER &= ~(GPIO_MODER_MODER4 | GPIO_MODER_MODER5 | GPIO_MODER_MODER6);
    GPIOE->MODER |=  (GPIO_MODER_MODER4_1 | GPIO_MODER_MODER5_1 | GPIO_MODER_MODER6_1);
    GPIOE->AFR[0] &= ~0x0FFF0000;
    GPIOE->AFR[0] |=  0x0DDD0000;

    // --- Enable DCMI clock ---
    RCC->AHB2ENR |= RCC_AHB2ENR_DCMIEN;

    // --- Reset DCMI ---
    RCC->AHB2RSTR |= RCC_AHB2RSTR_DCMIRST;
    RCC->AHB2RSTR &= ~RCC_AHB2RSTR_DCMIRST;

    // --- DCMI configuration ---

    DCMI->CR |= DCMI_CR_VSPOL;   // VSYNC HIGH active
    DCMI->CR &= ~DCMI_CR_PCKPOL; // PCLK falling edge
    DCMI->CR |= DCMI_CR_HSPOL;   // HSYNC HIGH active
    DCMI->CR |= DCMI_CR_CM;      // Snapshot mode
    DCMI->CR |= DCMI_CR_ENABLE;  // Enable


}




//void OV7670_CaptureSnapshot(void)
//{
//    // 1. Reset DMA NDTR (ako želiš ponovo)
//    DMA2_Stream1->NDTR = FRAME_MAX/2;  // broj 32-bitnih reči
//    DMA2_Stream1->CR |= DMA_SxCR_EN;   // omogući DMA
//
//    // 2. Start DCMI capture
//    DCMI->CR |= DCMI_CR_CAPTURE;
//
//    printUSART2("Dolazi do while petlje, ali ne izlazi iz nje..\n");
//    // 3. Čekaj da DMA završi transfer (polling TC flag)
//    while (!(DMA2->LISR & DMA_LISR_TCIF1)); // Stream1, transfer complete
//    DMA2->LIFCR |= DMA_LIFCR_CTCIF1;       // reset TC flag
//
//    // 4. Snapshot završen, frame_buffer ima podatke
//    printUSART2("Snapshot zavrsen, frame_buffer ima podatke\n");
//}



//void OV7670_CaptureSnapshot(void)
//{
//    printUSART2("=== Početak snapshot capture ===\n");
//
//    // 1️⃣ Reset DMA broj transfera i omogući DMA
//    DMA2_Stream1->CR &= ~DMA_SxCR_EN;           // disable DMA prije reset
//    while (DMA2_Stream1->CR & DMA_SxCR_EN);     // čekaj da se disable završi
//
//    DMA2_Stream1->NDTR = FRAME_MAX / 2;         // broj 32-bitnih riječi
//    DMA2_Stream1->CR |= DMA_SxCR_EN;            // enable DMA
//
//    printUSART2("DMA omogućena, NDTR resetovan.\n");
//
//    // 2️⃣ Start DCMI capture (snapshot mode)
//    DCMI->CR |= DCMI_CR_CAPTURE;
//
//    printUSART2("DCMI capture startovan.\n");
//
//    // 3️⃣ Čekaj da DMA završi transfer
//    uint32_t timeout = 5000000; // jednostavan timeout da ne visi beskonačno
//        printUSART2("vsync je 0x%xb\n",DMA2->LISR);
//    while (!(DMA2->LISR & DMA_LISR_TCIF1))
//    {
// //       printUSART2("vsync je 1\n");
//        if (--timeout == 0)
//        {
//            printUSART2("ERROR: DMA timeout!\n");
//            return;
//        }
//    }
//
//    // Reset TC flag
//    DMA2->LIFCR |= DMA_LIFCR_CTCIF1;
//
//    printUSART2("Snapshot završen, frame_buffer popunjen.\n");
//}


void OV7670_CaptureSnapshot(void)
{

    DCMI->ICR = 0xFFFFFFFF; // Reset all flags

    // 1️⃣ Reset DMA
    DMA2_Stream1->CR &= ~DMA_SxCR_EN;
    while(DMA2_Stream1->CR & DMA_SxCR_EN);

    // 2️⃣ Broj 32-bit reči za transfer
    DMA2_Stream1->NDTR = FRAME_MAX / 2;

    // 3️⃣ Omogući DMA
    DMA2_Stream1->CR |= DMA_SxCR_EN;

    // 4️⃣ Start DCMI capture
    DCMI->CR |= DCMI_CR_CAPTURE;

    // 5️⃣ Čekaj završetak DMA transfera (TC flag)
    uint32_t timeout = 5000000;

    while (!(DMA2->LISR & DMA_LISR_TCIF1)) {
        if(--timeout == 0) {
            printUSART2("ERROR: DMA timeout!\n");
            return;
        }
    }

    // Reset TC flag
    DMA2->LIFCR |= DMA_LIFCR_CTCIF1;
    printUSART2("Snapshot završen, frame_buffer popunjen.\n");
}





void DCMI_TestCapture(void)
{
    printUSART2("=== Test DCMI -> direktno čitanje DR ===\n");

    uint32_t timeout = 500000;
    while(timeout--)
    {
        // ako je HSYNC aktivan (linija počinje)
        if (DCMI->SR & DCMI_SR_HSYNC)
        {
            uint32_t data = DCMI->DR;
            if(data != 0)
            {
                printUSART2("Data sa DCMI->DR = 0x%xb\n", data);
            }
        }
    }

    printUSART2("=== Kraj testa ===\n");
}





void OV7670_CaptureSnapshot_VSYNC(void)
{
    printUSART2("=== Početak snapshot capture (VSYNC verzija) ===\n");

    // 1️⃣ Sačekaj VSYNC HIGH (početak novog frame-a)
    printUSART2("Čekanje VSYNC HIGH...\n");
    while (!(GPIOB->IDR & (1 << 7))); // PB7 = VSYNC
    printUSART2("VSYNC HIGH detektovan.\n");

    // 2️⃣ Reset DMA broj transfera i omogući DMA
    DMA2_Stream1->CR &= ~DMA_SxCR_EN;           // disable DMA prije reset
    while (DMA2_Stream1->CR & DMA_SxCR_EN);     // čekaj da se disable završi

    DMA2_Stream1->NDTR = FRAME_MAX / 2;         // broj 32-bitnih riječi
    DMA2_Stream1->CR |= DMA_SxCR_EN;            // enable DMA

    printUSART2("DMA omogućena, NDTR resetovan.\n");

    // 3️⃣ Start DCMI capture (snapshot mode)
    DCMI->CR |= DCMI_CR_CAPTURE;
    printUSART2("DCMI capture startovan.\n");

    // 4️⃣ Čekaj da DMA završi transfer sa timeout-om
    uint32_t timeout = 5000000; 
    while (!(DMA2->LISR & DMA_LISR_TCIF1))
    {
        if (--timeout == 0)
        {
            printUSART2("ERROR: DMA timeout!\n");
            return;
        }
    }

    // Reset TC flag
    DMA2->LIFCR |= DMA_LIFCR_CTCIF1;

    printUSART2("Snapshot završen, frame_buffer popunjen.\n");
}



void OV7670_PrepareForCapture(void)
{
    // 1️⃣ Soft reset DCMI
    DCMI->CR = 0;
    DCMI->SR = 0;
    DCMI->IER = 0;
    DCMI->CR |= DCMI_CR_CM | DCMI_CR_ENABLE;

    // 2️⃣ Soft reset DMA
    DMA2_Stream1->CR &= ~DMA_SxCR_EN;
    while(DMA2_Stream1->CR & DMA_SxCR_EN);
    DMA2->LIFCR |= DMA_LIFCR_CTCIF1;
    DMA2_Stream1->NDTR = FRAME_MAX/2;
    DMA2_Stream1->CR |= DMA_SxCR_EN;

    // 3️⃣ Kamera I2C inicijalizacija i registri
    OV7670_InitQQVGA_RGB565();
}



//void OV7670_PrepareForSnapshot(void)
//{
//    // 1️⃣ Kamera I2C inicijalizacija
//    OV7670_InitQQVGA_RGB565();
//
//    // 2️⃣ Reset + init DCMI
//    DCMI_Init_OV7670_SnapshotOnly();
//
//    // 3️⃣ Reset + init DMA
//    initDMA2_for_OV7670_snapshot((uint32_t*)frame_buffer, FRAME_MAX/2);
//}



//void OV7670_PrepareSnapshot(void)
//{
//    // 1️⃣ Start XCLK
//    OV7670_XCLK_TIM1_init();
//    delay_ms(50);
//
//    // 2️⃣ Init kamera
//    OV7670_InitQQVGA_RGB565();
//    delay_ms(1000);
//
//    // 3️⃣ Init DCMI
//    DCMI_Init_OV7670_SnapshotOnly();
//    delay_ms(100);
//
//    // 4️⃣ Init DMA
//    initDMA2_for_OV7670_snapshot((uint32_t*)frame_buffer, FRAME_MAX/2);
//    DMA2_Stream1->CR |= DMA_SxCR_EN; // enable DMA
//    DMA2->LIFCR |= DMA_LIFCR_CTCIF1; // reset flag
//
//}
//


// ovo je kao generalna funk, ako zelim preko userbtn da radim snapshot
void DCMI_snapshot_debug(volatile uint16_t* buffer, uint16_t frame_size)
{
    printUSART2("=== DCMI FULL DEBUG START ===\n");

    // 1️⃣ Očisti sve DMA flagove pre novog transfera
    DMA2->LIFCR = (DMA_LIFCR_CFEIF1 |
                   DMA_LIFCR_CDMEIF1 |
                   DMA_LIFCR_CTEIF1 |
                   DMA_LIFCR_CHTIF1 |
                   DMA_LIFCR_CTCIF1);

    // 3️⃣ Restartuj NDTR
    DMA2_Stream1->NDTR = frame_size/2;

    // 4️⃣ Enable DMA stream
    DMA2_Stream1->CR |= DMA_SxCR_EN;

    // ovo sve prethodno gore i CM se radi radi toga da bude kao generalna
    // funk, ako budem htio da frame fatamo preko pushBTN ili while petlji

    // 7️⃣ Start DCMI snapshot
    DCMI->CR |= DCMI_CR_CAPTURE | DCMI_CR_CM; // Single frame
//    printUSART2("DCMI capture started\n");


    // 8️⃣ Čekanje dok DMA ne završi transfer sa timeout-om
    uint32_t timeout = 10000000;
    while (!(DMA2->LISR & DMA_LISR_TCIF1) && timeout--) {
        // Periodični debug
        if (timeout % 10000000 == 0) {
            printUSART2("TIMEOUT, DMA nije zavrsio transfer\n");
        }
    }

    if (timeout == 0) {
        printUSART2("ERROR: DMA transfer timeout!\n");
        printUSART2("DMA CR = 0x%x, NDTR = %d\n", DMA2_Stream1->CR, DMA2_Stream1->NDTR);
        printUSART2("DCMI CR = 0x%x, SR = 0x%x\n", DCMI->CR, DCMI->SR);
        return;
    }

    // 9️⃣ Reset flag nakon transfera
    DMA2->LIFCR = DMA_LIFCR_CTCIF1;

    // 1️⃣1️⃣ Provjera ostatka NDTR
    printUSART2("NDTR after capture: %d\n", DMA2_Stream1->NDTR);

    // 1️⃣2️⃣ Provjera DCMI statusa na kraju
    uint32_t sr_end = DCMI->SR;
    printUSART2("DCMI SR end: 0x%x | FIFO empty=%d, VSYNC=%d, HSYNC=%d\n",
                sr_end,
                (sr_end & DCMI_SR_FNE) ? 1 : 0,
                (sr_end & DCMI_SR_VSYNC) ? 1 : 0,
                (sr_end & DCMI_SR_HSYNC) ? 1 : 0);

//    DCMI->CR &= ~DCMI_CR_CAPTURE;
    printUSART2("=== Snapshot complete ===\n");
}




void DCMI_start_continuous_mode()
{

    DCMI->CR |= DCMI_CR_CAPTURE;
}



















void DCMI_snapshot_debug_full(volatile uint16_t* buffer, uint16_t frame_size)
{
    printUSART2("=== DCMI FULL DEBUG START ===\n");

    // 1️⃣ Očisti sve DMA flagove pre novog transfera
    DMA2->LIFCR = (DMA_LIFCR_CFEIF1 |
                   DMA_LIFCR_CDMEIF1 |
                   DMA_LIFCR_CTEIF1 |
                   DMA_LIFCR_CHTIF1 |
                   DMA_LIFCR_CTCIF1);

    // 3️⃣ Restartuj NDTR
    DMA2_Stream1->NDTR = frame_size/2;

    // 4️⃣ Enable DMA stream
    DMA2_Stream1->CR |= DMA_SxCR_EN;

    // 7️⃣ Start DCMI snapshot
    DCMI->CR |= DCMI_CR_CAPTURE | DCMI_CR_CM; // Single frame

    // 8️⃣ Čekanje dok DMA ne završi transfer sa timeout-om
    uint32_t timeout = 10000000;
    while (!(DMA2->LISR & DMA_LISR_TCIF1) && timeout--) {}

    if (timeout == 0) {
        printUSART2("ERROR: DMA transfer timeout!\n");
        return;
    }

    // 9️⃣ Reset flag nakon transfera
    DMA2->LIFCR = DMA_LIFCR_CTCIF1;

    DCMI->CR &= ~DCMI_CR_CAPTURE;

    // 1️⃣1️⃣ Provjera ostatka NDTR
    printUSART2("NDTR after capture: %d\n", DMA2_Stream1->NDTR);

    // 1️⃣2️⃣ Provjera DCMI statusa na kraju
    uint32_t sr_end   = DCMI->SR;
    uint32_t risr_end = DCMI->RISR;
    uint32_t misr_end = DCMI->MISR;

    printUSART2("DCMI SR   : 0x%xw | FNE=%d VSYNC=%d HSYNC=%d\n",
                sr_end,
                (sr_end & DCMI_SR_FNE) ? 1 : 0,
                (sr_end & DCMI_SR_VSYNC) ? 1 : 0,
                (sr_end & DCMI_SR_HSYNC) ? 1 : 0);

    printUSART2("DCMI RISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d LINE=%d\n",
                risr_end,
                (risr_end & DCMI_RISR_FRAME_RIS) ? 1 : 0,
                (risr_end & DCMI_RISR_OVF_RIS)   ? 1 : 0,
                (risr_end & DCMI_RISR_ERR_RIS)   ? 1 : 0,
                (risr_end & DCMI_RISR_VSYNC_RIS) ? 1 : 0,
                (risr_end & DCMI_RISR_LINE_RIS)  ? 1 : 0);

    printUSART2("DCMI MISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d LINE=%d\n",
                misr_end,
                (misr_end & DCMI_MISR_FRAME_MIS) ? 1 : 0,
                (misr_end & DCMI_MISR_OVF_MIS)   ? 1 : 0,
                (misr_end & DCMI_MISR_ERR_MIS)   ? 1 : 0,
                (misr_end & DCMI_MISR_VSYNC_MIS) ? 1 : 0,
                (misr_end & DCMI_MISR_LINE_MIS)  ? 1 : 0);

    // 🔹 DMA debug
    printUSART2("DMA2 Stream1 CR = 0x%xw | NDTR = %d\n",
                DMA2_Stream1->CR, DMA2_Stream1->NDTR);
    printUSART2("DMA2 LISR = 0x%xw\n", DMA2->LISR);

    printUSART2("=== Snapshot complete ===\n");
}


