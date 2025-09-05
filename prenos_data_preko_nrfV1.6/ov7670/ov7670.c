#include "ov7670.h"
#include "ov7670_reg.h"
#include "../i2c/i2c.h"
#include "../usart/usart.h"
#include "../delay/delay.h"
#include "stm32f4xx.h"
#include <stdint.h>



// Definicije bitova i režima za OV7670
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


// 0000000000000000000000000000000000000chatgpt00000000000000000000000000000000


// Register set za QQVGA RGB565
const ov7670_reg_val_t ov7670_qqvga_rgb565[] = {
    {0x12, 0x80}, // COM7 reset
//    {0xFF, 0xFF}, // delay marker (koristi kao uslov za delay_ms(100))

    // RGB565 format
    {0x12, 0x14}, // COM7: RGB, QVGA
    {0x8C, 0x00}, // RGB444 disable
    {0x40, 0xD0}, // COM15: RGB565, full range
    {0x3A, 0x04}, // TSLB: set correct ordering
    {0x14, 0x38}, // COM9: max gain 32x

    // Scaling / window
    {0x32, 0x80}, // HREF
    {0x17, 0x16}, // HSTART
    {0x18, 0x04}, // HSTOP
    {0x19, 0x02}, // VSTART
    {0x1A, 0x7A}, // VSTOP
    {0x03, 0x0A}, // VREF

    // Scaling for QQVGA (160x120)
    {0x70, 0x3A}, // SCALING_XSC
    {0x71, 0x35}, // SCALING_YSC
    {0x72, 0x11}, // SCALING_DCWCTR (downsample)
    {0x73, 0xF1}, // SCALING_PCLK_DIV
    {0xA2, 0x02}, // SCALING_PCLK_DELAY

    // Color matrix / gamma (basic)
    {0x4F, 0xB3},
    {0x50, 0xB3},
    {0x51, 0x00},
    {0x52, 0x3D},
    {0x53, 0xA7},
    {0x54, 0xE4},
    {0x58, 0x9E},

    // AWB (auto white balance)
    {0x6A, 0x40},
    {0x01, 0x40},
    {0x02, 0x60},
    {0x13, 0xE7}, // enable AWB, AGC, AEC

    {0xFF, 0xFF} // kraj tabele
};



// Maksimalan broj pokušaja za upis registra
//
#define MAX_WRITE_ATTEMPTS 3






void OV7670_InitQQVGA_RGB565(void)
{
    uint8_t val;

    // 1) Reset
    val = OV7670_REG_COM7_RESET;      // 0x80
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // 2) Clock & frame rate
    val = OV7670_CLKRC_DIV3;          // 6MHz
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // 3) Enable DCW (downsample) + scaling registers
    val = OV7670_COM3_DCW_EN;         // 0x04
    writeI2C(OV7670_REG_COM3, &val, 1);

    val = 0x22;                       // DCW control: downsample horiz & vert
    writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);

    val = 0x3A;                       // horizontal scale factor
    writeI2C(OV7670_REG_SCALING_XSC, &val, 1);

    val = 0x35;                       // vertical scale factor
    writeI2C(OV7670_REG_SCALING_YSC, &val, 1);

    val = 0xF2;                       // PCLK divider
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);

    val = 0x02;                       // PCLK delay
    writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1);

    // 3a) COM14 - enable DCW + manual scaling + PCLK divider /4
    val = 0x1A;  
    writeI2C(OV7670_REG_COM14, &val, 1);
    delay_ms(10);

    // 4) Color format = RGB565
    val = OV7670_REG_COM7_FMT_RGB;    // COM7: set to RGB
    writeI2C(OV7670_REG_COM7, &val, 1);

    val = OV7670_COM15_RGB565 | OV7670_COM15_FULL_RANGE;
    writeI2C(OV7670_REG_COM15, &val, 1);

    // 5) TSLB — line buffer / byte order
    val = 0x04;
    writeI2C(OV7670_REG_TSLB, &val, 1);

    // 6) Banding / auto 50/60Hz
    val = 0x0A;
    writeI2C(OV7670_REG_COM11, &val, 1);

    // 7) Auto controls (AGC/AEC/AWB)
    val = OV7670_REG_COM8_FASTAEC | OV7670_REG_COM8_AECSTEP |
          OV7670_REG_COM8_BFILT   | OV7670_REG_COM8_AGC     |
          OV7670_REG_COM8_AWB     | OV7670_REG_COM8_AEC;
    writeI2C(OV7670_REG_COM8, &val, 1);

    delay_ms(10);

    // 8) COM10 - PCLK & VSYNC (zadat zadnji!)
    val = OV7670_COM10_VSYNC_POS | OV7670_COM10_PCLK_FALL;
    writeI2C(OV7670_REG_COM10, &val, 1);
    delay_ms(10);

    printUSART2("-> OV7670 inicijalizacija QQVGA RGB565 160x120 - zavrseno!\n");
}




