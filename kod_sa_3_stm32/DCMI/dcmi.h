#ifndef DCMI_H
#define DCMI_H
// -----------------------------------------
#include <stdint.h>



#define IMG_W 160
#define IMG_H 120
#define FRAME_MAX (IMG_W*IMG_H)        // broj piksela


// snaphost mode
//extern volatile uint16_t frame_buffer[IMG_W*IMG_H]; // 160*120 = 19 200

// circular mode
extern volatile uint16_t frame_buffer0[IMG_W*IMG_H]; // 160*120 = 19 200
extern volatile uint16_t frame_buffer1[IMG_W*IMG_H]; // 160*120 = 19 200


void DCMI_Init_OV7670(void); 
void OV7670_CheckPins(void); 

// ovo je kao generalna funk, ako zelim preko userbtn da radim snapshot
void DCMI_snapshot_debug(volatile uint16_t* buffer, uint16_t frame_size);
void DCMI_Init_OV7670_continuous_mode(void);
void DCMI_start_continuous_mode();

// -----------------------------------------
#endif // !DCMI_H
