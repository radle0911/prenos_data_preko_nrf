#include "check.h"
#include "../usart/usart.h"
#include "../delay/delay.h"
#include "../ov7670/ov7670_reg.h"
#include "../i2c/i2c.h"
#include "../nRF24L01/nRF24L01.h"
#include "../dma/dma.h"
#include "../DCMI/dcmi.h"
#include "../ov7670/ov7670.h"
#include "stm32f4xx.h"
#include <stdint.h>
#include <stddef.h>  // definira NULL

void OV7670_CheckPins_Interval(uint32_t interval_ms) 
{
    uint32_t start = getSYSTIMER_TIM7(); // trenutni čas u ms

    // Trenutni status pinova
    uint8_t pclk_high = 0, hsync_high = 0, vsync_high = 0;
    uint8_t d0_high = 0, d1_high = 0, d2_high = 0, d3_high = 0;
    uint8_t d4_high = 0, d5_high = 0, d6_high = 0, d7_high = 0;

    // Historija pinova tokom intervala
    uint8_t pclk_seen_high = 0, pclk_seen_low = 0;
    uint8_t hsync_seen_high = 0, hsync_seen_low = 0;
    uint8_t vsync_seen_high = 0, vsync_seen_low = 0;
    uint8_t d0_seen_high = 0, d1_seen_high = 0, d2_seen_high = 0, d3_seen_high = 0;
    uint8_t d4_seen_high = 0, d5_seen_high = 0, d6_seen_high = 0, d7_seen_high = 0;
    uint8_t d0_seen_low = 0, d1_seen_low = 0, d2_seen_low = 0, d3_seen_low = 0;
    uint8_t d4_seen_low = 0, d5_seen_low = 0, d6_seen_low = 0, d7_seen_low = 0;

    while ((getSYSTIMER_TIM7() - start) < interval_ms) 
    {
        uint32_t idrA = GPIOA->IDR;
        uint32_t idrB = GPIOB->IDR;
        uint32_t idrC = GPIOC->IDR;
        uint32_t idrD = GPIOD->IDR;
        uint32_t idrE = GPIOE->IDR;

        // PCLK - PA6
        if (idrA & GPIO_IDR_IDR_6) { pclk_high = 1; pclk_seen_high = 1; } 
        else { pclk_high = 0; pclk_seen_low = 1; }

        // HSYNC - PA4
        if (idrA & GPIO_IDR_IDR_4) { hsync_high = 1; hsync_seen_high = 1; } 
        else { hsync_high = 0; hsync_seen_low = 1; }

        // VSYNC - PB7
        if (idrB & GPIO_IDR_IDR_7) { vsync_high = 1; vsync_seen_high = 1; } 
        else { vsync_high = 0; vsync_seen_low = 1; }

        // D0-D7
        d0_high = (idrA & GPIO_IDR_IDR_9) ? 1 : 0;  d0_seen_high |= d0_high; d0_seen_low |= !d0_high;
        d1_high = (idrA & GPIO_IDR_IDR_10) ? 1 : 0; d1_seen_high |= d1_high; d1_seen_low |= !d1_high;
        d2_high = (idrC & GPIO_IDR_IDR_8) ? 1 : 0;  d2_seen_high |= d2_high; d2_seen_low |= !d2_high;
        d3_high = (idrC & GPIO_IDR_IDR_9) ? 1 : 0;  d3_seen_high |= d3_high; d3_seen_low |= !d3_high;
        d4_high = (idrE & GPIO_IDR_IDR_4) ? 1 : 0;  d4_seen_high |= d4_high; d4_seen_low |= !d4_high;
        d5_high = (idrD & GPIO_IDR_IDR_3) ? 1 : 0;  d5_seen_high |= d5_high; d5_seen_low |= !d5_high;
        d6_high = (idrE & GPIO_IDR_IDR_5) ? 1 : 0;  d6_seen_high |= d6_high; d6_seen_low |= !d6_high;
        d7_high = (idrE & GPIO_IDR_IDR_6) ? 1 : 0;  d7_seen_high |= d7_high; d7_seen_low |= !d7_high;
    }

    // Ispis rezultata
    printUSART2("---- OV7670 Pinovi tokom %d ms ----\n", interval_ms);
    printUSART2("PCLK  : %s\n", pclk_high ? "HIGH" : "LOW");
    printUSART2("PCLK ever HIGH : %s\n", pclk_seen_high ? "YES" : "NO");
    printUSART2("PCLK ever LOW  : %s\n", pclk_seen_low ? "YES" : "NO");

    printUSART2("HSYNC : %s\n", hsync_high ? "HIGH" : "LOW");
    printUSART2("HSYNC ever HIGH : %s\n", hsync_seen_high ? "YES" : "NO");
    printUSART2("HSYNC ever LOW  : %s\n", hsync_seen_low ? "YES" : "NO");

    printUSART2("VSYNC : %s\n", vsync_high ? "HIGH" : "LOW");
    printUSART2("VSYNC ever HIGH : %s\n", vsync_seen_high ? "YES" : "NO");
    printUSART2("VSYNC ever LOW  : %s\n", vsync_seen_low ? "YES" : "NO");

    printUSART2("D0    : %s\n", d0_high ? "HIGH" : "LOW");
    printUSART2("D0 ever HIGH : %s\n", d0_seen_high ? "YES" : "NO");
    printUSART2("D0 ever LOW  : %s\n", d0_seen_low ? "YES" : "NO");

    printUSART2("D1    : %s\n", d1_high ? "HIGH" : "LOW");
    printUSART2("D1 ever HIGH : %s\n", d1_seen_high ? "YES" : "NO");
    printUSART2("D1 ever LOW  : %s\n", d1_seen_low ? "YES" : "NO");

    printUSART2("D2    : %s\n", d2_high ? "HIGH" : "LOW");
    printUSART2("D2 ever HIGH : %s\n", d2_seen_high ? "YES" : "NO");
    printUSART2("D2 ever LOW  : %s\n", d2_seen_low ? "YES" : "NO");

    printUSART2("D3    : %s\n", d3_high ? "HIGH" : "LOW");
    printUSART2("D3 ever HIGH : %s\n", d3_seen_high ? "YES" : "NO");
    printUSART2("D3 ever LOW  : %s\n", d3_seen_low ? "YES" : "NO");

    printUSART2("D4    : %s\n", d4_high ? "HIGH" : "LOW");
    printUSART2("D4 ever HIGH : %s\n", d4_seen_high ? "YES" : "NO");
    printUSART2("D4 ever LOW  : %s\n", d4_seen_low ? "YES" : "NO");

    printUSART2("D5    : %s\n", d5_high ? "HIGH" : "LOW");
    printUSART2("D5 ever HIGH : %s\n", d5_seen_high ? "YES" : "NO");
    printUSART2("D5 ever LOW  : %s\n", d5_seen_low ? "YES" : "NO");

    printUSART2("D6    : %s\n", d6_high ? "HIGH" : "LOW");
    printUSART2("D6 ever HIGH : %s\n", d6_seen_high ? "YES" : "NO");
    printUSART2("D6 ever LOW  : %s\n", d6_seen_low ? "YES" : "NO");

    printUSART2("D7    : %s\n", d7_high ? "HIGH" : "LOW");
    printUSART2("D7 ever HIGH : %s\n", d7_seen_high ? "YES" : "NO");
    printUSART2("D7 ever LOW  : %s\n", d7_seen_low ? "YES" : "NO");

    printUSART2("------------------------------------\n");
    printUSART2("GPIOA: MODER-[0x%X], AFR-[0x%X], IDR[0x%X]\n", GPIOA->MODER, GPIOA->AFR[1], GPIOA->IDR);
    printUSART2("------------------------------------\n");
}