void OV7670_InitQQVGA_RGB565_FullData(void)
{
    uint8_t val;

    // 1️⃣ Reset kamere
    val = OV7670_REG_COM7_RESET;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // 2️⃣ Clock & frame rate
    val = OV7670_CLKRC_DIV1;      // no division
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // 3️⃣ Disable downsampling / scaling
    val = 0x00;                    // COM3 = 0, scaling off
    writeI2C(OV7670_REG_COM3, &val, 1);

    val = 0x00;                    // DCWCTR = 0, no downsample
    writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);

    val = 0x00;                    // XSC = 0
    writeI2C(OV7670_REG_SCALING_XSC, &val, 1);

    val = 0x00;                    // YSC = 0
    writeI2C(OV7670_REG_SCALING_YSC, &val, 1);

    val = 0x00;                    // PCLK div = 1
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);

    val = 0x00;                    // PCLK delay = 0, svi D-bits aktivni
    writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1);

    // 4️⃣ Format boje = RGB565
    val = OV7670_REG_COM7_FMT_RGB;
    writeI2C(OV7670_REG_COM7, &val, 1);

    val = OV7670_COM15_RGB565 | OV7670_COM15_FULL_RANGE;
    writeI2C(OV7670_REG_COM15, &val, 1);

    // 5️⃣ Sync polaritet za STM32 DCMI
    val = OV7670_COM10_VSYNC_POS | OV7670_COM10_PCLK_FALL;
    writeI2C(OV7670_REG_COM10, &val, 1);

    // 6️⃣ Osnovne automatske kontrole
    val = OV7670_REG_COM8_FASTAEC | OV7670_REG_COM8_AECSTEP | 
          OV7670_REG_COM8_BFILT   | OV7670_REG_COM8_AGC     | 
          OV7670_REG_COM8_AWB     | OV7670_REG_COM8_AEC;
    writeI2C(OV7670_REG_COM8, &val, 1);

    printUSART2("-> OV7670 inicijalizacija QQVGA RGB565 FullData zavrsena!\n");
}





/*
void OV7670_InitQQVGA_RGB565(void)
{
    // 1. Reset kamera registara
    writeI2C(0x12, 0x80); // COM7: reset all
    delay_ms(50);

    // 2. Clock & frame rate
    OV7670_WriteReg(0x11, 0x01); // CLKRC: input clock /2
    OV7670_WriteReg(0x3E, 0x1A); // COM14: divide PCLK for fps control

    // 3. Scaling & QQVGA rezolucija
    OV7670_WriteReg(0x0C, 0x04); // COM3: enable scaling
    OV7670_WriteReg(0x72, 0x22); // SCALING_DCWCTR: downsample by 4
    OV7670_WriteReg(0x70, 0x3A); // SCALING_XSC
    OV7670_WriteReg(0x71, 0x35); // SCALING_YSC
    OV7670_WriteReg(0x73, 0xF2); // SCALING_PCLK_DIV
    OV7670_WriteReg(0xA2, 0x02); // SCALING_PCLK_DELAY

    // 4. Format boje = RGB565
    OV7670_WriteReg(0x12, 0x04); // COM7: RGB output
    OV7670_WriteReg(0x40, 0xD0); // COM15: RGB565 + full range (0–255)

    // 5. Sync polaritet (za STM32 DCMI obično treba ovako)
    OV7670_WriteReg(0x15, 0x20); // COM10: VSYNC negative, PCLK falling edge

    // 6. Osnovne automatske kontrole
    OV7670_WriteReg(0x13, 0xE0); // COM8: enable AGC, AWB, AEC
}

*/




