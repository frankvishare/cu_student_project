#ifndef HLS_CNN_H
#define HLS_CNN_H
#if __VITIS_HLS__
    #include <ap_int.h>
#endif

#include <stdint.h>
#include <stddef.h>
#include "hls_config.h"
#include "xmem.h"
#include "common_with_hls.h"
#include <math.h>
#include <string.h>
#include "common.h"




// 声明 activation_func 结构体，实现在 hls.cpp 中
struct activation_func;

#ifdef __cplusplus
extern "C" {
#endif

// Connection table for C3 layer
extern bool connection_table[6*16];


// Function declarations
void HLS_DECLARE(convn_valid)(HLS_COMMON_ARG double in_data[MAX_MAP_SIZE], int in_w, int in_h,
                double kernel[MAX_KERNEL_SIZE], int kernel_w, int kernel_h,
                double out_data[MAX_MAP_SIZE], int out_w, int out_h);

void HLS_DECLARE(conv_fprop)(Layer *prev_layer, Layer *layer, bool *pconnection);

void HLS_DECLARE(max_pooling_fprop)(Layer *prev_layer, Layer *layer);

void HLS_DECLARE(fully_connected_fprop)(Layer *prev_layer, Layer *layer);


#ifdef __cplusplus
}
#endif


#if __riscv
    #include "hls_apcall.h"
#endif



#endif // HLS_CNN_H