void OV7670_TestPins(uint32_t duration_ms, uint32_t interval_ms) 
{
    uint32_t vsync_cnt = 0;
    uint32_t start = getSYSTIMER_TIM7(); // sistemski timer

    while ((getSYSTIMER_TIM7() - start) < duration_ms) 
    {
        // Čitanje D0-D7
        uint8_t d0 = (GPIOA->IDR & (1 << 9))  ? 1 : 0;  // D0 = PA9
        uint8_t d1 = (GPIOA->IDR & (1 << 10)) ? 1 : 0;  // D1 = PA10
        uint8_t d2 = (GPIOC->IDR & (1 << 8))  ? 1 : 0;  // D2 = PC8
        uint8_t d3 = (GPIOC->IDR & (1 << 9))  ? 1 : 0;  // D3 = PC9
        uint8_t d4 = (GPIOE->IDR & (1 << 4))  ? 1 : 0;  // D4 = PE4
        uint8_t d5 = (GPIOD->IDR & (1 << 3))  ? 1 : 0;  // D5 = PD3
        uint8_t d6 = (GPIOE->IDR & (1 << 5))  ? 1 : 0;  // D6 = PE5
        uint8_t d7 = (GPIOE->IDR & (1 << 6))  ? 1 : 0;  // D7 = PE6

        // Čitanje PCLK, HSYNC, VSYNC
        uint8_t pclk  = (GPIOA->IDR & (1 << 6)) ? 1 : 0;  // PCLK = PA6
        uint8_t hsync = (GPIOA->IDR & (1 << 4)) ? 1 : 0;  // HSYNC = PA4
        uint8_t vsync = (GPIOB->IDR & (1 << 7)) ? 1 : 0;  // VSYNC = PB7
        // Ispis stanja pinova
        printUSART2("D0-D7: %d %d %d %d %d %d %d %d | PCLK: %d | HSYNC: %d | VSYNC: %d\n",
            d0, d1, d2, d3, d4, d5, d6, d7, pclk, hsync, vsync);

        delay_ms(interval_ms);
    }
} // Primer poziva: OV7670_TestPins(5000, 100);




int verify_DMA2_for_OV7670(uint16_t* buff0, uint32_t tsize)
{
    int ok = 1;

    // 1) Clock enabled?
    if (!(RCC->AHB1ENR & RCC_AHB1ENR_DMA2EN)) {
        printUSART2("ERROR: DMA2 clock not enabled!\n");
        ok = 0;
    }

    // 2) Peripheral address check
    if (DMA2_Stream1->PAR != (uint32_t)&DCMI->DR) {
        printUSART2("ERROR: DMA2 PAR wrong (0x%xb)\n", DMA2_Stream1->PAR);
        ok = 0;
    }

    // 3) Memory address check
    if (DMA2_Stream1->M0AR != (uint32_t)buff0) {
        printUSART2("ERROR: DMA2 M0AR wrong (0x%xb)\n", DMA2_Stream1->M0AR);
        ok = 0;
    }

    // 4) Transfer size check
    if (DMA2_Stream1->NDTR != tsize) {
        printUSART2("ERROR: DMA2 NDTR wrong (%xb)\n", DMA2_Stream1->NDTR);
        ok = 0;
    }

    // 5) CR bits check
    uint32_t cr = DMA2_Stream1->CR;

    if (((cr >> 25) & 0x7) != 1) { // CHSEL = 001
        printUSART2("ERROR: DMA2 channel not set to 1!\n");
        ok = 0;
    }

    if (!(cr & DMA_SxCR_MINC)) {
        printUSART2("ERROR: DMA2 MINC not set!\n");
        ok = 0;
    }

    if (!((cr & DMA_SxCR_DIR_0) && !(cr & DMA_SxCR_DIR_1))) {
        printUSART2("ERROR: DMA2 not configured as peripheral-to-memory!\n");
        ok = 0;
    }

    if (!((cr & DMA_SxCR_PSIZE_0) && !(cr & DMA_SxCR_PSIZE_1))) {
        printUSART2("ERROR: DMA2 PSIZE not 16-bit!\n");
        ok = 0;
    }

    if (!((cr & DMA_SxCR_MSIZE_0) && !(cr & DMA_SxCR_MSIZE_1))) {
        printUSART2("ERROR: DMA2 MSIZE not 16-bit!\n");
        ok = 0;
    }

    if (!(cr & DMA_SxCR_PL)) {
        printUSART2("ERROR: DMA2 priority not very high!\n");
        ok = 0;
    }

    if (!(cr & DMA_SxCR_EN)) {
        printUSART2("ERROR: DMA2 stream not enabled!\n");
        ok = 0;
    }

    if (ok) {
        printUSART2("DMA2_Stream1 configuration OK!\n");
    }

    return ok;
}


// lista registara koje odmah procitaj i ispisi
const uint8_t regs_to_check[] = {
    OV7670_REG_COM7,    // 0x12
    OV7670_REG_CLKRC,   // 0x11
    OV7670_REG_DBLV,    // 0x6B
    OV7670_REG_COM15,   // 0x40
    OV7670_REG_SCALING_PCLK_DIV, // 0xA2
    OV7670_REG_SCALING_PCLK_DELAY // 0xA3
};

void dump_ov7670_regs(void) {
    uint8_t buf[1];
    for (int i = 0; i < (int)(sizeof(regs_to_check)/sizeof(regs_to_check[0])); ++i) {
        readI2C(regs_to_check[i], buf, 1);
        printUSART2("REG 0x%xb = 0x%xb\n", regs_to_check[i], buf[0]);
        delay_ms(2);
    }
}

// ---------------------- za provjeru registara

const OV7670_RegCheck regs_to_verify[] = {
    {OV7670_REG_COM7, 0x03, "COM7"},
    {OV7670_REG_CLKRC, 0x01, "CLKRC"},
    {OV7670_REG_DBLV, 0x4A, "DBLV"},
    {OV7670_REG_COM15, 0x00, "COM15"},
    {OV7670_REG_SCALING_PCLK_DIV, 0xF1, "SCALING_PCLK_DIV"},
    {OV7670_REG_SCALING_PCLK_DELAY, 0x02, "SCALING_PCLK_DELAY"},
    {OV7670_REG_HSTART, 0x16, "HSTART"},
    {OV7670_REG_HSTOP, 0x04, "HSTOP"},
    {OV7670_REG_HREF, 0x80, "HREF"},
    {OV7670_REG_VSTART, 0x02, "VSTART"},
    {OV7670_REG_VSTOP, 0x7A, "VSTOP"},
    {OV7670_REG_VREF, 0x0A, "VREF"},
    {OV7670_REG_SCALING_XSC, 0x3A, "SCALING_XSC"},
    {OV7670_REG_SCALING_YSC, 0x35, "SCALING_YSC"},
    {OV7670_REG_SCALING_DCWCTR, 0x11, "SCALING_DCWCTR"},
};