void getOV7670_ID()
{
  uint8_t data[4];
  uint8_t val;
  uint8_t chk = 0;
  uint32_t utmp32;

  // Inicijalizacija I2C
  initI2C1(OV7670_REG_WRITE);

  // Citanje PID i VER
  readI2C(OV7670_REG_PID, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 product ID (PID) [0x%xb]\n", utmp32);
  if (utmp32 == 0x76) ++chk;

  readI2C(OV7670_REG_VER, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 version (VER) [0x%xb]\n", utmp32);
  if (utmp32 == 0x73) ++chk;
  if (chk == 2) printUSART2("   Kamera radi ispravno\n");
  else printUSART2("    Kamera ne radi ispravno\n");
  printUSART2("==============================================\n");
}



void OV7670_Init_QQVGA_RGB565_Working(void)
{
    uint8_t data;

    // --- Inicijalizacija I2C ---
    initI2C1(OV7670_REG_WRITE);

    // --- Reset kamere ---
    data = OV7670_REG_COM7_RESET; // reset
    writeI2C(OV7670_REG_COM7, &data, 1);
    delay_ms(200); // čekamo reset

    // --- Postavljanje formata RGB ---
    data = OV7670_REG_COM7_FMT_RGB; // RGB format, bez VGA/QQVGA bitova
    writeI2C(OV7670_REG_COM7, &data, 1);
    delay_ms(10);

    // --- COM15: RGB565 ---
    data = 0x14; // RGB565, normal RGB order
    writeI2C(OV7670_REG_COM15, &data, 1);
    delay_ms(5);

    // --- Skaliranje na QQVGA (160x120) ---
    data = 0x01; writeI2C(OV7670_REG_COM3, &data, 1); // enable scaling
    data = 0xA4; writeI2C(OV7670_REG_COM14, &data, 1); // scaling 1/4 (QQVGA)
    delay_ms(5);

    writeI2C(OV7670_REG_COM3, &(uint8_t){0x00}, 1);   // COM3 default
    writeI2C(OV7670_REG_COM14, &(uint8_t){0x19}, 1);  // COM14 PCLK scaling
    writeI2C(OV7670_REG_SCALING_XSC, &(uint8_t){0x3A}, 1);
    writeI2C(OV7670_REG_SCALING_YSC, &(uint8_t){0x35}, 1);
    writeI2C(OV7670_REG_SCALING_DCWCTR, &(uint8_t){0x11}, 1);
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &(uint8_t){0xF1}, 1);
    delay_ms(10);

    // --- COM10: normal HSYNC/PCLK polarity ---
    data = 0x00;
    writeI2C(0x15, &data, 1); // OV7670_REG_COM10 nije definisan u tvom header-u, koristi 0x15
    delay_ms(5);

    // --- Provera PID ---
    readI2C(OV7670_REG_PID, &data, 1);
    printUSART2("OV7670 PID = 0x%x\n", data);

    printUSART2("OV7670 -> Init QQVGA RGB565 READY!\n");
}

// 0000000000000000000000000000000000000chatgpt00000000000000000000000000000000A ENDE













































void initOV7670_ChatGPT(void)
{
    uint8_t data[4];
    uint8_t val;
    uint32_t utmp32;

    // Inicijalizacija I2C
    initI2C1(OV7670_REG_WRITE);

    // Čitanje PID i VER
    readI2C(OV7670_REG_PID, data, 1);
    utmp32 = data[0];
    printUSART2("-> OV7670 product ID (PID) [0x%xb]\n", utmp32);

    readI2C(OV7670_REG_VER, data, 1);
    utmp32 = data[0];
    printUSART2("-> OV7670 version (VER) [0x%xb]\n", utmp32);

    // Reset kamere
    val = COM7_RESET;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);  // čekamo da reset završi

    // Osnovni mod: RGB + QVGA
    val = COM7_RGB | COM7_QVGA;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(5);

    // COM15: RGB565, full range
    val = COM15_RGB565;
    writeI2C(OV7670_REG_COM15, &val, 1);
    delay_ms(5);

    // Clock podešavanja
    val = CLKRC_DIV1;
    writeI2C(OV7670_REG_CLKRC, &val, 1);
    delay_ms(5);

    val = DBLV_PLLx4;
    writeI2C(OV7670_REG_DBLV, &val, 1);
    delay_ms(5);

    // Horizontalni window
    val = HREF_DEFAULT;
    writeI2C(OV7670_REG_HREF, &val, 1);
    delay_ms(5);

    val = HSTART_DEFAULT;
    writeI2C(OV7670_REG_HSTART, &val, 1);
    delay_ms(5);

    val = HSTOP_DEFAULT;
    writeI2C(OV7670_REG_HSTOP, &val, 1);
    delay_ms(5);

    // Vertikalni window
    val = VSTART_DEFAULT;
    writeI2C(OV7670_REG_VSTART, &val, 1);
    delay_ms(5);

    val = VSTOP_DEFAULT;
    writeI2C(OV7670_REG_VSTOP, &val, 1);
    delay_ms(5);

    val = VREF_DEFAULT;
    writeI2C(OV7670_REG_VREF, &val, 1);
    delay_ms(5);

    // Scaling kontrola za QQVGA 160x120
    val = SCALING_XSC;
    writeI2C(OV7670_REG_SCALING_XSC, &val, 1);
    delay_ms(5);

    val = SCALING_YSC;
    writeI2C(OV7670_REG_SCALING_YSC, &val, 1);
    delay_ms(5);

    val = SCALING_DCWCTR;
    writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);
    delay_ms(5);

    val = SCALING_PCLK_DIV;
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);
    delay_ms(5);

    val = SCALING_PCLK_DELAY;
    writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1);
    delay_ms(5);

    printUSART2("-> OV7670 inicijalizacija za 160x120 RGB565 zavrsena!\n");
}




