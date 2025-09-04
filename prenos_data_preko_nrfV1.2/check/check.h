#ifndef CHECK_H
#define CHECK_H
//-----------------------------------------
#include <stdint.h>
#include "../DCMI/dcmi.h"


extern volatile uint32_t rx_index;
extern volatile uint8_t frame_ready;

static const volatile uint16_t* current_buffer;

#define CHUNK_SIZE 32

static uint32_t total_size;
static uint32_t send_index;


// ----- Tipovi -----
typedef struct {
    uint8_t reg;
    uint8_t expected;
    const char* name;
} OV7670_RegCheck;


// ----- Liste  -------
extern const uint8_t regs_to_check[];
extern const OV7670_RegCheck regs_to_verify[];



// ----- Funkcije -----
int verify_DMA2_for_OV7670(uint16_t* buff0, uint32_t tsize);
void dump_ov7670_regs(void);
void verify_ov7670_regs(void);


void OV7670_TestPins(uint32_t duration_ms, uint32_t interval_ms);
void OV7670_CheckPins_Interval(uint32_t interval_ms);


void DCMI_CaptureFrame_Debug(void);
void verify_full_frame_buffer(uint16_t* buf, uint32_t size);
void DCMI_DebugStatus(void);



void OV7670_CheckRegisters(void);
void OV7670_CheckPins_Interval_V2(uint32_t interval_ms);
void printFrameBuffer(uint32_t n);
void debugFrameBuffer(void);
void printNonZeroPixels(void);

void OV7670_Test_ReadFrame(void);
void OV7670_TestPolarityCombos(void);
void OV7670_TestFIFO(void);
void OV7670_VerifyRegisters(void);
void DCMI_CheckConfig(void);
void check_data_pins_activity(void);
void check_frame_activity(void);
void check_frame_detailed(void);
void checkDMA2_Stream1_status(void);
void OV7670_VerifyRegisters_Custom(void);
void check_data_pins_activity_edges(void);
void dma2_debug(void);
void DCMI_debugStatus(void);
void send_frame_buffer_USART(volatile uint16_t* buffer, uint32_t size);
void send_data_via_nrfmodul(volatile uint16_t* buffer, uint32_t size);
void send_chunk(void);
void startSlaveNodeRX();
void send_next_packet(volatile uint16_t* buffer, uint32_t size);


//-----------------------------------------
#endif // !CHECK_H