void verify_ov7670_regs(void)
{
    uint8_t buf[1];
    uint16_t i = 0;   // koristi uint16_t za veću tabelu
    uint32_t retry;

    // Mali delay da se reset kamere stabilizuje
    delay_ms(100);

    for(i = 0;; i++) {
        uint8_t reg = ov7670_qqvga_rgb565[i].reg;
        uint8_t expected = ov7670_qqvga_rgb565[i].val;

        // kraj tabele
        if (reg == 0xFF && expected == 0xFF ) break;

        if (reg == 0xFF) {
            // samo delay marker, nastavi na sledeći element
            delay_ms(100);
            continue;
        }

        // COM7 posle reset-a očekuje 0x00
        if (reg == OV7670_REG_COM7) expected = 0x00;

        // retry loop za čitanje registra
        retry = 3; // probaj max 3 puta
        while (retry--) {
            readI2C(reg, buf, 1);
            if (buf[0] == expected) break; // uspešno očitano
            delay_ms(1);
        }

        if (buf[0] == expected) {
            printUSART2("OK:   reg 0x%xb = 0x%xb\n", reg, buf[0]);
        } else {
            printUSART2("ERROR: reg 0x%xb = 0x%xb, expected 0x%xb\n",
                        reg, buf[0], expected);
        }

        delay_ms(2); // mali delay da ne blokira bus
    }

    printUSART2("OV7670 -> verify regs zavrsen!\n");
}


// ---------------------- za provjeru registara



void DCMI_CaptureFrame_Debug(void)
{
    // Očisti sve flagove
    DCMI->ICR = 0x1F;

    // Debug: ispis registara pre capture
    printUSART2("=== DCMI Debug Start ===\n");
    printUSART2("CR  = 0x%xb\n", DCMI->CR);
    printUSART2("CWSIZE = 0x%xb\n", DCMI->CWSIZER);
    printUSART2("CWSTRTR = 0x%xb\n", DCMI->CWSTRTR);
    printUSART2("SR  = 0x%xb\n", DCMI->SR);
    printUSART2("MISR = 0x%xb\n", DCMI->MISR);

    // Uključi capture
    DCMI->CR |= DCMI_CR_CAPTURE;
    printUSART2("Capture enabled: CR = 0x%xb\n", DCMI->CR);

    // Opcioni timeout da ne blokira MCU
    uint32_t timeout = 1000000;
    uint32_t counter = 0;

    while (!(DCMI->MISR & DCMI_MISR_FRAME_MIS) && timeout--)
    {
        counter++;
        if (counter > 100000)
        {
            counter = 0;
            // Debug ispisi sve bitove MISR i CR
            printUSART2("MISR = 0x%xb, CR = 0x%xb\n", DCMI->MISR, DCMI->CR);

            // Opcionalno: ispis D0-D7, PCLK, HSYNC, VSYNC pinova
            printUSART2("Pins: D0-D7: %d %d %d %d %d %d %d %d | PCLK: %d | HSYNC: %d | VSYNC: %d\n",
                        (GPIOA->IDR>>9)&1, (GPIOA->IDR>>10)&1, (GPIOB->IDR>>0)&1, (GPIOB->IDR>>1)&1,
                        (GPIOB->IDR>>2)&1, (GPIOB->IDR>>3)&1, (GPIOC->IDR>>6)&1, (GPIOC->IDR>>7)&1,
                        (GPIOA->IDR>>6)&1, (GPIOB->IDR>>4)&1, (GPIOB->IDR>>5)&1);
        }
        __NOP();
    }

    if(timeout == 0)
        printUSART2("ERROR: Capture timeout!\n");

    // Debug: ispisi MISR i CR posle capture
    printUSART2("After capture: MISR = 0x%xb, CR = 0x%xb\n", DCMI->MISR, DCMI->CR);
    printUSART2("=== DCMI Debug End ===\n");
}



void verify_full_frame_buffer(uint16_t* buf, uint32_t size)
{
    uint32_t i;
    uint32_t error_count = 0;

    for(i = 0; i < size; i++)
    {
        // Ako je pixel 0x0000, smatraj ga nepopunjenim
        if(buf[i] == 0)
        {
            error_count++;
            printUSART2("Pixel %d = 0x%xb (empty)\n", i, buf[i]);
        }
        else
        {
            printUSART2("Pixel %d = 0x%xb\n", i, buf[i]);
        }
    }

    printUSART2("Frame verification done: %d empty pixels out of %d\n", error_count, size);
}



void DCMI_DebugStatus(void)
{
    uint32_t sr = DCMI->SR;
    printUSART2("DCMI_SR: 0x%xb, VSYNC=%d, HSYNC=%d, FNE=%d\n",
                sr,
                (sr & DCMI_SR_VSYNC) ? 1 : 0,
                (sr & DCMI_SR_HSYNC) ? 1 : 0,
                (sr & DCMI_SR_FNE) ? 1 : 0);
}






void OV7670_CheckRegisters(void)
{
    uint8_t reg_list[] = {
        OV7670_REG_COM7,
        OV7670_REG_CLKRC,
 //       OV7670_REG_COM14,
        OV7670_REG_COM3,
        OV7670_REG_SCALING_DCWCTR,
        OV7670_REG_SCALING_XSC,
        OV7670_REG_SCALING_YSC,
        OV7670_REG_SCALING_PCLK_DIV,
        OV7670_REG_SCALING_PCLK_DELAY,
        OV7670_REG_COM15,
        OV7670_REG_COM10,
        OV7670_REG_COM8
    };

    uint8_t val;

    uint8_t expected[] = {
        OV7670_REG_COM7_FMT_RGB,                          // COM7 = 0x04
        OV7670_CLKRC_DIV1,                                // CLKRC = 0x01
        0x00,                                             // COM3
        0x00,                                             // SCALING_DCWCTR
        0x00,                                             // SCALING_XSC
        0x00,                                             // SCALING_YSC
        0x00,                                             // SCALING_PCLK_DIV
        0x00,                                             // SCALING_PCLK_DELAY
        (OV7670_COM15_RGB565 | OV7670_COM15_FULL_RANGE),  // COM15 = 0xD0
        (OV7670_COM10_VSYNC_POS | OV7670_COM10_PCLK_FALL),// COM10 = 0x20
        (OV7670_REG_COM8_FASTAEC | OV7670_REG_COM8_AECSTEP | 
         OV7670_REG_COM8_BFILT   | OV7670_REG_COM8_AGC     | 
         OV7670_REG_COM8_AWB     | OV7670_REG_COM8_AEC)   // COM8 = 0xE7
    };
    // ovo je za prvi init od camere
//    uint8_t expected[] = {
//        OV7670_REG_COM7_FMT_RGB,                          // COM7
//        OV7670_CLKRC_DIV1,                                // CLKRC
//    //    0x1A,                                             // COM14
//        OV7670_COM3_DCW_EN,                               // COM3
//        0x22,                                             // SCALING_DCWCTR
//        0x3A,                                             // SCALING_XSC
//        0x35,                                             // SCALING_YSC
//        0xF2,                                             // SCALING_PCLK_DIV
//        0x02,                                             // SCALING_PCLK_DELAY
//        (OV7670_COM15_RGB565 | OV7670_COM15_FULL_RANGE),  // COM15
//        (OV7670_COM10_VSYNC_POS | OV7670_COM10_PCLK_FALL),// COM10
//        (OV7670_REG_COM8_FASTAEC | OV7670_REG_COM8_AECSTEP | 
//         OV7670_REG_COM8_BFILT   | OV7670_REG_COM8_AGC     | 
//         OV7670_REG_COM8_AWB     | OV7670_REG_COM8_AEC)   // COM8
//    };

    printUSART2("\n--- OV7670 Register Check ---\n");

    for (uint8_t i = 0; i < sizeof(reg_list); i++) 
    {
        readI2C(reg_list[i], &val, 1);

        printUSART2("Reg 0x%xb -> Read: 0x%xb | Expected: 0x%xb %s\n",
            reg_list[i],
            val,
            expected[i],
            (val == expected[i]) ? "[OK]" : "[MISMATCH]"
        );
    }

    printUSART2("--- End of check ---\n\n");
}