void initOV7670()
{
  uint8_t data[4];
  uint32_t utmp32;
  uint8_t val;

  initI2C1(OV7670_REG_WRITE);
  //printUSART2("izadje iz initI2C1\n");
  readI2C(OV7670_REG_PID, data, 1);
  //printUSART2("izadje iz readI2C1\n");

  utmp32 = data[0];

  printUSART2("-> OV7670 product ID (PID) [0x%xb]\n",utmp32);

  readI2C(OV7670_REG_VER, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 version (VER) [0x%xb]\n",utmp32);


  // Reset kamere
  val = OV7670_REG_COM7_RESET;
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(200);
  //printUSART2("Izvrsena je writeI2C funkcija za RESET\n");

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_COM7    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // Osnovni mod: RGB + QVGA (160x120)
    val = OV7670_REG_COM7_FMT_RGB | 0x10; // Odabiremo Bit[4]: Output format - QVGA selection   ---> RGB postavka
//  val = 0x01 | 0x03;                      //  0x10 = QVGA selection, 0x03 = MONO (grayscale)    ---> probati RGB
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(5);
  // NOTE: 
  //        #############################################################################################
  //        ###### Moguce je u REG COM7 podesiti samo na QVGA, a u SCALING cemo ga smanjiti na QQVGA ####
  //        #############################################################################################
  //        VGA:    640 x 480 [pixela]
  //        QVGA:   320 x 240 [pixela]  ==> (Quarter VGA)         -> (640/2) x (480/2) = 320 x 240 [pix]
  //        QQVGA:  160 x 120 [pixela]  ==> (Quarter Quarter VGA) -> (320/2) x (240/2) = 160 x 120 [pix]
  

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_COM15    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // COM15: RGB565, full range
  
  // RGB setup: <<<<<<----------------------------------------------------------------
  val = 0xD0; //  1101 => Bit[7:6] -> Data format - output full range enable. ==> 11 → full range, tj. puni opseg boja: 0–255 za svaki kanal.
  writeI2C(OV7670_REG_COM15, &val, 1); // skupo, puno info(bita) kada je full range 

  // OVA POSTAVKA ISPOD U VAL JE ZA GRAYSCALE OUTPUT, A IZNAD JE ZA RGB
  // GRAYSCALE setup:<<<<-----------------------------------------------------------
//  val = 0x00;   //  limited range, 16–235, grayscale output
//  writeI2C(OV7670_REG_COM15, &val, 1); // skupo, puno info(bita) kada je full range 
  delay_ms(5);

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW  VEZANO ZA CLOCK WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   REG_CLKRC    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  // podesavanje clock-a
  val = 0x01;
  writeI2C(OV7670_REG_CLKRC, &val, 1);  // Bit[5:0]: Internal clock pre-scalar => F(internal clock) = F(input clock) / (Bit[5:0] + 1) range [0 0000 - 1 1111]
  delay_ms(5);
  // predpostavljam da ova sto sam podesio 1 znaci 1 + 1 pa clock sa xclk koji je 12MHz / 2 = 6 MHz valjda ne znam kolik je sada tu fps???
  /*
    NOTE:
          1. XCLK spolja je 12 MHz sa STM32F407 dolazi na OV7670.
          2. CLKRC (Clock control register) ==> Bit[5:0] → internal pre-scaler.
          3. Formula je : (XCLK)/(Bit[5:0] + 1) ==> 12MHz/(1+1) = 6 MHz ====> F_internalCLOCK = 6MHz
          4. DBLV (PLL) -> Ako PLL enabled (DBLV), frekvencija se množi, npr. PLL x4 → 6 MHz × 4 = 24 MHz. To povećava fps.
          5. Formula za fps je u DBLV.
  */


  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   REG_DBLV    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  val = 0x4A; // DBL: PLL x4  (sta do vraga samog ovo treba da znaci ???)
  writeI2C(OV7670_REG_DBLV, &val, 1);
  delay_ms(5);
  // NOTE: 
  //        val = 0x4A;
  //        0x4 hex (0100) → aktivira PLL x4 multiplikaciju (Input clock x4).
  //        0xA hex (1010) → dodatna podešavanja za regulator/rezervisane bitove, kako predlaže datasheet ili preporuka proizvođača.

  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW  CLOCK ZAVRSEN  WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  


  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_HREF    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // -----------------------------------   HORIZONTAL   -----------------------------------------------------
  // prozor za QVGA
  val = 0x80;   // HREF edge offset to data output, HREF – samo enable i mali offset
  writeI2C(OV7670_REG_HREF, &val, 1);
  delay_ms(5);
  val = 0x16;   // HSTART = offset od 22 pixela od leve ivice senzora
  writeI2C(OV7670_REG_HSTART, &val, 1);
  delay_ms(5);
  val = 0x04;   // HSTOP = offset 4 pixela od desne ivice (ili završetak linije)
  writeI2C(OV7670_REG_HSTOP, &val, 1);
  delay_ms(5);
  /*
    NOTE:
         PRIMJER:
                 Ako senzor ima ukupno 640 piksela u liniji, a HSTART = 16 → znači da 
                 kamera počinje da šalje podatke od 16. piksela, ne od prvog.
                 -
                 Ako HSTOP = 623 → znači da se linija završava na 623. pikselu, dakle ne šalje se kraj linije (624–639).
                 -
                 Dakle offset = udaljenost od referentne nulte tačke (obično početka senzora ili početka video signala) 
                 do stvarnog početka ili kraja slike koju želiš da snimiš.
                 -
                Width=(0x04−0x16) & 0xFF= (0x04+0x100−0x16)=0xEE=238 senzorskih jedinica
                Width=(0x04−0x16) & 0xFF= (4 + 256 − 22 ) = 0xEE=238 senzorskih jedinica
  */

  /*
   NOTE:
          PIX.
          0                                                  640
          |---------------------------------------------------|
                      HSTART                  HSTOP
                        |                       |
                        |-----------------------|
                      HSTART                  HSTOP
                      offset                  offset
      --
      HSTART/HSTOP → “izreži” horizontalni deo senzora koji te zanima (crop).
      SCALING → smanji taj crop na željenu rezoluciju (QQVGA = 160 px).

  */


  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_VREF    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
  // -----------------------------------   VERTIKALNI   -----------------------------------------------------
  //
  val = 0x02;   //  VSTART  – offset prvog reda slike (gornji rub).
  writeI2C(OV7670_REG_VSTART, &val, 1);
  delay_ms(5);
  val = 0x7A;   // VSTOP   – offset posljednjeg reda slike (donji rub).
  writeI2C(OV7670_REG_VSTOP, &val, 1);
  delay_ms(5);
  val = 0x0A;   // VREF    – referentna tačka za vertikalni prozor (obično se ostavlja fabrika, koristi se zajedno sa H/V scalingom).
  writeI2C(OV7670_REG_VREF, &val, 1);
  delay_ms(5);
  /*
    NOTE:
          Kako se računa visina, Slično kao kod horizontalnog:
          -------------------------------------------
          Height (raw)=((VSTOP+VREF_MSB)−VSTART)&0xFF
          -------------------------------------------
          VREF_MSB dolazi iz viših bitova VREF registra ako se koristi više od 8 bita za vertikalnu rezoluciju.
          & 0xFF → ograničava na 8-bitnu vrijednost.
          -------------------------------------------------------------------------------------------
          VSTART  = 0x02 → gdje pocinje vertikalni window, tj. gornji rub slike.
          VSTOP   = 0x7A → gdje se vertikalni window zavrsava, tj. donji rub slike.
          VREF    = 0x0A → referentna vertikalna tacka, uglavnom ne mijenja se, pomaze pri scalingu.
          -------------------------------------------------------------------------------------------
  */



  // WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW   REG_SCALING    WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW

  // Saling kontrola:  STA JE OVO SVE DOLE ISPOD BOG TE STVORIO ??????? 
    // 7) Scaling kontrola
    val = 0x3A; 
    writeI2C(OV7670_REG_SCALING_XSC, &val, 1);
    delay_ms(5);
  /*
   NOTE:
          output_width = raw_window_width * (XSC / 256)
          raw_window_width = 238 senz. jedinica -> HSTART-HSTOP-HREF
          XSC = 0x3A znači da horizontalni window od 238 senzorskih jedinica → skalira na ~160 pixela.
  */
  
    val = 0x35; writeI2C(OV7670_REG_SCALING_YSC, &val, 1);
    delay_ms(5);
    val = 0x11; writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);     // 0x22 -- datasheet vrijednosti
    delay_ms(5);
    val = 0xF1; writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);   // 0xF2 -- datasheet vrijednosti za 30 fps qqvga
    delay_ms(5);
    val = 0x02; writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1); 
    delay_ms(5);




  printUSART2("-> OV7670 inicijalizacija za 160x120 RGB565 zavrsena!\n");

}

