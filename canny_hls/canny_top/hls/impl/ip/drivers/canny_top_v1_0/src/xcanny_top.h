// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCANNY_TOP_H
#define XCANNY_TOP_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcanny_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XCanny_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCanny_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCanny_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCanny_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCanny_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCanny_top_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCanny_top_Initialize(XCanny_top *InstancePtr, UINTPTR BaseAddress);
XCanny_top_Config* XCanny_top_LookupConfig(UINTPTR BaseAddress);
#else
int XCanny_top_Initialize(XCanny_top *InstancePtr, u16 DeviceId);
XCanny_top_Config* XCanny_top_LookupConfig(u16 DeviceId);
#endif
int XCanny_top_CfgInitialize(XCanny_top *InstancePtr, XCanny_top_Config *ConfigPtr);
#else
int XCanny_top_Initialize(XCanny_top *InstancePtr, const char* InstanceName);
int XCanny_top_Release(XCanny_top *InstancePtr);
#endif

void XCanny_top_Start(XCanny_top *InstancePtr);
u32 XCanny_top_IsDone(XCanny_top *InstancePtr);
u32 XCanny_top_IsIdle(XCanny_top *InstancePtr);
u32 XCanny_top_IsReady(XCanny_top *InstancePtr);
void XCanny_top_Continue(XCanny_top *InstancePtr);
void XCanny_top_EnableAutoRestart(XCanny_top *InstancePtr);
void XCanny_top_DisableAutoRestart(XCanny_top *InstancePtr);

void XCanny_top_Set_in_r(XCanny_top *InstancePtr, u64 Data);
u64 XCanny_top_Get_in_r(XCanny_top *InstancePtr);
void XCanny_top_Set_out_r(XCanny_top *InstancePtr, u64 Data);
u64 XCanny_top_Get_out_r(XCanny_top *InstancePtr);

void XCanny_top_InterruptGlobalEnable(XCanny_top *InstancePtr);
void XCanny_top_InterruptGlobalDisable(XCanny_top *InstancePtr);
void XCanny_top_InterruptEnable(XCanny_top *InstancePtr, u32 Mask);
void XCanny_top_InterruptDisable(XCanny_top *InstancePtr, u32 Mask);
void XCanny_top_InterruptClear(XCanny_top *InstancePtr, u32 Mask);
u32 XCanny_top_InterruptGetEnabled(XCanny_top *InstancePtr);
u32 XCanny_top_InterruptGetStatus(XCanny_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