void OV7670_CheckPins_Interval_V2(uint32_t interval_ms) 
{
    uint32_t start = getSYSTIMER_TIM7();
    uint8_t pclk_high = 0, pclk_low = 0;
    uint8_t vsync_high = 0, vsync_low = 0;
    uint8_t hsync_high = 0, hsync_low = 0;
    uint8_t d_seen_high[8] = {0}, d_seen_low[8] = {0};

    while ((getSYSTIMER_TIM7() - start) < interval_ms) 
    {
        uint32_t idrA = GPIOA->IDR;
        uint32_t idrB = GPIOB->IDR;
        uint32_t idrC = GPIOC->IDR;
        uint32_t idrD = GPIOD->IDR;
        uint32_t idrE = GPIOE->IDR;

        // Sync signali
        if (idrA & (1 << 6)) pclk_high = 1; else pclk_low = 1;
        if (idrA & (1 << 4)) hsync_high = 1; else hsync_low = 1;
        if (idrB & (1 << 7)) vsync_high = 1; else vsync_low = 1;

        // Data pinovi
        uint8_t d[8];
        d[0] = (idrA >> 9) & 1;
        d[1] = (idrA >> 10) & 1;
        d[2] = (idrC >> 8) & 1;
        d[3] = (idrC >> 9) & 1;
        d[4] = (idrE >> 4) & 1;
        d[5] = (idrD >> 3) & 1;
        d[6] = (idrE >> 5) & 1;
        d[7] = (idrE >> 6) & 1;

        for (int i = 0; i < 8; i++) {
            if (d[i]) d_seen_high[i] = 1;
            else d_seen_low[i] = 1;
        }
    }

    // Ispis rezultata
    printUSART2("---- OV7670 pin monitoring %d ms ----\n", interval_ms);
    printUSART2("PCLK  : seen HIGH=%d, LOW=%d\n", pclk_high, pclk_low);
    printUSART2("HSYNC : seen HIGH=%d, LOW=%d\n", hsync_high, hsync_low);
    printUSART2("VSYNC : seen HIGH=%d, LOW=%d\n", vsync_high, vsync_low);

    for (int i = 0; i < 8; i++) {
        printUSART2("D%d    : seen HIGH=%d, LOW=%d\n", i, d_seen_high[i], d_seen_low[i]);
    }
    printUSART2("--------------------------------------\n");
}



//void printFrameBuffer(uint32_t n)
//{
//    for (uint32_t i = 0; i < n; i++)
//    {
//        printUSART2("Pixel %d: 0x%xb\n", i, frame_buffer[i]);
//    }
//}
//
//
//
//void debugFrameBuffer(void)
//{
//    printUSART2("=== DEBUG FRAME BUFFER ===\n");
//
//    // 1️⃣ Prvih 10 pixela
//    printUSART2("Prvih 10 pixela:\n");
//    for (uint32_t i = 0; i < 10; i++)
//        printUSART2("Pixel %d: 0x%xb\n", i, frame_buffer[i]);
//
//    // 2️⃣ Zadnjih 10 pixela
//    printUSART2("Zadnjih 10 pixela:\n");
//    for (uint32_t i = (FRAME_MAX/2 - 10); i < FRAME_MAX/2; i++)
//        printUSART2("Pixel %d: 0x%xb\n", i, frame_buffer[i]);
//
//    // 3️⃣ Ispis trenutnog stanja pinova
//    uint8_t d0 = (GPIOA->IDR & (1 << 9)) ? 1 : 0;
//    uint8_t d1 = (GPIOA->IDR & (1 << 10)) ? 1 : 0;
//    uint8_t pclk = (GPIOA->IDR & (1 << 6)) ? 1 : 0;
//    uint8_t hsync = (GPIOA->IDR & (1 << 4)) ? 1 : 0;
//    uint8_t vsync = (GPIOB->IDR & (1 << 7)) ? 1 : 0;
//
//    printUSART2("Pins: D0=%d D1=%d PCLK=%d HSYNC=%d VSYNC=%d\n", d0, d1, pclk, hsync, vsync);
//
//    printUSART2("==========================\n");
//}
//
//
//
//void printNonZeroPixels(void)
//{
//    int count = 0;
//    for(uint32_t i=0; i<FRAME_MAX/2; i++) {
//        if(frame_buffer[i] != 0) {
//            printUSART2("frame_buffer[%d] = 0x%xb\n", i, frame_buffer[i]);
//            count++;
//        }
//    }
//    printUSART2("Ukupno non-zero elemenata = %d\n", count);
//}
//



void OV7670_Test_ReadFrame(void)
{
    printUSART2("=== Test: direktno citanje DCMI->DR ===\n");

    // 1️⃣ Reset DCMI capture
    DCMI->CR &= ~DCMI_CR_CAPTURE;
    DCMI->ICR = 0x1F; // clear sve evente (FRAME, OVR, ERR...)

    // 2️⃣ Start snapshot capture
    DCMI->CR |= DCMI_CR_CAPTURE;

    uint32_t count = 0;
    uint32_t timeout = 5000000;

    while (!(DCMI->RISR & DCMI_RISR_FRAME_RIS)) // čekaj FRAME
    {
        if (--timeout == 0)
        {
            printUSART2("ERROR: Nema FRAME signala!\n");
            return;
        }
    }

    // 3️⃣ Čitanje podataka iz DCMI data registera
    //    FIFO se prazni kad čitaš DR
    count = 0;
    while (DCMI->SR & DCMI_SR_FNE)  // dok FIFO nije prazan
    {
        uint32_t data = DCMI->DR;   // pročitaj 32 bita (dva piksela RGB565)
        printUSART2("[%lu] data = 0x%08lx\n", count, data);

        count++;
        if (count >= 50) break;  // ispisi samo prvih 50 riječi
    }

    printUSART2("Ukupno procitano rijeci = %lu\n", count);
}




void OV7670_TestPolarityCombos(void)
{
    printUSART2("=== Test: VSYNC/PCLK polariteti ===\n");

    // 4 kombinacije (VSYNC × PCLK)
    for (int vs = 0; vs < 2; vs++) {
        for (int pck = 0; pck < 2; pck++) {

            // Reset DCMI
            RCC->AHB2RSTR |= RCC_AHB2RSTR_DCMIRST;
            RCC->AHB2RSTR &= ~RCC_AHB2RSTR_DCMIRST;

            // Init DCMI sa datim kombinacijama
            DCMI->CR = 0;
            DCMI->CR |= DCMI_CR_ENABLE;   // enable peripheral
            DCMI->CR |= DCMI_CR_CM;       // snapshot mode
            DCMI->CR |= DCMI_CR_HSPOL;    // HSYNC HIGH active (ostavi ovako)

            if (vs) DCMI->CR |=  DCMI_CR_VSPOL;  // VSYNC HIGH
            else    DCMI->CR &= ~DCMI_CR_VSPOL;  // VSYNC LOW

            if (pck) DCMI->CR |=  DCMI_CR_PCKPOL; // PCLK rising
            else     DCMI->CR &= ~DCMI_CR_PCKPOL; // PCLK falling

            // --- Snapshot test ---
            printUSART2("\n[Kombinacija] VSYNC=%s, PCLK=%s\n",
                vs ? "HIGH" : "LOW",
                pck ? "RISING" : "FALLING");

            // Start capture
            DCMI->CR |= DCMI_CR_CAPTURE;

            // Timeout čekanje na FRAME
            uint32_t timeout = 1000000;
            while (!(DCMI->MISR & DCMI_MISR_FRAME_MIS) && --timeout);

            if (timeout == 0) {
                printUSART2(" -> Nema FRAME signala!\n");
                continue;
            }

            // Čisti flag
            DCMI->ICR |= DCMI_ICR_FRAME_ISC;

            // Pročitaj par piksela iz FIFO
            int nonzero = 0;
            for (int i = 0; i < 20; i++) {
                while (!(DCMI->SR & DCMI_SR_FNE));  // čekaj dok FIFO nije prazan
                uint32_t d = DCMI->DR;
                if (d) {
                    nonzero++;
                    printUSART2(" Pix[%d] = 0x%08X\n", i, d);
                }
            }

            if (nonzero > 0)
                printUSART2(" ✅ Ova kombinacija daje podatke!\n");
            else
                printUSART2(" ❌ FRAME došao ali svi pikseli nula!\n");
        }
    }

    printUSART2("\n=== Test završen ===\n");
}




