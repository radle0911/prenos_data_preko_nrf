#include "ov7670/ov7670.h"
#include "ov7670/ov7670_reg.h"
#include "i2c/i2c.h"
#include "ov7670/ov7670_init.h"
#include "stm32f4xx.h"
#include "usart/misc.h"
#include "usart/usart.h"
#include "delay/delay.h"
#include "check/check.h"
#include "./dma/dma.h"
#include "DCMI/dcmi.h"
#include "nRF24L01/nRF24L01.h"
#include "gpio/gpioc.h"
#include <stdint.h>
#include "lis302dl/lis302dl.h"
#include <string.h>
#include <stddef.h>  // <--- za NULL


#define FRAME_START_1 0xAA
#define FRAME_START_2 0x55


void autic_dma_interrupt();
void DMA2_Stream1_IRQHandler(void);

void autic_double_buffer();
void kontroler_double_buffer();

void sendFrameNRF(volatile uint16_t* frame_buffer, uint32_t length);
void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length);


volatile uint16_t* frame_to_send = NULL; // pokazuje koji buffer je spreman za slanje
volatile uint8_t buffer_ready = 0; // 0 = ništa, 1 = M0AR spreman, 2 = M1AR spreman

volatile uint8_t frame_ready = 0;
volatile uint8_t citamo_buffer = 0;



int main(void)
{
  uint8_t node_type = NRF24L01_NODE_TYPE_RX;
  // Osnovna inicijalizacija :
  {
    initUSART2(USART2_BAUDRATE_921600);
    initSYSTIMER_TIM7();
    initSYSTIMER();     // raditi provjeru vremena
  }

  printUSART2("izvrsavamo inicijalizaciju za Nrf modul\n\n\n");

  initGPIOC6_GND();
  delay_ms(10);
  chkConnection_GPIOC6_GND(&node_type); // 0->RX->(lebdi zica) | 1->TX->(spojen na GND)

  initnRF24L01(node_type);
  delay_ms(1000);


  printUSART2("\n\nwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");
  printUSART2("w                   nRF24L01 Tx[1]-Rx[0] => [%d]               w\n",node_type);
  printUSART2("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww\n");




  if (node_type == NRF24L01_NODE_TYPE_TX) {


  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW\n");
  printUSART2("WWWWWWWWWWW  Circular buffer od OV7679   WWWWWWWWWWWWW\n");
  printUSART2("WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWwWWWWWWW\n\n\n");

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


  OV7670_SetupQQVGA_Custom_sa_neta();     // OVO JE MOJA I OVO JE ISPRAVNOA 
  delay_ms(1000);

  // NOTE:
  // Nakon upisivanja vrsimo provjeru upisa, tj. da li su dobro upisane zeljene vrijednosti

  OV7670_VerifyRegisters_Custom();
  printUSART2("================================================================\n");

  //DCMI_Init_OV7670();   // igraje se sa PCLPOL vjerovatno pogresan ili ne...
  DCMI_Init_OV7670_continuous_mode();   // ovo je za continuos mode

  printUSART2("DCMI inicijalizacija je zavrsena, vrsimo provjeru: \n\n");
  DCMI_CheckConfig(); // NOTE:  pin D0 je 0 zato sto je mracna soba, upali svjetlo 


  initDMA2_for_OV7670_continuous_mode_double_buffer(frame_buffer0, frame_buffer1, FRAME_MAX);
  delay_ms(100);

  checkDMA2_Stream1_status();



  DCMI_start_continuous_mode();

  }else { // NOTE: Ovo je za RX blok (kontrolor)
    initLIS320DL(); // akcelerometar
    delay_ms(10);
  }

  conRegNRF24L01(NRF24L01_EN_AA, 0x00);     // gasimo ACK
  delay_ms(200);
  printUSART2("#################################################################\n");
  printUSART2("Da li su upisane vrijednosti u nRF modul ???\n");
  printUSART2("NRF24L01_RF_SETUP = 0x%xh\n", getRegNRF24L01(NRF24L01_RF_SETUP));
  printUSART2("NRF24L01_EN_AA = 0x%xh\n", getRegNRF24L01(NRF24L01_EN_AA));
  printUSART2("#################################################################\n");
  


  if (node_type == NRF24L01_NODE_TYPE_TX) {
    //autic_double_buffer();
    autic_dma_interrupt();
    // komande_rx();
  }else {
    kontroler_double_buffer();  // za ovo se ne bi trebalo imati nista mjenjati
    // komande_tx();
  }




//  while (1){
//
//    if ((DMA2_Stream1->CR & DMA_SxCR_CT) == DMA_SxCR_CT) { // ovo znaci current_target = 1, a to znaci da se upisuju podaci u M1AR, a M0AR je slobodan za citanje
//      // Citamo M0AR
//      if (citamo_buffer == 0) {
//        //printUSART2("Citamo iz buffera-0 -> [%d us]\n",getSYSTIMER() - vrijeme);
//        send_frame_buffer(frame_buffer0, FRAME_MAX);    // radi ali veoma lose i sporo
//        citamo_buffer = 1;
//        //vrijeme = getSYSTIMER();
//      }
//    }else { 
//      // citamo M1AR
//      if (citamo_buffer == 1) {
//        //printUSART2("Citamo iz buffera-1 -> [%d us]\n",getSYSTIMER() - vrijeme);
//        send_frame_buffer(frame_buffer1, FRAME_MAX);  // radi ali veoma lose i sporo
//        citamo_buffer = 0;
//        //vrijeme = getSYSTIMER();
//      }
//    }// else CT blok
//
//
//  } // while petlja
//

  return 0;
}