// --------------------------------------chat Gpt funk : 

void  OV7670_XCLK_TIM1_init_chtGPT(void)
{
    // 1️⃣ Enable clock za GPIOA
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

    // 2️⃣ Configure PA8 kao AF (TIM1_CH1)
    GPIOA->MODER &= ~GPIO_MODER_MODER8;      // clear mode
    GPIOA->MODER |= GPIO_MODER_MODER8_1;     // AF mode
    GPIOA->AFR[1] &= ~0x0000000F;            // clear AFRH8
    GPIOA->AFR[1] |= 0x00000001;             // AF1 = TIM1_CH1

    // 3️⃣ Enable TIM1 clock
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;

    // 4️⃣ Reset TIM1 registre
    TIM1->CR1 = 0;
    TIM1->CCMR1 = 0;
    TIM1->CCER = 0;
    TIM1->BDTR = 0;

    // 5️⃣ PWM parametri za XCLK ~8 MHz
    // F_timer = 168 MHz, ARR = 20 -> F_pwm = 168/21 ≈ 8 MHz
    TIM1->PSC = 0;        // prescaler 1
    TIM1->ARR = 20;       // auto-reload
    TIM1->CCR1 = 10;      // 50% duty

    // 6️⃣ Configure PWM mode 1, preload enable
    TIM1->CCMR1 |= TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1; // PWM1
    TIM1->CCMR1 |= TIM_CCMR1_OC1PE;                     // preload enable

    // 7️⃣ Enable output
    TIM1->CCER |= TIM_CCER_CC1E;        // active high
    TIM1->BDTR |= TIM_BDTR_MOE;         // Main output enable

    // 8️⃣ Generate update event to load ARR/CCR
    TIM1->EGR = TIM_EGR_UG;

    // 9️⃣ Start timer
    TIM1->CR1 |= TIM_CR1_CEN;
}



// --------------------------------------chat Gpt funk end