void OV7670_TestFIFO(void)
{
    printUSART2("=== Test: DCMI FIFO (ignorisi FRAME) ===\n");

    // 1. Disable pa enable DCMI
    DCMI->CR &= ~DCMI_CR_ENABLE;
    DCMI->CR = 0;
    DCMI->CR |= DCMI_CR_CM;   // Snapshot mode
    DCMI->CR |= DCMI_CR_ENABLE;

    // 2. Start capture
    DCMI->CR |= DCMI_CR_CAPTURE;
    printUSART2("DCMI capture startovan.\n");

    // 3. Pollaj FIFO (FNE flag u SR registru)
    uint32_t timeout = 1000000;
    int gotData = 0;

    while (timeout--)
    {
        if (DCMI->SR & DCMI_SR_FNE)   // FIFO Not Empty?
        {
            uint32_t pix = DCMI->DR;  // procitaj jedan podatak
            printUSART2("FIFO DATA = 0x%xb\n", pix & 0xFFFF);
            gotData = 1;
            break;
        }
    }

    if (!gotData)
        printUSART2("ERROR: FIFO je uvijek prazan! Nema podataka sa kamere.\n");
    else
        printUSART2("OK: Kamera salje piksele (FIFO radi).\n");
}


void OV7670_VerifyRegisters(void)
{
    struct {
        uint8_t reg;
        uint8_t expected;
        const char* name;
    } registers[] = {
        {OV7670_REG_COM7, OV7670_REG_COM7_FMT_RGB, "COM7"},
        {OV7670_REG_CLKRC, OV7670_CLKRC_DIV3, "CLKRC"},
        {OV7670_REG_COM3, OV7670_COM3_DCW_EN, "COM3"},
        {OV7670_REG_SCALING_DCWCTR, 0x22, "SCALING_DCWCTR"},
        {OV7670_REG_SCALING_XSC, 0x3A, "SCALING_XSC"},
        {OV7670_REG_SCALING_YSC, 0x35, "SCALING_YSC"},
        {OV7670_REG_SCALING_PCLK_DIV, 0xF2, "SCALING_PCLK_DIV"},
        {OV7670_REG_SCALING_PCLK_DELAY, 0x02, "SCALING_PCLK_DELAY"},
        {OV7670_REG_COM14, 0x1A, "COM14"},
        {OV7670_REG_COM15, OV7670_COM15_RGB565 | OV7670_COM15_FULL_RANGE, "COM15"},
        {OV7670_REG_COM10, OV7670_COM10_VSYNC_POS | OV7670_COM10_PCLK_FALL, "COM10"},
        {OV7670_REG_TSLB, 0x04, "TSLB"},
        {OV7670_REG_COM11, 0x0A, "COM11"},
        {OV7670_REG_COM8, OV7670_REG_COM8_FASTAEC | OV7670_REG_COM8_AECSTEP |
                          OV7670_REG_COM8_BFILT | OV7670_REG_COM8_AGC |
                          OV7670_REG_COM8_AWB | OV7670_REG_COM8_AEC, "COM8"}
    };

    uint8_t val;
    for (int i = 0; i < sizeof(registers)/sizeof(registers[0]); i++)
    {
        val = 0;
        readI2C(registers[i].reg, &val, 1);  // čitanje direktno u petlji
        if (val == registers[i].expected)
        {
            printUSART2("Reg %s OK (0x%x)\n", registers[i].name, val);
        }
        else
        {
            printUSART2("Reg %s MISMATCH! Expected 0x%x, Read 0x%x\n", 
                        registers[i].name, registers[i].expected, val);
        }
        delay_ms(10);
    }

    printUSART2("-> OV7670 verifikacija zavrsena!\n");
}


void check_data_pins_activity(void)
{
    printUSART2("\n=== DATA PINS & SYNC PINS ACTIVITY CHECK ===\n");
    printUSART2("Monitoring D0-D7 + HSYNC/VSYNC/PCLK for 1 second...\n");
    
    uint32_t d0_count = 0, d1_count = 0, d2_count = 0, d3_count = 0;
    uint32_t d4_count = 0, d5_count = 0, d6_count = 0, d7_count = 0;
    uint32_t hsync_count = 0, vsync_count = 0, pclk_count = 0;
    
    for(int i = 0; i < 1000; i++) {
        // Čitaj sve data pinove
        if(GPIOA->IDR & GPIO_IDR_IDR_9) d0_count++;   // PA9 = D0
        if(GPIOA->IDR & GPIO_IDR_IDR_10) d1_count++;  // PA10 = D1
        if(GPIOC->IDR & GPIO_IDR_IDR_8) d2_count++;   // PC8 = D2
        if(GPIOC->IDR & GPIO_IDR_IDR_9) d3_count++;   // PC9 = D3
        if(GPIOE->IDR & GPIO_IDR_IDR_4) d4_count++;   // PE4 = D4
        if(GPIOB->IDR & GPIO_IDR_IDR_6) d5_count++;   // PB6 = D5
        if(GPIOE->IDR & GPIO_IDR_IDR_5) d6_count++;   // PE5 = D6
        if(GPIOE->IDR & GPIO_IDR_IDR_6) d7_count++;   // PE6 = D7

        // Čitaj sync pinove
        if(GPIOA->IDR & GPIO_IDR_IDR_4) hsync_count++;  // PA4 = HSYNC
        if(GPIOB->IDR & GPIO_IDR_IDR_7) vsync_count++;  // PB7 = VSYNC
        if(GPIOA->IDR & GPIO_IDR_IDR_6) pclk_count++;   // PA6 = PCLK
        
        delay_ms(1);
    }
    
    printUSART2("D0 (PA9) activity: %d/1000\n", d0_count);
    printUSART2("D1 (PA10) activity: %d/1000\n", d1_count);
    printUSART2("D2 (PC8) activity: %d/1000\n", d2_count);
    printUSART2("D3 (PC9) activity: %d/1000\n", d3_count);
    printUSART2("D4 (PE4) activity: %d/1000\n", d4_count);
    printUSART2("D5 (PB6) activity: %d/1000\n", d5_count);
    printUSART2("D6 (PE5) activity: %d/1000\n", d6_count);
    printUSART2("D7 (PE6) activity: %d/1000\n", d7_count);

    printUSART2("HSYNC (PA4) activity: %d/1000\n", hsync_count);
    printUSART2("VSYNC (PB7) activity: %d/1000\n", vsync_count);
    printUSART2("PCLK (PA6) activity: %d/1000\n", pclk_count);
}



