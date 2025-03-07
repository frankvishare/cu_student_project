#ifndef HLS_CNN_H
#define HLS_CNN_H

#include <math.h>
#include <string.h>
#include "common.h"




// 声明 activation_func 结构体，实现在 hls.cpp 中
struct activation_func;

// Connection table for C3 layer
extern bool connection_table[6*16];

// Function declarations
void convn_valid(double in_data[MAX_MAP_SIZE], int in_w, int in_h,
                double kernel[MAX_KERNEL_SIZE], int kernel_w, int kernel_h,
                double out_data[MAX_MAP_SIZE], int out_w, int out_h);

void conv_fprop(Layer *prev_layer, Layer *layer, bool *pconnection);

void max_pooling_fprop(Layer *prev_layer, Layer *layer);

void fully_connected_fprop(Layer *prev_layer, Layer *layer);





#endif // HLS_CNN_H
