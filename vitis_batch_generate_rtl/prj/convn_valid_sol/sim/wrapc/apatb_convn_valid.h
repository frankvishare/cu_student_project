// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_convn_valid (
char ap_core,
char ap_part,
char ap_parent,
volatile void* in_data,
int in_w,
int in_h,
volatile void* kernel,
int kernel_w,
int kernel_h,
volatile void* out_data,
int out_w,
int out_h);
