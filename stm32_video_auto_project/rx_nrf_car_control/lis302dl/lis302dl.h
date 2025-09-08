#ifndef LIS302DL_H
#define LIS302DL_H
//------------------------------------------
#include <stdint.h>

#define ACC_DATA_LENGTH                     3

// Adrese registara LIS302DL
#define     lis302dl_WHO_AM_I               0x0F
#define     lis302dl_CTRL_REG1              0x20
#define     lis302dl_CTRL_REG1_DR_READ      0x80
#define     lis302dl_CTRL_REG2              0x21
#define     lis302dl_CTRL_REG3              0x22    //  [Interrupt CTRL register]
#define     lis302dl_HP_FILTER_RESET        0x23
#define     lis302dl_STATUS_REG             0x27
#define     lis302dl_OUT_X                  0x29
#define     lis302dl_OUT_Y                  0x2B
#define     lis302dl_OUT_Z                  0x2D
#define     lis302dl_FF_WU_CFG_1            0x30
#define     lis302dl_FF_WU_SRC_1            0x31 
#define     lis302dl_FF_WU_THS_1            0x32
#define     lis302dl_FF_WU_DURATION_1       0x33
#define     lis302dl_FF_WU_CFG_2            0x34
#define     lis302dl_FF_WU_SRC_2            0x35
#define     lis302dl_FF_WU_THS_2            0x36
#define     lis302dl_FF_WU_DURATION_2       0x37
#define     lis302dl_CLICK_CFG              0x38
#define     lis302dl_CLICK_SRC              0x39
#define     lis302dl_CLICK_THSY_X           0x3B
#define     lis302dl_CLICK_THSZ             0x3C
#define     lis302dl_CLICK_TimeLimit        0x3D
#define     lis302dl_CLICK_Latency          0x3E
#define     lis302dl_CLICK_Window           0x3F


void initLIS320DL(void);
void getDataLIS302DL(int8_t *accel_data);

//------------------------------------------
#endif // !LIS302DL_H
