#ifndef COMMON_H
#define COMMON_H

// 定义 MAX 宏
#ifndef MIN
#define MIN(A,B)	(((A) <= (B)) ? (A) : (B))
#endif

#ifndef MAX
#define MAX(A,B)	(((A) >= (B)) ? (A) : (B))
#endif

#define uchar unsigned char

// Constants for CNN architecture
#define MAX_MAP_SIZE 1024     // Maximum feature map size (32x32)
#define MAX_MAP_COUNT 120     // Maximum feature maps per layer
#define MAX_KERNEL_SIZE 25    // Maximum kernel size (5x5)
#define MAX_KERNEL_COUNT 1920 // Maximum kernel count (16*120)
#define MAX_SAMPLE_SIZE 1024  // Maximum sample size (32x32)
#define MAX_LABEL_SIZE 10     // Maximum label size (10 classes)

typedef struct _Sample
{
	double data[MAX_SAMPLE_SIZE];
	double label[MAX_LABEL_SIZE];

	int sample_w;
	int sample_h;
	int sample_count;
} Sample;

// 第一个结构体包含所有整数参数
typedef struct _Layer1
{
    int map_w;
    int map_h;
    int map_count;
    int kernel_w;
    int kernel_h;
    int kernel_count;
} Layer1;

// 第二个结构体包含所有数组数据
typedef struct _Layer2
{
    double data[MAX_MAP_COUNT][MAX_MAP_SIZE];    // 原Map.data
    double error[MAX_MAP_COUNT][MAX_MAP_SIZE];   // 原Map.error
    double b[MAX_MAP_COUNT];                     // 原Map.b
    double db[MAX_MAP_COUNT];                    // 原Map.db
    double W[MAX_KERNEL_COUNT][MAX_KERNEL_SIZE];   // 原Kernel.W
    double dW[MAX_KERNEL_COUNT][MAX_KERNEL_SIZE];  // 原Kernel.dW
    double map_common[MAX_MAP_SIZE];
} Layer2;

#endif // COMMON_H  