void DCMI_CheckConfig(void)
{
    printUSART2("DCMI->CR = 0x%xw\n", DCMI->CR);
    printUSART2("HSYNC active %s\n", (DCMI->CR & DCMI_CR_HSPOL) ? "high" : "low");
    printUSART2("VSYNC active %s\n", (DCMI->CR & DCMI_CR_VSPOL) ? "high" : "low");
    printUSART2("PCLK polarity = %s edge\n", (DCMI->CR & DCMI_CR_PCKPOL) ? "rising" : "falling");
    printUSART2("ESS = %d\n", (DCMI->CR & DCMI_CR_ESS) ? 1 : 0);
    printUSART2("JPEG = %d\n", (DCMI->CR & DCMI_CR_JPEG) ? 1 : 0);
    printUSART2("CROP = %d\n", (DCMI->CR & DCMI_CR_CROP) ? 1 : 0);
    printUSART2("CM (mode) = %s\n", (DCMI->CR & DCMI_CR_CM) ? "snapshot" : "continuous");
    printUSART2("DCMI ENABLE = %d\n", (DCMI->CR & DCMI_CR_ENABLE) ? 1 : 0);


   // check_data_pins_activity();
    check_data_pins_activity_edges();

}



void check_frame_activity(void)
{
    printUSART2("\n=== FRAME ACTIVITY CHECK ===\n");
    printUSART2("Monitoring VSYNC/HSYNC/PCLK for 2 seconds...\n");

    uint32_t vsync_count = 0;
    uint32_t hsync_count = 0;
    uint32_t pclk_count = 0;

    uint32_t line_pclk = 0;
    uint32_t lines_per_frame = 0;

    uint8_t last_vsync = (GPIOB->IDR & (1<<7)) ? 1 : 0;
    uint8_t last_hsync = (GPIOA->IDR & (1<<4)) ? 1 : 0;
    uint8_t last_pclk  = (GPIOA->IDR & (1<<6)) ? 1 : 0;

    uint32_t start = 0;
    for(int i=0; i<2000; i++) // 2000 ms
    {
        uint8_t vs = (GPIOB->IDR & (1<<7)) ? 1 : 0;
        uint8_t hs = (GPIOA->IDR & (1<<4)) ? 1 : 0;
        uint8_t pc = (GPIOA->IDR & (1<<6)) ? 1 : 0;

        // VSYNC rising edge -> novi frame
        if(vs && !last_vsync)
        {
            vsync_count++;
            lines_per_frame = hsync_count; // poslednja linija u frame
            hsync_count = 0;
            printUSART2("Frame start! Previous frame had %d lines\n", lines_per_frame);
        }

        // HSYNC rising edge -> nova linija
        if(hs && !last_hsync)
        {
            hsync_count++;
            line_pclk = 0; // reset brojača piksela po liniji
        }

        // PCLK rising edge -> novi pixel
        if(pc && !last_pclk)
        {
            pclk_count++;
            line_pclk++;
        }

        last_vsync = vs;
        last_hsync = hs;
        last_pclk = pc;

        delay_ms(1);
    }

    printUSART2("Monitoring done.\n");
    printUSART2("Total frames detected: %d\n", vsync_count);
    printUSART2("Total PCLK pulses: %d\n", pclk_count);
}



void check_frame_detailed(void)
{
    printUSART2("\n=== DETAILED FRAME CHECK ===\n");
    printUSART2("Monitoring VSYNC/HSYNC/PCLK for 2 seconds...\n");

    uint8_t last_vsync = (GPIOB->IDR & (1<<7)) ? 1 : 0;
    uint8_t last_hsync = (GPIOA->IDR & (1<<4)) ? 1 : 0;
    uint8_t last_pclk  = (GPIOA->IDR & (1<<6)) ? 1 : 0;

    uint32_t line_pclk_count = 0;
    uint32_t frame_count = 0;
    uint32_t line_count = 0;

    for(uint32_t t = 0; t < 2000000; t++) // ~2s, menja se po mikroseku
    {
        uint8_t vs = (GPIOB->IDR & (1<<7)) ? 1 : 0;
        uint8_t hs = (GPIOA->IDR & (1<<4)) ? 1 : 0;
        uint8_t pc = (GPIOA->IDR & (1<<6)) ? 1 : 0;

        // VSYNC rising edge -> novi frame
        if(vs && !last_vsync)
        {
            frame_count++;
            printUSART2("Frame %d start! Lines in previous frame: %d\n", frame_count, line_count);
            line_count = 0;
        }

        // HSYNC rising edge -> nova linija
        if(hs && !last_hsync)
        {
            line_count++;
            printUSART2(" Line %d PCLK count: %d\n", line_count, line_pclk_count);
            line_pclk_count = 0;
        }

        // PCLK rising edge -> pixel
        if(pc && !last_pclk)
        {
            line_pclk_count++;
        }

        last_vsync = vs;
        last_hsync = hs;
        last_pclk  = pc;
    }

    printUSART2("Monitoring done. Total frames: %d\n", frame_count);
}



void checkDMA2_Stream1_status(void)
{
    printUSART2("=== DMA2 Stream1 Status Check ===\n");

    // 1️⃣ Stream enable
    printUSART2("EN bit: ");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_EN) ? "ON\n" : "OFF\n");

    // 2️⃣ Direction
    printUSART2("Direction: ");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_DIR) ? "Memory-to-peripheral / Memory-to-memory\n" : "Peripheral-to-memory\n");

    // 3️⃣ Memory increment
    printUSART2("MINC (Memory increment): ");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_MINC) ? "ENABLED\n" : "DISABLED\n");

    // 4️⃣ Peripheral increment
    printUSART2("PINC (Peripheral increment): ");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_PINC) ? "ENABLED\n" : "DISABLED\n");

    // 5️⃣ Memory / Peripheral size
    printUSART2("MSIZE: ");
    switch ((DMA2_Stream1->CR & DMA_SxCR_MSIZE) >> 13) {
        case 0: printUSART2("8-bit\n"); break;
        case 1: printUSART2("16-bit\n"); break;
        case 2: printUSART2("32-bit\n"); break;
        default: printUSART2("Reserved\n"); break;
    }
    printUSART2("PSIZE: ");
    switch ((DMA2_Stream1->CR & DMA_SxCR_PSIZE) >> 11) {
        case 0: printUSART2("8-bit\n"); break;
        case 1: printUSART2("16-bit\n"); break;
        case 2: printUSART2("32-bit\n"); break;
        default: printUSART2("Reserved\n"); break;
    }

    // 6️⃣ Number of data items
    printUSART2("NDTR (Number of elements): %d\n",DMA2_Stream1->NDTR);

    // 7️⃣ Addresses
    printUSART2("M0AR (Memory address): 0x%xw\n",DMA2_Stream1->M0AR);

    printUSART2("PAR  (Peripheral address): 0x%xw\n",DMA2_Stream1->PAR);

    // 8️⃣ Interrupts
    printUSART2("Interrupts: TCIE=");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_TCIE) ? "ON" : "OFF");
    printUSART2(", HTIE=");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_HTIE) ? "ON" : "OFF");
    printUSART2(", TEIE=");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_TEIE) ? "ON" : "OFF");
    printUSART2(", DMEIE=");
    printUSART2((DMA2_Stream1->CR & DMA_SxCR_DMEIE) ? "ON\n" : "OFF\n");

    // 9️⃣ Direct mode
    printUSART2("Direct mode (DMDIS): ");
    printUSART2((DMA2_Stream1->FCR & DMA_SxFCR_DMDIS) ? "DISABLED\n" : "ENABLED\n");

    printUSART2("=== DMA2 Stream1 configuration check DONE ===\n");
}



