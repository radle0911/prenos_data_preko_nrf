#include "check.h"
#include "../usart/usart.h"
#include "../delay/delay.h"
#include "stm32f4xx.h"
#include <stdint.h>


void OV7670_TestPins(uint32_t duration_ms, uint32_t interval_ms) 
{
    uint32_t vsync_cnt = 0;
    uint32_t start = getSYSTIMER_TIM7(); 

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
} 
// Primer poziva: OV7670_TestPins(5000, 100);





void send_frame_buffer(volatile uint16_t* buffer, uint32_t size)
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
