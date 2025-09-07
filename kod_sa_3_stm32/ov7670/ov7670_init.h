// ov7670_init.h
#ifndef OV7670_INIT_H
#define OV7670_INIT_H

#include <stdint.h>

#define OV7670_ADDR 0x21  // 7-bit adresa kamere

// registri za ID
#define OV7670_REG_PID 0x0A
#define OV7670_REG_VER 0x0B

// osnovni registri za QVGA RGB
#define COM7 0x12
#define COM3 0x0C
#define COM14 0x3E
#define SCALING_XSC 0x70
#define SCALING_YSC 0x71
#define SCALING_DCWCTR 0x72
#define SCALING_PCLK_DIV 0x73
#define CLKRC 0x11

void OV7670_Init(void);
uint8_t OV7670_ReadID(void);
void OV7670_WriteReg(uint8_t reg, uint8_t value);

#endif