void OV7670_XCLK_TIM1_init(void)
{
  // inicijalizacija pin-a na kojem cemo dovesti xclk
  // PA8 
  {
    RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    GPIOA->MODER &= ~GPIO_MODER_MODER8;
    GPIOA->MODER |= GPIO_MODER_MODER8_1;    // AFR
    GPIOA->AFR[1] &= ~0x0000000F;            // TIM1_CH1 
    GPIOA->AFR[1] |= 0x00000001;            // TIM1_CH1 
  }
  {
    RCC->APB2ENR |= RCC_APB2ENR_TIM1EN;
    TIM1->PSC = 0x0000;                       // 168MHz -> 168MHz/1 = 168MHz
    TIM1->ARR = 0x0006;                       // 14     -> 168MHz/(6+1) = 24MHz
    TIM1->CCR1 = 0x003;                      // 50% duty cycle -> 24MHz * 0.5 =(squere) sig ---___---___---___---___ 
                                              // odredili smo sqer sig. 50% high 50% low  freq je 24MHz


    // CR1 za ovaj slucaj nije obavezan ??  (2 linije ispod)
    TIM1->CR1 |= TIM_CR1_ARPE | TIM_CR1_URS;
    TIM1->CR1 &= ~(TIM_CR1_CMS | TIM_CR1_DIR);

    TIM1->CCMR1 &= ~(TIM_CCMR1_OC1M);

    TIM1->CCMR1 |= TIM_CCMR1_OC1PE | TIM_CCMR1_OC1M_2 | TIM_CCMR1_OC1M_1;

    TIM1->CCER &= ~(TIM_CCER_CC1P); // active high
    TIM1->CCER |= TIM_CCER_CC1E;    // enable  capture/compare 
    
    TIM1->BDTR |= TIM_BDTR_MOE;             // Main output enable (bitno za advanced timer!)

    TIM1->EGR |= TIM_EGR_UG;
    TIM1->CR1 |= TIM_CR1_CEN;


  }

}


void initOV7670_RGB565_QQVGA(void)
{

  uint8_t data[4];
  uint32_t utmp32;
  uint8_t val;

  initI2C1(OV7670_REG_WRITE);
  readI2C(OV7670_REG_PID, data, 1);

  utmp32 = data[0];

  printUSART2("-> OV7670 product ID (PID) [0x%xb]\n",utmp32);

  readI2C(OV7670_REG_VER, data, 1);
  utmp32 = data[0];
  printUSART2("-> OV7670 version (VER) [0x%xb]\n",utmp32);



  // --- RESET ---
  val = OV7670_REG_COM7_RESET;
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(100);

  // --- COM7: RGB output, normal mode ---
  val = 0x01;      // Bit0 = RGB, ostatak = 0 (QVGA se kasnije kroz SCALING)
  writeI2C(OV7670_REG_COM7, &val, 1);
  delay_ms(5);

  // --- COM15: full range RGB565 ---
  val = 0xD0;      // 1101 0000 -> full range, RGB565
  writeI2C(OV7670_REG_COM15, &val, 1);
  delay_ms(5);

  // --- Clock ---
  val = 0x01;      // CLKRC prescaler = 1 → Fclk = XCLK / (1+1)
  writeI2C(OV7670_REG_CLKRC, &val, 1);
  delay_ms(5);

  val = 0x4A;      // DBLV: PLL x4, ostali bitovi kao u datasheetu
  writeI2C(OV7670_REG_DBLV, &val, 1);
  delay_ms(5);

  // --- Horizontal crop ---
  val = 0x16;      // HSTART = 22
  writeI2C(OV7670_REG_HSTART, &val, 1);
  delay_ms(1);

  val = 0xB6;      // HSTOP = 182  (HSTOP > HSTART, width ~160)
  writeI2C(OV7670_REG_HSTOP, &val, 1);
  delay_ms(1);

  val = 0x80;      // HREF – enable, offset
  writeI2C(OV7670_REG_HREF, &val, 1);
  delay_ms(1);

  // --- Vertical crop ---
  val = 0x02;      // VSTART = 2
  writeI2C(OV7670_REG_VSTART, &val, 1);
  delay_ms(1);

  val = 0x7A;      // VSTOP = 122  (VSTOP > VSTART, height ~120)
  writeI2C(OV7670_REG_VSTOP, &val, 1);
  delay_ms(1);

  val = 0x0A;      // VREF – referentna tacka, fabricka vrednost
  writeI2C(OV7670_REG_VREF, &val, 1);
  delay_ms(1);

  // --- Scaling za QQVGA (160x120) ---
  val = 0x3A;
  writeI2C(OV7670_REG_SCALING_XSC, &val, 1);  // horizontal scaling
  delay_ms(1);
  val = 0x35;
  writeI2C(OV7670_REG_SCALING_YSC, &val, 1);  // vertical scaling
  delay_ms(1);
  val = 0x11;
  writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);
  delay_ms(1);
  val = 0xF1;
  writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);  
  delay_ms(1);
  val = 0x02;
  writeI2C(OV7670_REG_SCALING_PCLK_DELAY, &val, 1);
  delay_ms(1);

  printUSART2("-> OV7670 inicijalizacija za 160x120 RGB565 zavrsena!\n");
}







