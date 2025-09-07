#ifndef DMA_H
#define DMA_H
//------------------------------------------------------------------
#include <stdint.h>

void initDMA2_for_OV7670(uint32_t* buff0,uint32_t* buff1,uint32_t tsize);     // NOTE:   ovo bi se trebalo 
//                                                                                       pozvati u DCMI init
//                                                                                       file.

void initDMA2_for_OV7670_snapshot(volatile uint16_t* buff0, uint16_t tsize);

//void initDMA2_for_OV7670_snapshot(uint32_t* buff0, uint32_t tsize);         // WARN:    ovo izbrisati, kada se pozove glavni
//void initDMA2_for_OV7670_snapshot(uint16_t* buff0, uint32_t tsize);         // WARN:    ovo izbrisati, kada se pozove glavni
//                                                                                      ovo je testna funkcija za snapshot
//
//                                                                                      jednu sliku da se provjeri da li
//                                                                                      radi sve kako treba

//------------------------------------------------------------------
#endif // !DMA_H