void OV7670_VerifyRegisters_Custom(void)
{
    struct {
        uint8_t reg;
        uint8_t expected;
        const char* name;
    } registers[] = {
        {OV7670_REG_COM7, OV7670_REG_COM7_RESET, "COM7_RESET"},   // reset provjera
        {OV7670_REG_CLKRC, OV7670_CLKRC_DIV3, "CLKRC"},          // 6MHz
        {OV7670_REG_COM3, 0x04, "COM3"},
        {OV7670_REG_COM7, 0x04, "COM7_QQVGAMODE"},               // QQVGA
        {OV7670_REG_COM14, 0x1A, "COM14"},
        {OV7670_REG_HSTART, 0x16, "HSTART"},
        {OV7670_REG_HSTOP, 0x04, "HSTOP"},
        {OV7670_REG_HREF, 0xA4, "HREF"},
        {OV7670_REG_VSTART, 0x02, "VSTRT"},
        {OV7670_REG_VSTOP, 0x7A, "VSTOP"},
        {OV7670_REG_VREF, 0xA4, "VREF"},
        {OV7670_REG_SCALING_DCWCTR, 0x22, "SCALING_DCWCTR"},
        {OV7670_REG_SCALING_PCLK_DIV, 0xF2, "SCALING_PCLK_DIV"},
        {OV7670_REG_COM10, 0x02, "COM10"}  // VSYNC high, PCLK rising, HSPOL default low
    };

    uint8_t val;
    for (int i = 0; i < sizeof(registers)/sizeof(registers[0]); i++)
    {
        val = 0;
        readI2C(registers[i].reg, &val, 1);
        if (val == registers[i].expected)
        {
            printUSART2("Reg %s OK (0x%xb)\n", registers[i].name, val);
        }
        else
        {
            printUSART2("Reg %s MISMATCH! Expected 0x%xb, Read 0x%xb\n", 
                        registers[i].name, registers[i].expected, val);
        }
        delay_ms(10);
    }

    printUSART2("-> OV7670 verifikacija (custom QQVGA sa resetom i clock) zavrsena!\n");
}



void check_data_pins_activity_edges(void)
{
    printUSART2("\n=== DATA PINS & SYNC PINS EDGE ACTIVITY CHECK ===\n");
    printUSART2("Monitoring D0-D7 + HSYNC/VSYNC/PCLK for 1 second...\n");

    uint32_t d0_count = 0, d1_count = 0, d2_count = 0, d3_count = 0;
    uint32_t d4_count = 0, d5_count = 0, d6_count = 0, d7_count = 0;
    uint32_t hsync_count = 0, vsync_count = 0, pclk_count = 0;

    uint32_t d0_prev = 0, d1_prev = 0, d2_prev = 0, d3_prev = 0;
    uint32_t d4_prev = 0, d5_prev = 0, d6_prev = 0, d7_prev = 0;
    uint32_t hsync_prev = 0, vsync_prev = 0, pclk_prev = 0;

    for(int i = 0; i < 1000; i++) {
        uint32_t d0 = (GPIOA->IDR & GPIO_IDR_IDR_9) ? 1 : 0;
        uint32_t d1 = (GPIOA->IDR & GPIO_IDR_IDR_10) ? 1 : 0;
        uint32_t d2 = (GPIOC->IDR & GPIO_IDR_IDR_8) ? 1 : 0;
        uint32_t d3 = (GPIOC->IDR & GPIO_IDR_IDR_9) ? 1 : 0;
        uint32_t d4 = (GPIOE->IDR & GPIO_IDR_IDR_4) ? 1 : 0;
        uint32_t d5 = (GPIOB->IDR & GPIO_IDR_IDR_6) ? 1 : 0;
        uint32_t d6 = (GPIOE->IDR & GPIO_IDR_IDR_5) ? 1 : 0;
        uint32_t d7 = (GPIOE->IDR & GPIO_IDR_IDR_6) ? 1 : 0;

        uint32_t hsync = (GPIOA->IDR & GPIO_IDR_IDR_4) ? 1 : 0;
        uint32_t vsync = (GPIOB->IDR & GPIO_IDR_IDR_7) ? 1 : 0;
        uint32_t pclk = (GPIOA->IDR & GPIO_IDR_IDR_6) ? 1 : 0;

        // Edge detekcija (rising edge)
        if(d0 && !d0_prev) d0_count++;
        if(d1 && !d1_prev) d1_count++;
        if(d2 && !d2_prev) d2_count++;
        if(d3 && !d3_prev) d3_count++;
        if(d4 && !d4_prev) d4_count++;
        if(d5 && !d5_prev) d5_count++;
        if(d6 && !d6_prev) d6_count++;
        if(d7 && !d7_prev) d7_count++;

        if(hsync && !hsync_prev) hsync_count++;
        if(vsync && !vsync_prev) vsync_count++;
        if(pclk && !pclk_prev) pclk_count++;

        // Update previous
        d0_prev = d0; d1_prev = d1; d2_prev = d2; d3_prev = d3;
        d4_prev = d4; d5_prev = d5; d6_prev = d6; d7_prev = d7;
        hsync_prev = hsync; vsync_prev = vsync; pclk_prev = pclk;

        delay_ms(1);
    }

    printUSART2("D0 (PA9) edges: %d\n", d0_count);
    printUSART2("D1 (PA10) edges: %d\n", d1_count);
    printUSART2("D2 (PC8) edges: %d\n", d2_count);
    printUSART2("D3 (PC9) edges: %d\n", d3_count);
    printUSART2("D4 (PE4) edges: %d\n", d4_count);
    printUSART2("D5 (PB6) edges: %d\n", d5_count);
    printUSART2("D6 (PE5) edges: %d\n", d6_count);
    printUSART2("D7 (PE6) edges: %d\n", d7_count);

    printUSART2("HSYNC edges: %d\n", hsync_count);
    printUSART2("VSYNC edges: %d\n", vsync_count);
    printUSART2("PCLK edges: %d\n", pclk_count);
}



void dma2_debug(void) {
    uint32_t cr = DMA2_Stream1->CR;
    uint32_t ndtr = DMA2_Stream1->NDTR;
    uint32_t par = DMA2_Stream1->PAR;
    uint32_t m0ar = DMA2_Stream1->M0AR;
    uint32_t fcr = DMA2_Stream1->FCR;

    uint32_t flags = DMA2->LISR & (DMA_LISR_TCIF1 | DMA_LISR_HTIF1 |
                                   DMA_LISR_TEIF1 | DMA_LISR_DMEIF1 | DMA_LISR_FEIF1);

    printUSART2("==== DMA2 Stream1 Debug ====\n");
    printUSART2("CR = 0x%x | NDTR = %d | PAR = 0x%x | M0AR = 0x%x | FCR = 0x%x\n",
                cr, ndtr, par, m0ar, fcr);

    printUSART2("Flags: TCIF=%d, HTIF=%d, TEIF=%d, DMEIF=%d, FEIF=%d\n",
                (flags & DMA_LISR_TCIF1) ? 1 : 0,
                (flags & DMA_LISR_HTIF1) ? 1 : 0,
                (flags & DMA_LISR_TEIF1) ? 1 : 0,
                (flags & DMA_LISR_DMEIF1) ? 1 : 0,
                (flags & DMA_LISR_FEIF1) ? 1 : 0);

    // Proveri i DCMI DR
    volatile uint16_t sample = DCMI->DR;
    printUSART2("DCMI->DR sample = 0x%x\n", sample);

    // Proveri DCMI CR i SR
    printUSART2("DCMI CR = 0x%x | SR = 0x%x | VSPOL=%d, HSPOL=%d, PCKPOL=%d\n",
                DCMI->CR, DCMI->SR,
                (DCMI->CR & DCMI_CR_VSPOL) ? 1 : 0,
                (DCMI->CR & DCMI_CR_HSPOL) ? 1 : 0,
                (DCMI->CR & DCMI_CR_PCKPOL) ? 1 : 0);
    printUSART2("===========================\n");
}



