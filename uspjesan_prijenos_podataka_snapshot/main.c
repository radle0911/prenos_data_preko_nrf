#include "ov7670/ov7670.h"
#include "ov7670/ov7670_reg.h"
#include "i2c/i2c.h"
#include "ov7670/ov7670_init.h"
#include "usart/misc.h"
#include "usart/usart.h"
#include "delay/delay.h"
#include "check/check.h"
#include "./dma/dma.h"
#include "nRF24L01/nRF24L01.h"
#include "gpio/gpioc.h"
#include "spi/spi.h"
#include "DCMI/dcmi.h"
#include <stdint.h>


#define FRAME_START_1 0xAA
#define FRAME_START_2 0x55



void autic();
void kontroler();

void sendFrameNRF(uint16_t* frame_buffer, uint32_t length);
void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length);




int main(void)
{
  uint8_t node_type = NRF24L01_NODE_TYPE_RX;

  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // raditi provjeru vremena
  }

  printUSART2("start code\n");
  // nrf modul inicijlaiziacija

  initGPIOC6_GND();
  delay_ms(10);
  chkConnection_GPIOC6_GND(&node_type); // 0->RX->(lebdi zica) | 1->TX->(spojen na GND)

  initnRF24L01(node_type);
  delay_ms(1000);

  printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w                   nRF24L01 Tx[1]-Rx[0] => [%d]               w\n",node_type);
  printUSART2("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");







  if (node_type == NRF24L01_NODE_TYPE_TX) {
  

  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWw\n");
  printUSART2("WWWWWWWWWWW  Snapshot od OV7679   WWWWWWWWWWWWW\n");
  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWw\n\n\n");





  // NOTE:
  // Da bi provjerili da li je OV7670 "ziv" potrebno je da upostavimo 
  // komunikaciju i dobiojemo ID. Da bi dobili ID, potrebno je da dovedemo
  // XCLK clock na OV7670:

  OV7670_XCLK_TIM1_init();
  delay_ms(100);

  // NOTE:
  // Nakon toka mozemo mozemo dobiti ID kamere. Pozivamo funk. koja vrsi u sebi
  // inicijalizaciju I2C : "initI2C1(OV7670_REG_WRITE);" gdje je "OV7670_REG_WRITE == 0x42"

  getOV7670_ID();   // Vrsi ispis PID i VER
  delay_ms(50);


  // NOTE:
  // Kada smo se uvjerili da je kamera "ziva" upisujemo zeljene vrijednosti u kameru


  OV7670_SetupQQVGA_Custom_sa_neta();
  // OV7670_InitQQVGA_RGB565();    // upisujemo potrebne vrijendosti u registre kamere
  delay_ms(1000);

  // NOTE:
  // Nakon upisivanja vrsimo provjeru upisa, tj. da li su dobro upisane zeljene vrijednosti

  //OV7670_VerifyRegisters();
  OV7670_VerifyRegisters_Custom();
  //  printUSART2("MISMATCH! u COM14 je navodno takav, provjeri detaljno kasnije\n");
  printUSART2("================================================================\n");

  DCMI_Init_OV7670();   // igraje se sa PCLPOL vjerovatno pogresan ili ne...

  printUSART2("DCMI inicijalizacija je zavrsena, vrsimo provjeru: \n\n");
  DCMI_CheckConfig(); // NOTE:  pin D0 je 0 zato sto je mracna soba, upali svjetlo 


  //  check_frame_activity(); // Broj linija je malan radi delay_ms(1);

  //  check_frame_detailed();  // NOTE: prevelik i ruzan ispis, al potvrdjuje da sve ispravno radi



  initDMA2_for_OV7670_snapshot(frame_buffer, FRAME_MAX);
  delay_ms(100);

  checkDMA2_Stream1_status();

  printUSART2("================start snapshot==============\n");

  // ovo je kao generalna funk, ako zelim preko userbtn da radim snapshot
  DCMI_snapshot_debug(frame_buffer, FRAME_MAX); // ovo radi savrseno !!!
  //  DCMI_snapshot_debug_full(frame_buffer, FRAME_MAX);

  //  DCMI_debugStatus();
  //
  //  printUSART2("_______SVE IZVRSENE PROVJERAVAMO ELEMENTE________\n");
  //
  //int count = 0;
  //int prikaz = 0;
  //for (int i = 0; i < FRAME_MAX ; i++) {
  //    if (frame_buffer[i] != 0) {
  //      if (prikaz < 10) {
  //        printUSART2("frame_buffer[%d] = %d (0x%xb)\n", i, frame_buffer[i], frame_buffer[i]);
  //      }
  //        count++;
  //        prikaz++;
  //      //  if (count >= 20) break;
  //    }
  //}
  //
  //  printUSART2("Ukupan broj elemenata u frame_buffer-u je = %d\n",count);
  //  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW\n",count);
  //
  //  send_frame_buffer(frame_buffer, FRAME_MAX);

  }

  if (node_type == NRF24L01_NODE_TYPE_TX) {
    autic();
  }else {
    kontroler();
  }


  return 0;
}


