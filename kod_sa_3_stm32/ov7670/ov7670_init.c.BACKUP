// ov7670_init.c
#include "ov7670_init.h"
#include "../i2c/i2c.h"
#include "../usart/usart.h"

void OV7670_WriteReg(uint8_t reg, uint8_t value)
{
    startI2C1(I2C_WRITE);
    txByteI2C1(reg);
    txByteI2C1(value);
    stopI2C1();
}

uint8_t OV7670_ReadID(void)
{
    uint8_t pid = 0, ver = 0;

    startI2C1(I2C_WRITE);
    txByteI2C1(OV7670_REG_PID);
    stopI2C1();

    readI2C(OV7670_REG_PID, &pid, 1);
    readI2C(OV7670_REG_VER, &ver, 1);

    printUSART2("OV7670 PID: [0x%xb]",pid);
 //   printUSART2Hex(pid);
    printUSART2(", VER: [0x%xb]\n",ver);
//    printUSART2Hex(ver);
    printUSART2("\n");

    return pid;
}

void OV7670_Init(void)
{
    uint8_t id;

    printUSART2("OV7670 Init start\n");

    // inicijalizacija I2C sa adresom kamere
    initI2C1_cs43l22(OV7670_ADDR);

    // pročitaj ID kamere
    id = OV7670_ReadID();
    if (id != 0) {
        printUSART2("OV7670 detected\n");
    } else {
        printUSART2("OV7670 NOT detected\n");
    }

    // RESET kamere
    OV7670_WriteReg(COM7, 0x80);  // COM7 reset
    // Delay nakon reset-a (možeš napraviti funkciju delay_ms)
    for(volatile int i=0;i<50000;i++);

    // Osnovne postavke QVGA, RGB
    OV7670_WriteReg(COM7, 0x04);  // RGB output
    OV7670_WriteReg(COM3, 0x04);
    OV7670_WriteReg(COM14, 0x19);
    OV7670_WriteReg(SCALING_XSC, 0x3A);
    OV7670_WriteReg(SCALING_YSC, 0x35);
    OV7670_WriteReg(SCALING_DCWCTR, 0x11);
    OV7670_WriteReg(SCALING_PCLK_DIV, 0xF0);
    OV7670_WriteReg(CLKRC, 0x01); // PCLK prescaler

    printUSART2("OV7670 Init done\n");
}