void DCMI_debugStatus(void)
{
    uint32_t sr   = DCMI->SR;     // Status register
    uint32_t risr = DCMI->RISR;   // Raw interrupt status
    uint32_t misr = DCMI->MISR;   // Masked interrupt status

    printUSART2("\n=== DCMI DEBUG STATUS ===\n");

    // 🔹 Status Register
    printUSART2("DCMI SR   : 0x%xw | FNE=%d VSYNC=%d HSYNC=%d\n",
                sr,
                (sr & DCMI_SR_FNE)    ? 1 : 0,
                (sr & DCMI_SR_VSYNC)  ? 1 : 0,
                (sr & DCMI_SR_HSYNC)  ? 1 : 0);

    // 🔹 Raw Interrupt Status
    printUSART2("DCMI RISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d LINE=%d\n",
                risr,
                (risr & DCMI_RISR_FRAME_RIS) ? 1 : 0,
                (risr & DCMI_RISR_OVF_RIS)   ? 1 : 0,
                (risr & DCMI_RISR_ERR_RIS)   ? 1 : 0,
                (risr & DCMI_RISR_VSYNC_RIS) ? 1 : 0,
                (risr & DCMI_RISR_LINE_RIS)  ? 1 : 0);


    // 🔹 Masked Interrupt Status
    printUSART2("DCMI MISR : 0x%xw | FRAME=%d OVR=%d ERR=%d VSYNC=%d LINE=%d\n",
                misr,
                (misr & DCMI_MISR_FRAME_MIS) ? 1 : 0,
                (misr & DCMI_MISR_OVF_MIS)   ? 1 : 0,
                (misr & DCMI_MISR_ERR_MIS)   ? 1 : 0,
                (misr & DCMI_MISR_VSYNC_MIS) ? 1 : 0,
                (misr & DCMI_MISR_LINE_MIS)  ? 1 : 0);

    printUSART2("==========================\n");
}



void send_frame_buffer_USART(volatile uint16_t* buffer, uint32_t size)
{
    putcharUSART2(0xAA); // start byte 1
    putcharUSART2(0x55); // start byte 2

    for(uint32_t i = 0; i < size; i++)
    {
        uint8_t high = (buffer[i] >> 8) & 0xFF;
        uint8_t low  = buffer[i] & 0xFF;

        putcharUSART2(low);   // šaljemo low byte
        putcharUSART2(high);  // šaljemo high byte
        //putcharUSART2(low);   // šaljemo low byte
    }
}






static uint32_t total_size = 0;  
static uint32_t send_index = 0;  

//void send_chunk(void) {
//    if (send_index < IMG_W * IMG_H) {
//        uint8_t packet[CHUNK_SIZE];
//        
//        // Prebaci 16-bit vrijednosti iz frame_buffer u bajtove
//        for (int i = 0; i < CHUNK_SIZE/2; i++) {
//            uint16_t pixel = frame_buffer1[send_index++];   // stavili smo 1 jer 0 je kao RX pa 1 TX al ova se funk ne koristi
//            packet[i*2]   = (pixel >> 8) & 0xFF;  // high byte // 0 i parni brojevi u nizu
//            packet[i*2+1] = pixel & 0xFF;         // low byte   // neparni brojevi u nizu
//        }
//
//        // Pošalji paket od 32 bajta preko NRF-a
//        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
//    }
//}
//



static const volatile uint16_t* current_buffer = NULL;  


void send_data_via_nrfmodul(volatile uint16_t* buffer, uint32_t size)
{
    // Ako nema aktivnog slanja -> postavi novi frame
    if (current_buffer == NULL) {
        current_buffer = buffer;
        total_size = size;
        send_index = 0;

        //printUSART2("ulazi u 1. if blok da kaze da je cb = 0x%xw \n",current_buffer);
        // Možeš poslati mali HEADER paket da RX zna da frame počinje
        uint8_t header[4] = {0xAA, 0x55, (size >> 8) & 0xFF, size & 0xFF};
        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, header);
    }

    // on ovjde zaglavi ako ne moze da posalje haman ?? 
    // Ako ima još podataka za slanje
    if (send_index < total_size) {
        uint8_t packet[CHUNK_SIZE];

        printUSART2("%d \n",send_index);
        for (int i = 0; i < CHUNK_SIZE/2 && send_index < total_size; i++) {
            uint16_t pixel = current_buffer[send_index++];
            packet[i*2]   = (pixel >> 8) & 0xFF;  // high byte
            packet[i*2+1] = pixel & 0xFF;         // low byte
        }

        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
    }

    // Ako smo gotovi
    if (send_index >= total_size) {
        printUSART2("ulazi u 3. if blok da kaze da je cb = 0x%xw \n",current_buffer);
        // Šaljemo FOOTER da RX zna da je kraj
        uint8_t footer[2] = {0x55, 0xAA};
        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, footer);

        // Resetujemo stanje
        current_buffer = NULL;
        printUSART2("ulazi u 3. if blok da kaze da je cb reset sada  = 0x%xw \n",current_buffer);
        // Šaljemo FOOTER da RX zna da je kraj
        total_size = 0;
        send_index = 0;
    }
}



volatile uint32_t rx_index = 0;
volatile uint8_t frame_ready = 0;

void startSlaveNodeRX() {
    uint8_t is_data_ready;
    uint8_t packet[CHUNK_SIZE];
    
    while (1) {
        is_data_ready = dataReadyNRF24L01();
        if (is_data_ready == NRF_DATA_READY) {
            rxDataNRF24L01(packet);

            // PROVJERA HEADER (0xAA, 0x55, size)
            if (packet[0] == 0xAA && packet[1] == 0x55) {
                rx_index = 0;      // resetujemo buffer
                frame_ready = 0;
                continue;
            }

            // PROVJERA FOOTER (0x55, 0xAA)
            if (packet[0] == 0x55 && packet[1] == 0xAA) {
                frame_ready = 1;   // frame kompletan
                continue;
            }

            // Ako nije header/footer, puni buffer
            for (int i = 0; i < CHUNK_SIZE/2 && rx_index < FRAME_MAX; i++) {
                frame_buffer0[rx_index++] = (packet[i*2] << 8) | packet[i*2+1];     // frame_buffer0 se koristi kao RX, stedimo memoriju
            }
        }

        // OVDE možeš dodati logiku za prikaz slike ili obradu
        if (frame_ready) {
            // npr. prikaz ili dalja obrada
            send_frame_buffer_USART(frame_buffer0, FRAME_MAX);
            frame_ready = 0; // reset za sljedeći frame
        }
    }
}

void send_next_packet(volatile uint16_t* buffer, uint32_t size)
{
    // Ako novi buffer
    if (current_buffer == NULL) {
        current_buffer = buffer;
        total_size = size;
        send_index = 0;

        // Opcionalno: Header da RX zna da počinje frame
        uint8_t header[4] = {0xAA, 0x55, (size >> 8) & 0xFF, size & 0xFF};
        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, header);
        return; // Header poslan, čekamo sljedeći prolaz za prvi paket
    }

    // Ako ima još podataka
    if (send_index < total_size) {
        uint8_t packet[CHUNK_SIZE];
        //printUSART2("%d \n",send_index);
        for (int i = 0; i < CHUNK_SIZE/2 && send_index < total_size; i++) {
            uint16_t pixel = current_buffer[send_index++];
            packet[i*2]   = (pixel >> 8) & 0xFF;
            packet[i*2+1] = pixel & 0xFF;
        }

        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
        return;
    }

    // Ako smo gotovi sa slanjem
    if (send_index >= total_size) {
        uint8_t footer[2] = {0x55, 0xAA};
        txDataNRF24L01((uint8_t*)c_nrf_slave_addr, footer);

        current_buffer = NULL;
        total_size = 0;
        send_index = 0;
    }
}