void autic_double_buffer()
{
  while (1) {
    if ((DMA2_Stream1->CR & DMA_SxCR_CT) == DMA_SxCR_CT) { // ovo znaci current_target = 1, a to znaci da se upisuju podaci u M1AR, a M0AR je slobodan za citanje
      // Citamo M0AR
      if (citamo_buffer == 0) {


        //printUSART2("frame_buffer0 = 0x%xh\n",frame_buffer0[500]);
        sendFrameNRF((uint16_t*)frame_buffer0, FRAME_MAX); // send frame via nRF to MCU 

        citamo_buffer = 1;
      }
    }else {
      // citamo M1AR
      if (citamo_buffer == 1) {


        //printUSART2("frame_buffer1 = 0x%xh\n",frame_buffer1[500]);
        sendFrameNRF((uint16_t*)frame_buffer1, FRAME_MAX); // send frame via nRF to MCU 
        
        
        citamo_buffer = 0;
      }
    }
  }
}




void sendFrameNRF(volatile uint16_t* frame_buffer, uint32_t length) 
{
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



void kontroler_double_buffer()
{
  while (1) {
    receiveFrameNRF((uint16_t*)frame_buffer, FRAME_MAX);
  }
}


void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length) 
{
    uint8_t packet[32];
    uint32_t bytes_received = 0;
    uint32_t total_bytes = length * 2; // svaki pixel = 2 bajta

    while (1) {
        if (dataReadyNRF24L01() == NRF_DATA_READY) {
            rxDataNRF24L01(packet);

            // provjera start bajtova
            if (packet[0] == FRAME_START_1 && packet[1] == FRAME_START_2) {
                bytes_received = 0;
                continue;
            }

            // koliko bajtova još fali do kraja frame-a
            uint32_t remaining = total_bytes - bytes_received;
            uint32_t copy_size = (remaining >= 32) ? 32 : remaining;

            // direktno kopiranje bajtova u frame buffer
            memcpy(((uint8_t*)frame_buffer) + bytes_received, packet, copy_size);

            bytes_received += copy_size;

            if (bytes_received >= total_bytes) {
                send_frame_buffer(frame_buffer, length);
                break;
            }
        }
    }
}









