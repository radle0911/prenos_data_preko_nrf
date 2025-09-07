#include "dcmi.h"
#include "stm32f4xx.h"
#include "../usart/usart.h"
#include <stdint.h>



// Ova dva niza koristimo za circular mode double buffer
volatile uint16_t frame_buffer0[IMG_W*IMG_H]; // 160*120 = 19 200
volatile uint16_t frame_buffer1[IMG_W*IMG_H]; // 160*120 = 19 200


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

            GPIOA->MODER &= ~0x00003000;   // clear PA6 mode
            GPIOA->MODER |=  0x00002000;   // set PA6 to AF mode
            GPIOA->AFR[0] &= ~0x0F000000;  // clear AF nibble for PA6
            GPIOA->AFR[0] |=  0x0D000000;  // set AF13 for PA6

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





// ovo je kao generalna funk, ako zelim preko userbtn da radim snapshot
// ZA SNAPSHOT FUNKCIJA
void DCMI_snapshot_debug(volatile uint16_t* buffer, uint16_t frame_size)
{
    printUSART2("=== DCMI FULL DEBUG START ===\n");

    // cistimo sve DMA flagove prije novog transfera
    DMA2->LIFCR = (DMA_LIFCR_CFEIF1 |
                   DMA_LIFCR_CDMEIF1 |
                   DMA_LIFCR_CTEIF1 |
                   DMA_LIFCR_CHTIF1 |
                   DMA_LIFCR_CTCIF1);

    //NDTR restart
    DMA2_Stream1->NDTR = frame_size/2;

    // enable DMA stream
    DMA2_Stream1->CR |= DMA_SxCR_EN;

    // ovo sve prethodno gore i CM se radi zbog toga da bude kao generalna
    // funk, ako budem htio da frame uzimamo preko pushBTN ili while petlji

    // Start DCMI snapshot
    DCMI->CR |= DCMI_CR_CAPTURE | DCMI_CR_CM; // Single frame
//    printUSART2("DCMI capture started\n");


    // cekanje dok DMA ne zavrsi transfer sa timeout-om
    uint32_t timeout = 10000000;
    while (!(DMA2->LISR & DMA_LISR_TCIF1) && timeout--) {

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

    // reset flag nakon transfera
    DMA2->LIFCR = DMA_LIFCR_CTCIF1;

    // Provjera ostatka NDTR
    printUSART2("NDTR after capture: %d\n", DMA2_Stream1->NDTR);

    // Provjera DCMI statusa na kraju
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




