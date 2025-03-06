#ifndef POOLING_H
#define POOLING_H

#include "activation.h"


#define MAX_MAP_SIZE 1024     // 最大特征图大小 (32x32)
#define MAX_MAP_COUNT 120     // 每层最大特征图数量

// 定义Layer结构体
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
} Layer;

void max_pooling_fprop(Layer *prev_layer, Layer *layer);

#endif 