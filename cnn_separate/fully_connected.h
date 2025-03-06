#ifndef FULLY_CONNECTED_H
#define FULLY_CONNECTED_H

#include "activation.h"


#define MAX_MAP_SIZE 1024     // 最大特征图大小 (32x32)
#define MAX_MAP_COUNT 120     // 每层最大特征图数量
#define MAX_KERNEL_SIZE 25    // 最大卷积核大小 (5x5)
#define MAX_KERNEL_COUNT 1920 // 最大卷积核数量 (16*120)


typedef struct _Kernel
{
    double W[MAX_KERNEL_SIZE];
    double dW[MAX_KERNEL_SIZE];
} Kernel;

typedef struct _Map
{
    double data[MAX_MAP_SIZE];
    double error[MAX_MAP_SIZE];
    double b;
    double db;
} Map;

typedef struct _Layer
{
    int map_w;
    int map_h;
    int map_count;
    Map map[MAX_MAP_COUNT];

    int kernel_w;
    int kernel_h;
    int kernel_count;
    Kernel kernel[MAX_KERNEL_COUNT];

    double map_common[MAX_MAP_SIZE];
} Layer;


void fully_connected_fprop(Layer *prev_layer, Layer *layer);

#endif 