void OV7670_SetupQQVGA_Custom_sa_neta(void)
{
    uint8_t val;

    // 1) Reset
    val = OV7670_REG_COM7_RESET;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // 2) Clock & frame rate
    val = 0x00;
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // COM3 - enable DCW (downsample)
    val = 0x04;
    writeI2C(OV7670_REG_COM3, &val, 1);

    // COM7 - QCIF / QQVGA mode
    val = (0x04); // | 0x02 za RGB treba dodati
    writeI2C(OV7670_REG_COM7, &val, 1);

    // COM14 - enable DCW + PCLK divider /4
    val = 0x1A; // bilo je 1A
    writeI2C(OV7670_REG_COM14, &val, 1);

    // Horizontal window
    val = 0x16;
    writeI2C(OV7670_REG_HSTART, &val, 1);
    val = 0x04;
    writeI2C(OV7670_REG_HSTOP, &val, 1);
    val = 0xA4;
    writeI2C(OV7670_REG_HREF, &val, 1);

    // Vertical window
    val = 0x02;
    writeI2C(OV7670_REG_VSTART, &val, 1);
    val = 0x7A;
    writeI2C(OV7670_REG_VSTOP, &val, 1);
    val = 0xA4;
    writeI2C(OV7670_REG_VREF, &val, 1);

    // Scaling
    val = 0x22;
    writeI2C(OV7670_REG_SCALING_DCWCTR, &val, 1);
    val = 0xF2; // bilo je F2
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, &val, 1);

    // COM10 - PCLK & VSYNC polaritet
    val = 0x00;
    writeI2C(OV7670_REG_COM10, &val, 1);

    // ============================
    //  SAMO OVO DODAJ NA KRAJ!
    // ============================
    
    // COM15 - RGB565 format (OBVEZNO!)
    val = 0xD0;
    writeI2C(0x40, &val, 1);

    // PCLK delay (OBVEZNO!)
    val = 0x02;
    writeI2C(0xA2, &val, 1);


    // Smanji kontrast
    val = 0x50;   // bilo 40
    writeI2C(0x56, &val, 1);  // CONTRAST

  
    // Enable AWB
    val = 0xE7;
    writeI2C(0x13, &val, 1);  // COM8
  

  // ovo ispod je dodatak proba da se dobije boja : --------------------------------
//  
//
// COM13 - Gamma, color matrix enable
    val = 0x80;
    writeI2C(0x3D, &val, 1);

    // Matrica boja - OVO JE KLJUČNO ZA BOJU!
    // Standardna matrica za OV7670
    val = 0x80; // MTX1
    writeI2C(0x4F, &val, 1);
    val = 0x80; // MTX2
    writeI2C(0x50, &val, 1);
    val = 0x00; // MTX3
    writeI2C(0x51, &val, 1);
    val = 0x18; // MTX4  0x34
    writeI2C(0x52, &val, 1);
    val = 0x48; // MTX5 0x5A
    writeI2C(0x53, &val, 1);
    val = 0x40; // MTX6 0x11
    writeI2C(0x54, &val, 1);
    
    // Sign matrix coefficients
    val = 0x1E; // MTXS
    writeI2C(0x58, &val, 1);

  // Smanji saturation za prirodnije boje:
  val = 0x30;  // Umjesto 0x40 (smanji za 0x10)
  writeI2C(0x4C, &val, 1);

  //------------------------------------------------ovo ispod manje vise
//    // Gamma values - poboljšava kontrast boja
//    val = 0x00; // GAM1
//    writeI2C(0x7A, &val, 1);
//    val = 0x08; // GAM2
//    writeI2C(0x7B, &val, 1);
//    val = 0x10; // GAM3
//    writeI2C(0x7C, &val, 1);
//    val = 0x20; // GAM4
//    writeI2C(0x7D, &val, 1);
//    val = 0x30; // GAM5
//    writeI2C(0x7E, &val, 1);
//    val = 0x40; // GAM6
//    writeI2C(0x7F, &val, 1);
//    val = 0x50; // GAM7
//    writeI2C(0x80, &val, 1);
//    val = 0x60; // GAM8
//    writeI2C(0x81, &val, 1);
//    val = 0x70; // GAM9
//    writeI2C(0x82, &val, 1);
//    val = 0x80; // GAM10
//    writeI2C(0x83, &val, 1);
//    val = 0x90; // GAM11
//    writeI2C(0x84, &val, 1);
//    val = 0xA0; // GAM12
//    writeI2C(0x85, &val, 1);
//    val = 0xB0; // GAM13
//    writeI2C(0x86, &val, 1);
//    val = 0xC0; // GAM14
//    writeI2C(0x87, &val, 1);
//    val = 0xD0; // GAM15
//    writeI2C(0x88, &val, 1);











// ----------------------------------------- 
  // ZA RGB ISPOD AL NE RADI


  // Dodaj ovo nakon COM8:

// COM13 - Enable color matrix i gamma
//val = 0xC7;
//writeI2C(0x3D, &val, 1);  // COM13
//
//// Minimal color matrix
//val = 0x80; 
//writeI2C(0x4F, &val, 1);  // MTX1
//val = 0x80;
//writeI2C(0x54, &val, 1);  // MTX6


}


