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

#endif // COMMON_H  