void autic()
{
  while (1) {
    DCMI_snapshot_debug(frame_buffer, FRAME_MAX); // get snapshot in frame_buffer
    //send_frame_buffer(frame_buffer, FRAME_MAX);   // send via USART to pc 
    //printUSART2("0x%xh\n",frame_buffer[500]);
    sendFrameNRF((uint16_t*)frame_buffer, FRAME_MAX); // send frame via nRF to MCU 
  }
}




void sendFrameNRF(uint16_t* frame_buffer, uint32_t length) {
  uint8_t packet[32];  // maksimalno što nRF24L01 može poslati odjednom
  uint32_t i, j = 0;

  // --- 1) Pošalji start frame signale (2 bajta) ---
  packet[0] = 0xAA;  // primjer, start byte 1
  packet[1] = 0x55;  // primjer, start byte 2
  txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);  // šalje samo ova dva bajta, ostatak paketa se ignoriše

  for (i = 0; i < length; i++) {
    // niz od 16 bita se pretvara u 2 bajta
    packet[j++] = (uint8_t)(frame_buffer[i] & 0xFF);        // low byte
    packet[j++] = (uint8_t)((frame_buffer[i] >> 8) & 0xFF); // high byte

    // kad popunimo paket do 32 bajta, šaljemo ga
    if (j == 32) {
      txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
      j = 0;
    }
  }

  // ako ostane još nešto što nije poslano (manje od 32 bajta)
  if (j > 0) {
    txDataNRF24L01((uint8_t*)c_nrf_slave_addr, packet);
  }
}



void kontroler()
{
  while (1) {
    receiveFrameNRF((uint16_t*)frame_buffer, FRAME_MAX);
  }
}




void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length) {
  uint8_t packet[32];
  uint32_t bytes_received = 0;
  uint32_t total_bytes = length * 2; // jer svaki pixel = 2 bajta
  uint8_t waiting_for_start = 1;

  while (1) {
    // cekaj dok ne stigne paket
    if (dataReadyNRF24L01() == NRF_DATA_READY) {
      rxDataNRF24L01(packet);

      if (waiting_for_start) {
        // provjera da li je stigao start frame
        if (packet[0] == FRAME_START_1 && packet[1] == FRAME_START_2) {
          waiting_for_start = 0;
          bytes_received = 0;
        }
      } else {
        // kopiraj podatke iz paketa u frame_buffer
        for (int i = 0; i < 32 && bytes_received < total_bytes; i++) {
          uint32_t index = bytes_received / 2;
          if (bytes_received % 2 == 0) {
            // low byte
            frame_buffer[index] = packet[i];
          } else {
            // high byte
            frame_buffer[index] |= ((uint16_t)packet[i] << 8);
          }
          bytes_received++;
        }

        // ako smo primili cijeli frame -> break
        if (bytes_received >= total_bytes) {
          //printUSART2("Frame primljen, bar msm da je\n\n\n\n");
          send_frame_buffer(frame_buffer, FRAME_MAX);   // send via USART to pc 
          //printUSART2("0x%xh\n",frame_buffer[500]);
          break;
        }
      }
    }
  }
}

