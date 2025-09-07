#include "lis302dl.h"
#include "../spi/spi.h"
#include "../delay/delay.h"
#include "../usart/usart.h"
#include <stdint.h>



void initLIS320DL(void)
{

  uint8_t data,k;
  uint32_t utmp32;

  initSPI1_accelerometer(SPI_BaudRate_Prescaler_32);


  // za upisivanje mora biti low i kada se zavrsi high
  // samo ovdje vrsimo upisivanje, na ostale vrsimo citanje i ispis
  SPI1_CS_LOW;
  txByteSPI1(lis302dl_CTRL_REG1);     // prvo je potrebno odabrati adresu u kojoj zelimo da upisemo podatke 
  txByteSPI1(0x47);                   // PD control: 1 active mode, enable x,y,z axis
  SPI1_CS_HIGH;

  delay_ms(100);                      // iz nekog razloga, valjda da podesi sto treba ...

  SPI1_CS_LOW;
  txByteSPI1(lis302dl_CTRL_REG1|lis302dl_CTRL_REG1_DR_READ);    // ovo je DR registar 400Hz output data rate
  utmp32 = rxByteSPI1();        // nakon sto smo "enable" read tj povecali frek. --> izvrsavamo citanje
  printUSART2("-> LIS302: LIS302_CTRL_REG1 [%x]\n",utmp32);   // procitana vrijednost 
  SPI1_CS_HIGH;


  SPI1_CS_LOW;                                                    // To govori LIS302DL da će naredni bajt koji pošalje biti čitani sadržaj sa te adrese.
  txByteSPI1(lis302dl_CTRL_REG2 | lis302dl_CTRL_REG1_DR_READ);    // adresa reg2 i ponovo enable 400hz za citanje 
  utmp32 = rxByteSPI1();
  printUSART2("-> LIS302: LIS302_CTRL_REG2 [%x]\n",utmp32);   // procitana vrijednost 
  SPI1_CS_HIGH;

  SPI1_CS_LOW;
  txByteSPI1(lis302dl_CTRL_REG3|lis302dl_CTRL_REG1_DR_READ);
  utmp32 = rxByteSPI1();
  printUSART2("-> LIS302: LIS302_CTRL_REG3 [%x]\n",utmp32);   // procitana vrijednost 
  SPI1_CS_HIGH;

  SPI1_CS_LOW;
  txByteSPI1(lis302dl_WHO_AM_I | lis302dl_CTRL_REG1_DR_READ);
  utmp32 = rxByteSPI1();
  printUSART2("-> LIS302: LIS302_WHO_AM_I [%x]\n",utmp32);   // procitana vrijednost 
  SPI1_CS_HIGH;

}


void getDataLIS302DL(int8_t *accel_data){
  // obzirom da imamo 3 vrijednosti tj x,y,z kao parametar prosljedjujemo niz[3]
  uint32_t utmp32;

  accel_data[0] = 0x00;
  accel_data[1] = 0x00;
  accel_data[2] = 0x00;

  SPI1_CS_LOW;  // da bi mogli izvrsiti citanje
  txByteSPI1(lis302dl_STATUS_REG|lis302dl_CTRL_REG1_DR_READ); // status registra
  utmp32 = rxByteSPI1();                                      // new data available and that stuf
  SPI1_CS_HIGH;
  delay_us(100);

  uint8_t k, data[6]={0x00,0x00,0x00,0x00,0x00,0x00};
  SPI1_CS_LOW;
  txByteSPI1(lis302dl_OUT_X | lis302dl_CTRL_REG1_DR_READ); 
  for (k=0; k<6; k++) { // prolazimo kroz svaki element i upisujemo ga u niz
    data[k] = rxByteSPI1(); // 
  }
  SPI1_CS_HIGH;
  // 1. citanje je citanje X axis,  0x29 | 0x80 = 0xA9  -> odgovara X
  // 2. citanje je dummy,           0x2A | 0x80 = 0xAA
  // 3. citanje je Y axis,          0x2B | 0x80 = 0xAB  -> odgovara Y
  // 4. dummy i                     0x2C | 0x80 = 0xAC
  // 5. je Z axis                   0x2D | 0x80 = 0xAD  -> odgovara Z

  accel_data[0] = data[0];
  accel_data[1] = data[2];
  accel_data[2] = data[4];


  // da bi se izbjegli potencijalni problemi i kako
  // bi osigurali siguran rad, ponovo postavljamo:
  // Za upisivanje vrijednost prvo adresu selektrujemo,
  // pa onda podatke koje zelimo upisati u registar
  SPI1_CS_LOW;
  txByteSPI1(lis302dl_CTRL_REG1);
  txByteSPI1( 0x47);
  SPI1_CS_HIGH;
}


