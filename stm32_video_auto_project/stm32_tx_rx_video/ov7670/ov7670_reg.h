#ifndef __OV7670_REG_H
#define __OV7670_REG_H

// Product ID and Version
#define OV7670_REG_PID             0x0A
#define OV7670_REG_VER             0x0B

// Common control registers
#define OV7670_REG_COM1            0x04
#define OV7670_REG_COM3            0x0C
#define OV7670_REG_COM7            0x12
#define OV7670_REG_COM8            0x13
#define OV7670_REG_COM14           0x3E
#define OV7670_REG_COM15           0x40
#define OV7670_REG_DBLV            0x6B
#define OV7670_REG_HREF            0x32
#define OV7670_REG_VREF            0x03


// COM7 bits
#define OV7670_REG_COM7_RESET      0x80  // SCCB reset
#define OV7670_REG_COM7_FMT_YUV    0x00
#define OV7670_REG_COM7_FMT_RGB    0x04
#define OV7670_REG_COM7_FMT_RAW    0x01

// COM8 bits
#define OV7670_REG_COM8_FASTAEC    0x80  // Enable fast AGC/AEC
#define OV7670_REG_COM8_AECSTEP    0x40  // Unlimited step size
#define OV7670_REG_COM8_BFILT      0x20  // Band filter enable
#define OV7670_REG_COM8_AGC        0x04  // Auto gain enable
#define OV7670_REG_COM8_AWB        0x02  // Auto white balance enable
#define OV7670_REG_COM8_AEC        0x01  // Auto exposure enable

// Frame rate / clock
#define OV7670_REG_CLKRC           0x11

// Horizontal/Vertical window
#define OV7670_REG_HSTART          0x17
#define OV7670_REG_HSTOP           0x18
#define OV7670_REG_VSTART          0x19
#define OV7670_REG_VSTOP           0x1A

// Scaling control
#define OV7670_REG_SCALING_XSC     0x70
#define OV7670_REG_SCALING_YSC     0x71
#define OV7670_REG_SCALING_DCWCTR  0x72
#define OV7670_REG_SCALING_PCLK_DIV 0x73
#define OV7670_REG_SCALING_PCLK_DELAY 0xA2

#define OV7670_REG_COM10        0x15

// COM15 bits (RGB565)
#define OV7670_COM15_RGB565 0x10  // bit4 = RGB565 (normal RGB je 0x00)

// COM10 bits (HSYNC/VSYNC/PCLK polarity)
#define OV7670_COM10_PCLK_HREF_HSYNC 0x00  // normal polarity

// DBLV bits
//#define OV7670_REG_DBLV            0x6B



// COM3 bits
#define OV7670_COM3_SCALE_EN     0x08  // Enable scaling
#define OV7670_COM3_DCW_EN       0x04  // Enable downsample/decimation

// COM14 bits
#define OV7670_COM14_PCLK_DIV1   0x00
#define OV7670_COM14_PCLK_DIV2   0x01
#define OV7670_COM14_PCLK_DIV4   0x02
#define OV7670_COM14_PCLK_DIV8   0x03

// COM15 bits
#define OV7670_COM15_RGB565      0x10
#define OV7670_COM15_FULL_RANGE  0xC0  // Full 0–255 range

// COM10 bits
#define OV7670_COM10_VSYNC_NEG   0x02
#define OV7670_COM10_PCLK_FALL   0x20

// CLKRC
#define OV7670_CLKRC_DIV1        0x01  // input clock /2 (0x00 = no division)
#define OV7670_CLKRC_DIV3        0x03  // input clock /4 (0x00 = no division)


#define OV7670_COM10_VSYNC_POS   0x00  // rising edge

#define OV7670_REG_TSLB          0x3A  // adresa TSLB registra
#define OV7670_TSLB_RGB565       0x04  // vrijednost za RGB565 / byte order


#define OV7670_REG_COM11         0x3B  // adresa COM11 registra
#define OV7670_COM11_AUTO_50_60  0x0A  // vrijednost za auto banding/exposure




#endif // __OV7670_REG_H