/*

 NOTE: ovo sada ispod je za non-blockin primanje podataka :
        👉 Ovu processFrameNonBlocking() funkciju pozivaš u glavnoj while(1) petlji.
        Ako nema paketa, samo odmah izađe.
        Ako naiđe na 0xAA 0x55, prebaci se u receiving mode.
        Kada sakupi length uzoraka, vrati se u stanje čekanja headera.
        Ovim načinom nikad ne blokiraš CPU – možeš paralelno raditi i druge stvari (npr. obrađivati UART, LED, senzore).


#define STATE_WAIT_HEADER 0
#define STATE_RECEIVING   1

typedef struct {
    uint8_t state;
    uint32_t index;
    uint32_t expected_length;
} FrameReceiver;

FrameReceiver rx = { STATE_WAIT_HEADER, 0, 0 };

void processFrameNonBlocking(uint16_t* frame_buffer, uint32_t length) {
    uint8_t packet[32];
    int8_t status;

    // provjeri da li je stigao neki paket
    status = dataReadyNRF24L01();
    if (status != NRF_DATA_READY) {
        return; // nema ništa -> odmah izlazimo (non-blocking)
    }

    rxDataNRF24L01(packet);

    if (rx.state == STATE_WAIT_HEADER) {
        if (packet[0] == 0xAA && packet[1] == 0x55) {
            rx.state = STATE_RECEIVING;
            rx.index = 0;
            rx.expected_length = length;
        }
    } 
    else if (rx.state == STATE_RECEIVING) {
        for (int i = 0; i < 32; i += 2) {
            if (rx.index < rx.expected_length) {
                frame_buffer[rx.index++] =
                    ((uint16_t)packet[i+1] << 8) | packet[i];
            } else {
                rx.state = STATE_WAIT_HEADER; // frame gotov
                break;
            }
        }
    }
}






NOTE: iii imamo ovo: 
Odlično 💡, znači sad pravimo event/callback varijantu – umjesto da ti stalno provjeravaš da li je frame gotov, 
funkcija sama zove tvoj “callback” kad se frame kompletira. To je zgodno jer razdvaja prijem podataka i obradu.
Evo primjer:


#define STATE_WAIT_HEADER 0
#define STATE_RECEIVING   1

typedef struct {
    uint8_t state;
    uint32_t index;
    uint32_t expected_length;
    uint16_t* buffer;
    void (*onFrameComplete)(uint16_t* buf, uint32_t len); // callback pointer
} FrameReceiver;

FrameReceiver rx;

void initFrameReceiver(uint16_t* buf, uint32_t len, 
                       void (*callback)(uint16_t* buf, uint32_t len)) {
    rx.state = STATE_WAIT_HEADER;
    rx.index = 0;
    rx.expected_length = len;
    rx.buffer = buf;
    rx.onFrameComplete = callback;
}

void processFrameNonBlocking(void) {
    uint8_t packet[32];
    int8_t status;

    status = dataReadyNRF24L01();
    if (status != NRF_DATA_READY) {
        return; // nema podataka, izlazimo
    }

    rxDataNRF24L01(packet);

    if (rx.state == STATE_WAIT_HEADER) {
        if (packet[0] == 0xAA && packet[1] == 0x55) {
            rx.state = STATE_RECEIVING;
            rx.index = 0;
        }
    } 
    else if (rx.state == STATE_RECEIVING) {
        for (int i = 0; i < 32; i += 2) {
            if (rx.index < rx.expected_length) {
                rx.buffer[rx.index++] =
                    ((uint16_t)packet[i+1] << 8) | packet[i];
            } else {
                // frame završen -> zovemo callback
                if (rx.onFrameComplete) {
                    rx.onFrameComplete(rx.buffer, rx.expected_length);
                }
                rx.state = STATE_WAIT_HEADER;
                break;
            }
        }
    }
}



WARN: A koristiš ga ovako:


#define FRAME_MAX 19200
uint16_t frame_buffer[FRAME_MAX];

void myFrameHandler(uint16_t* buf, uint32_t len) {
    // ovdje ti obradiš frame (npr. šalješ na USART ili renderuješ)
    printUSART2("Frame primljen! dužina=%lu\n", len);
}

int main(void) {
    initFrameReceiver(frame_buffer, FRAME_MAX, myFrameHandler);

    while (1) {
        processFrameNonBlocking();
        // druge stvari (blink LED, senzori, itd.)
    }
}

NOTE: 
✅ Prednost: čim kompletira frame, automatski ti “javi” kroz myFrameHandler().
✅ Nema blokiranja, CPU slobodan između paketa.


 */




