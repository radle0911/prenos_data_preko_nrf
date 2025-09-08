#ifndef I2C_H
#define I2C_H
// ----------------------------------------
#include <stdint.h>




#define I2C_READ						0x00
#define I2C_WRITE						0x01



void initI2C1(uint8_t);
void startI2C1(uint8_t type);
void stopI2C1();
void txByteI2C1(uint8_t data);
uint8_t rxByteAckI2C(void);
uint8_t rxByteNackI2C(void);
void readI2C(uint8_t reg, uint8_t* data, uint16_t nbyte);
void writeI2C(uint8_t reg, uint8_t* data, uint16_t nbyte);

// ----------------------------------------
#endif // !I2C_H
