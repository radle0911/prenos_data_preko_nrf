#ifndef PRIJENOS_H
#define PRIJENOS_H
// -------------------------------
#include <stdint.h>
#include <stddef.h>  // <--- za NULL
#include "../lis302dl/lis302dl.h"



#define FRAME_START_1 0xAA
#define FRAME_START_2 0x55


void autic_dma_interrupt();
void DMA2_Stream1_IRQHandler(void);

void autic_double_buffer();
void kontroler_double_buffer();

void sendFrameNRF(volatile uint16_t* frame_buffer, uint32_t length);
void receiveFrameNRF(uint16_t* frame_buffer, uint32_t length);


extern volatile uint16_t* frame_to_send; // pokazuje koji buffer je spreman za slanje
extern volatile uint8_t buffer_ready; // 0 = nista, 1 = M0AR spreman, 2 = M1AR spreman
extern volatile uint8_t frame_ready;
extern volatile uint8_t citamo_buffer;

// za kontrolu autica
extern int8_t accel_data[ACC_DATA_LENGTH];



void startMasterNodeSYS();



// -------------------------------
#endif // !PRIJENOS_H