//void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length) 
//{
//    uint8_t packet[32];
//    uint32_t bytes_received = 0;
//    uint32_t total_bytes = length * 2; // svaki pixel = 2 bajta
//
//    while (1) {
//        // čekaj paket
//        if (dataReadyNRF24L01() == NRF_DATA_READY) {
//            rxDataNRF24L01(packet);
//
//            // Ako paket počinje sa FRAME_START, resetujemo buffer
//            if (packet[0] == FRAME_START_1 && packet[1] == FRAME_START_2) {
//                bytes_received = 0;  // počinje novi frame
//                continue;            // preskoči start bajtove
//            }
//
//            // kopiraj podatke u frame buffer
//            for (int i = 0; i < 32 && bytes_received < total_bytes; i++) {
//                uint32_t index = bytes_received / 2;
//                if (bytes_received % 2 == 0) {
//                    // low byte
//                    frame_buffer[index] = packet[i];
//                } else {
//                    // high byte
//                    frame_buffer[index] |= ((uint16_t)packet[i] << 8);
//                }
//                bytes_received++;
//            }
//
//            // ako je frame kompletiran
//            if (bytes_received >= total_bytes) {
//                send_frame_buffer(frame_buffer, FRAME_MAX);  // pošalji dalje
//                break;
//            }
//        }
//    }
//}

















//
//// ovo smo koristili samo da provjerimo da li radi circular buffer 
//// onaj IRQ se poziva i za M0AR i za M1AR
//void DMA2_Stream1_IRQHandler(void)
//{
//  if(DMA2->LISR & DMA_LISR_HTIF1) {     // half-transfer interupt flag
//    DMA2->LIFCR = DMA_LIFCR_CHTIF1;  // clear flag
//    //citamo_buffer = 0;
//    //        printUSART2("1.\n");
//  }
//  if(DMA2->LISR & DMA_LISR_TCIF1) {     // transfer complete interupt flag
//    DMA2->LIFCR = DMA_LIFCR_CTCIF1;  // clear flag
//    //citamo_buffer = 1;
//    //        printUSART2("2\n");
//  }
//}
//


//
//void DMA2_Stream1_IRQHandler(void)
//{
//    if (DMA2->LISR & DMA_LISR_TCIF1) // Transfer Complete
//    {
//        DMA2->LIFCR |= DMA_LIFCR_CTCIF1; // clear flag
//        frame_ready = 1; // samo postavi flag
//    }
//}
//
//









// NOTE: ove 2 funk ispod su ako budem zelio da probam sa interuptima:  (kaze da je CPU frendly)
//
//
void DMA2_Stream1_IRQHandler(void)
{
    // Half Transfer (prva polovina M0AR ili M1AR gotova)
    if(DMA2->LISR & DMA_LISR_HTIF1) {
        DMA2->LIFCR = DMA_LIFCR_CHTIF1;  // clear flag
        // možeš ovdje signalizirati polu-buffer ako želiš
    }

    // Transfer Complete (full buffer gotov)
    if(DMA2->LISR & DMA_LISR_TCIF1) {
        DMA2->LIFCR = DMA_LIFCR_CTCIF1;  // clear flag

        if ((DMA2_Stream1->CR & DMA_SxCR_CT) == 0) {
            // DMA je trenutno pisao M0AR → M1AR je sada slobodan za čitanje
            frame_to_send = frame_buffer1;
        } else {
            // DMA je trenutno pisao M1AR → M0AR je sada slobodan
            frame_to_send = frame_buffer0;
        }

        buffer_ready = 1; // flag da je buffer spreman za slanje
    }
}


void autic_dma_interrupt() {
    while(1) {
        if(buffer_ready) {
            // pošalji frame
            sendFrameNRF(frame_to_send, FRAME_MAX);
            buffer_ready = 0; // reset flag
        }

        // ovdje možeš raditi i druge stvari, npr. LED blink, UART, itd.
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










