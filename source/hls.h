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

void convn_valid(double in_data[MAX_MAP_SIZE], int in_w, int in_h,
    double kernel[MAX_KERNEL_SIZE], int kernel_w, int kernel_h,
    double out_data[MAX_MAP_SIZE], int out_w, int out_h);

/*
void HLS_DECLARE(conv_fprop1)(HLS_COMMON_ARG Layer *input_layer, Layer *c1_conv_layer, bool pconnection[96]);
void HLS_DECLARE(max_pooling_fprop1)(HLS_COMMON_ARG Layer *c1_conv_layer, Layer *s2_pooling_layer);
void HLS_DECLARE(conv_fprop2)(HLS_COMMON_ARG Layer *s2_pooling_layer, Layer *c3_conv_layer, bool pconnection[96]);
void HLS_DECLARE(max_pooling_fprop2)(HLS_COMMON_ARG Layer *c3_conv_layer, Layer *s4_pooling_layer);
void HLS_DECLARE(conv_fprop3)(HLS_COMMON_ARG Layer *s4_pooling_layer, Layer *c5_conv_layer, bool pconnection[96]);
void HLS_DECLARE(fully_connected_fprop)(HLS_COMMON_ARG Layer *c5_conv_layer, Layer *output_layer); */
void HLS_DECLARE(conv_fprop1)(HLS_COMMON_ARG Layer1 *input_layer1, Layer2 *input_layer2, Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2, bool pconnection[96]);
void HLS_DECLARE(max_pooling_fprop1)(HLS_COMMON_ARG Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2, Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2);
void HLS_DECLARE(conv_fprop2)(HLS_COMMON_ARG Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2, Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2, bool pconnection[96]);
void HLS_DECLARE(max_pooling_fprop2)(HLS_COMMON_ARG Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2, Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2);
void HLS_DECLARE(conv_fprop3)(HLS_COMMON_ARG Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2, Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2, bool pconnection[96]);
void HLS_DECLARE(fully_connected_fprop)(HLS_COMMON_ARG Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2, Layer1 *output_layer1, Layer2 *output_layer2);

//void HLS_DECLARE(max_pooling_fprop)(HLS_COMMON_ARG Layer *prev_layer, Layer *layer);

//void HLS_DECLARE(fully_connected_fprop)(HLS_COMMON_ARG Layer *prev_layer, Layer *layer);


#ifdef __cplusplus
}
#endif


#if __riscv
    #include "hls_apcall.h"
#endif



#endif // HLS_CNN_H
