#ifndef CHECK_H
#define CHECK_H
//-----------------------------------------
#include <stdint.h>


void OV7670_TestPins(uint32_t duration_ms, uint32_t interval_ms);
void send_frame_buffer(volatile uint16_t* buffer, uint32_t size);


//-----------------------------------------
#endif // !CHECK_H
