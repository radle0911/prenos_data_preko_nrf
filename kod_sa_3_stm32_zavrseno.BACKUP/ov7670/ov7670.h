#ifndef OV7670_H
#define OV7670_H
//-------------------------------
#include <stdint.h>
#define OV7670_REG_WRITE        0x42
#define OV7670_REG_READ         0x43

//#define OV7670_REG_PID          0x0A    // product ID
//#define OV7670_REG_VER          0x0B    // product VERSION



#define COM7_RESET      0x80
#define COM7_RGB        0x04
#define COM7_QVGA       0x10

#define COM15_RGB565    0xD0   // RGB565, full range

#define CLKRC_DIV1      0x01   // Internal clock prescaler = 1+1 => /2
#define DBLV_PLLx4      0x4A   // PLL x4 + dodatna podešavanja

#define HSTART_DEFAULT  0x16
#define HSTOP_DEFAULT   0x04
#define HREF_DEFAULT    0x80

#define VSTART_DEFAULT  0x02
#define VSTOP_DEFAULT   0x7A
#define VREF_DEFAULT    0x0A

#define SCALING_XSC     0x3A
#define SCALING_YSC     0x35
#define SCALING_DCWCTR  0x11
#define SCALING_PCLK_DIV 0xF1
#define SCALING_PCLK_DELAY 0x02






void initOV7670();
void OV7670_XCLK_TIM1_init(void);
void getOV7670_ID();
void OV7670_SetupQQVGA_Custom(void);

//-------------------------------
#endif // !OV7670_H
