#ifndef CONVOLUTION_H
#define CONVOLUTION_H


#define MAX_MAP_SIZE 1024     // 最大特征图大小 (32x32)
#define MAX_KERNEL_SIZE 25    // 最大卷积核大小 (5x5)

void convn_valid(double in_data[MAX_MAP_SIZE], int in_w, int in_h, 
                double kernel[MAX_KERNEL_SIZE], int kernel_w, int kernel_h, 
                double out_data[MAX_MAP_SIZE], int out_w, int out_h);

#endif 