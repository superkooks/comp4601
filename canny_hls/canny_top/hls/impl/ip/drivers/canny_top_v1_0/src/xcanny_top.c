// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcanny_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCanny_top_CfgInitialize(XCanny_top *InstancePtr, XCanny_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCanny_top_Start(XCanny_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCanny_top_IsDone(XCanny_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCanny_top_IsIdle(XCanny_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCanny_top_IsReady(XCanny_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCanny_top_Continue(XCanny_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCanny_top_EnableAutoRestart(XCanny_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCanny_top_DisableAutoRestart(XCanny_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XCanny_top_Set_in_r(XCanny_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IN_R_DATA, (u32)(Data));
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IN_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCanny_top_Get_in_r(XCanny_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IN_R_DATA);
    Data += (u64)XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IN_R_DATA + 4) << 32;
    return Data;
}

void XCanny_top_Set_out_r(XCanny_top *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XCanny_top_Get_out_r(XCanny_top *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

void XCanny_top_InterruptGlobalEnable(XCanny_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_GIE, 1);
}

void XCanny_top_InterruptGlobalDisable(XCanny_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_GIE, 0);
}

void XCanny_top_InterruptEnable(XCanny_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IER);
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XCanny_top_InterruptDisable(XCanny_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IER);
    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCanny_top_InterruptClear(XCanny_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_top_WriteReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XCanny_top_InterruptGetEnabled(XCanny_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_IER);
}

u32 XCanny_top_InterruptGetStatus(XCanny_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_top_ReadReg(InstancePtr->Control_BaseAddress, XCANNY_TOP_CONTROL_ADDR_ISR);
}

