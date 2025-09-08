#ifndef DMA_H
#define DMA_H
//------------------------------------------------------------------
#include <stdint.h>

void initDMA2_for_OV7670_snapshot(volatile uint16_t* buff0, uint16_t tsize);
void initDMA2_for_OV7670_continuous_mode(volatile uint16_t* buff0, uint16_t tsize);
void initDMA2_for_OV7670_continuous_mode_double_buffer(volatile uint16_t* buff0,volatile uint16_t* buff1, uint16_t tsize);


//------------------------------------------------------------------
#endif // !DMA_H