void OV7670_SetupQQVGA_Custom_sa_neta_deep_seek(void)
{
    uint8_t val;

    // Reset
    val = OV7670_REG_COM7_RESET;
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // Clock
    val = 0x00;
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // COM7 - QQVGA + RGB
    val = 0x04 | 0x02;
    writeI2C(OV7670_REG_COM7, &val, 1);

    // COM15 - RGB565
    val = 0xD0;
    writeI2C(0x40, &val, 1);

    // Tvoji originalni window settings
    val = 0x16; writeI2C(OV7670_REG_HSTART, &val, 1);
    val = 0x04; writeI2C(OV7670_REG_HSTOP, &val, 1);
    val = 0x80; writeI2C(OV7670_REG_HREF, &val, 1);
    val = 0x02; writeI2C(OV7670_REG_VSTART, &val, 1);
    val = 0x7A; writeI2C(OV7670_REG_VSTOP, &val, 1);
    val = 0x00; writeI2C(OV7670_REG_VREF, &val, 1);

    // COM10 - Sync
    val = 0x00;
    writeI2C(OV7670_REG_COM10, &val, 1);

    // PCLK Delay
    val = 0x02;
    writeI2C(0xA2, &val, 1);

    // AWB
    val = 0xE7;
    writeI2C(0x13, &val, 1);

    // Simple color matrix
    val = 0x80; writeI2C(0x4F, &val, 1);
    val = 0x80; writeI2C(0x54, &val, 1);
}







void OV7670_SetupQQVGA_Fixed(void)
{
    uint8_t val;

    // 1️⃣ Reset
    val = 0x80;  // COM7 reset
    writeI2C(OV7670_REG_COM7, &val, 1);
    delay_ms(200);

    // 2️⃣ Clock & frame rate
    val = 0x00;  // CLKRC = divide by 1
    writeI2C(OV7670_REG_CLKRC, &val, 1);

    // 3️⃣ Enable downsampling
    val = 0x04;  // COM3 - DCW enable
    writeI2C(OV7670_REG_COM3, &val, 1);

    // 4️⃣ QQVGA mode + RGB
    val = 0x04;  // COM7 - QQVGA RGB
    writeI2C(OV7670_REG_COM7, &val, 1);

    // 5️⃣ COM14 - enable DCW + PCLK /4
    val = 0x1A;
    writeI2C(OV7670_REG_COM14, &val, 1);

    // 6️⃣ Horizontal window
    writeI2C(OV7670_REG_HSTART, (uint8_t[]){0x16}, 1);
    writeI2C(OV7670_REG_HSTOP,  (uint8_t[]){0x04}, 1);
    writeI2C(OV7670_REG_HREF,   (uint8_t[]){0x80}, 1);  // standard QQVGA

    // 7️⃣ Vertical window
    writeI2C(OV7670_REG_VSTART, (uint8_t[]){0x02}, 1);
    writeI2C(OV7670_REG_VSTOP,  (uint8_t[]){0x7B}, 1);
    writeI2C(OV7670_REG_VREF,   (uint8_t[]){0x0A}, 1); // ključno za „tepih“ problem

    // 8️⃣ Scaling registers
    writeI2C(OV7670_REG_SCALING_DCWCTR, (uint8_t[]){0x22}, 1);
    writeI2C(OV7670_REG_SCALING_PCLK_DIV, (uint8_t[]){0xF2}, 1);

    // 9️⃣ COM10 - PCLK rising, VSYNC high, HSPOL low
    writeI2C(OV7670_REG_COM10, (uint8_t[]){0x00}, 1);

    // 10️⃣ Color mode setup
    writeI2C(0x8C, (uint8_t[]){0x00}, 1); // RGB444 disable
    writeI2C(0x40, (uint8_t[]){0x10 | 0xC0}, 1); // RGB565
    writeI2C(0x3A, (uint8_t[]){0x04}, 1); // TSLB (RGB565)
    writeI2C(0x3D, (uint8_t[]){0x80}, 1); // gamma enable, UV auto adjust

    // 11️⃣ Color matrix coefficients (standard QQVGA)
    writeI2C(0x4F, (uint8_t[]){0x80}, 1);
    writeI2C(0x50, (uint8_t[]){0x80}, 1);
    writeI2C(0x51, (uint8_t[]){0x00}, 1);
    writeI2C(0x52, (uint8_t[]){0x22}, 1);
    writeI2C(0x53, (uint8_t[]){0x5E}, 1);
    writeI2C(0x54, (uint8_t[]){0x80}, 1);
    writeI2C(0x58, (uint8_t[]){0x9E}, 1);

    // 12️⃣ Gamma curve
    uint8_t gamma_values[] = {16, 30, 53, 90, 105, 118, 130, 140, 150, 160, 180, 195, 215, 230, 244, 16};
    for(int i=0; i<16; i++) {
        writeI2C(0x7B + i, &gamma_values[i], 1);
    }

    // 13️⃣ Edge enhancement / AWB
    writeI2C(0x41, (uint8_t[]){0x38}, 1);

    // 14️⃣ Mirror / flip (opciono)
    writeI2C(0x1E, (uint8_t[]){0x31}, 1);

    // 15️⃣ Contrast / saturation (po potrebi)
    writeI2C(0x56, (uint8_t[]){0x20}, 1); // kontrast
    writeI2C(0x7B, (uint8_t[]){0x04}, 1); // gamma correction
    writeI2C(0x4F, (uint8_t[]){0x40}, 1); // saturacija

    delay_ms(100);
}





