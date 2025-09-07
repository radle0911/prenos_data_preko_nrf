#ifndef DCMI_H
#define DCMI_H
// -----------------------------------------
#include <stdint.h>



#define IMG_W 160
#define IMG_H 120
#define FRAME_MAX (IMG_W*IMG_H)        // broj piksela


// snaphost mode
extern volatile uint16_t frame_buffer[IMG_W*IMG_H]; // 160*120 = 19 200

// circular mode
extern volatile uint16_t frame_buffer0[IMG_W*IMG_H]; // 160*120 = 19 200
extern volatile uint16_t frame_buffer1[IMG_W*IMG_H]; // 160*120 = 19 200


void DCMI_Init_OV7670(void);
void DCMI_CaptureFrame(void);

void OV7670_CheckPins(void);
void OV7670_CheckPins_Fluctuation(uint32_t interval_ms);
void DCMI_Init_OV7670_Snapshot(void);

void DCMI_CaptureFrame_DebugPolling(void);
uint16_t get_pixel(uint32_t *buf, uint32_t pixel_index);

void DCMI_Init_OV7670_SnapshotOnly(void);



void OV7670_CaptureSnapshot(void);

void OV7670_CaptureSnapshot_VSYNC(void);
void OV7670_PrepareForCapture(void);
void OV7670_PrepareForSnapshot(void);
void OV7670_PrepareSnapshot(void);
void DCMI_TestCapture(void);

// ovo je kao generalna funk, ako zelim preko userbtn da radim snapshot
void DCMI_snapshot_debug(volatile uint16_t* buffer, uint16_t frame_size);
void DCMI_snapshot_debug_full(volatile uint16_t* buffer, uint16_t frame_size);
void DCMI_Init_OV7670_continuous_mode(void);
void DCMI_start_continuous_mode();

// -----------------------------------------
#endif // !DCMI_H
