#ifndef HLS_CNN_H
#define HLS_CNN_H

#include <math.h>
#include <string.h>

// 定义 MAX 宏
#ifndef MAX
#define MAX(A,B) (((A) >= (B)) ? (A) : (B))
#endif

// Constants for CNN architecture
#define MAX_MAP_SIZE 1024     // Maximum feature map size (32x32)
#define MAX_MAP_COUNT 120     // Maximum feature maps per layer
#define MAX_KERNEL_SIZE 25    // Maximum kernel size (5x5)
#define MAX_KERNEL_COUNT 1920 // Maximum kernel count (16*120)
#define MAX_SAMPLE_SIZE 1024  // Maximum sample size (32x32)
#define MAX_LABEL_SIZE 10     // Maximum label size (10 classes)

// Basic structures
typedef struct _Kernel {
    double W[MAX_KERNEL_SIZE];
    double dW[MAX_KERNEL_SIZE];
} Kernel;

typedef struct _Map {
    double data[MAX_MAP_SIZE];
    double error[MAX_MAP_SIZE];
    double b;
    double db;
} Map;

typedef struct _Layer {
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