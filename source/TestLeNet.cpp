// TestLeNet.cpp : 定义控制台应用程序的入口点。
//

#include "stdafx.h"
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#include <time.h>
#include "mt19937ar.h"
#include <string.h> 
//#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"
#ifndef MIN
#define MIN(A,B)	(((A) <= (B)) ? (A) : (B))
#endif

#ifndef MAX
#define MAX(A,B)	(((A) >= (B)) ? (A) : (B))
#endif

#define uchar unsigned char


#define MAX_MAP_SIZE 1024     // 最大特征图大小 (32x32)
#define MAX_MAP_COUNT 120     // 每层最大特征图数量
#define MAX_KERNEL_SIZE 25    // 最大卷积核大小 (5x5)
#define MAX_KERNEL_COUNT 1920 // 最大卷积核数量 (16*120)
#define MAX_SAMPLE_SIZE 1024  // 最大样本大小 (32x32)
#define MAX_LABEL_SIZE 10     // 最大标签大小 (10类)

// 基本参数----------------------------------------------------------------------------------------------/
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

const int batch_size = 10;
const int classes_count = 10;
const int width  = 32;
const int height = 32;
//const int train_sample_count = 60000;
//const int test_sample_count  = 10000;

Layer input_layer, output_layer;
Layer c1_conv_layer, c3_conv_layer, c5_conv_layer;
Layer s2_pooling_layer, s4_pooling_layer;

//*-------------------------------------------------------------------------------------------------------/

// 初始化------------------------------------------------------------------------------------------------/
void init_kernel(double *kernel, int size, double weight_base)
{
	for (int i = 0; i < size; i++)
	{
		kernel[i] = (genrand_real1() - 0.5) * 2 * weight_base;
	}
}

/*void init_layer(
    Layer *layer,              // 要初始化的层
    int prevlayer_map_count,   // 前一层的特征图数量
    int map_count,             // 当前层的特征图数量
    int kernel_w,              // 卷积核宽度
    int kernel_h,              // 卷积核高度
    int map_w,                 // 特征图宽度
    int map_h,                 // 特征图高度
    bool is_pooling           // 是否是池化层
);*/
void init_layer(Layer *layer, int prevlayer_map_count, int map_count, int kernel_w, int kernel_h, int map_w, int map_h, bool is_pooling)
{
	const double scale = 6.0;
	int fan_in = 0;
	int fan_out = 0;
	if (is_pooling)
	{
		fan_in  = 4;
		fan_out = 1;
	}
	else
	{
		fan_in = prevlayer_map_count * kernel_w * kernel_h;
		fan_out = map_count * kernel_w * kernel_h;
	}
	int denominator = fan_in + fan_out;
	double weight_base = (denominator != 0) ? sqrt(scale / (double)denominator) : 0.5;

	layer->kernel_count = prevlayer_map_count * map_count;
	layer->kernel_w = kernel_w;
	layer->kernel_h = kernel_h;
	
	// 确保不超过最大限制
	if (layer->kernel_count > MAX_KERNEL_COUNT) {
		printf("Error: kernel_count exceeds MAX_KERNEL_COUNT\n");
		return;
	}
	
	for (int i = 0; i < prevlayer_map_count; i++)
	{
		for (int j = 0; j < map_count; j++)
		{
			int idx = i*map_count + j;
			// 初始化权重
			for (int k = 0; k < kernel_w*kernel_h; k++) {
				layer->kernel[idx].W[k] = (genrand_real1() - 0.5) * 2 * weight_base;
				layer->kernel[idx].dW[k] = 0.0;
			}
		}
	}

	layer->map_count = map_count;
	layer->map_w = map_w;
	layer->map_h = map_h;
	
	// 确保不超过最大限制
	if (layer->map_count > MAX_MAP_COUNT) {
		printf("Error: map_count exceeds MAX_MAP_COUNT\n");
		return;
	}
	
	if (map_w * map_h > MAX_MAP_SIZE) {
		printf("Error: map size exceeds MAX_MAP_SIZE\n");
		return;
	}
	
	for (int i = 0; i < layer->map_count; i++)
	{
		layer->map[i].b = 0.0;
		layer->map[i].db = 0.0;
		
		// 初始化数据和误差数组
		for (int k = 0; k < map_w * map_h; k++) {
			layer->map[i].data[k] = 0.0;
			layer->map[i].error[k] = 0.0;
		}
	}
	
	// 初始化共享内存
	for (int k = 0; k < map_w * map_h; k++) {
		layer->map_common[k] = 0.0;
	}
}

void release_layer(Layer *layer)//释放内存
{
	for (int i = 0; i < layer->kernel_count; i++)
	{
		for (int k = 0; k < layer->kernel_w * layer->kernel_h; k++) {
			layer->kernel[i].W[k] = 0.0;
			layer->kernel[i].dW[k] = 0.0;
		}
	}

	for (int i = 0; i < layer->map_count; i++)
	{
		for (int k = 0; k < layer->map_w * layer->map_h; k++) {
			layer->map[i].data[k] = 0.0;
			layer->map[i].error[k] = 0.0;
		}
		layer->map[i].b = 0.0;
		layer->map[i].db = 0.0;
	}
	
	for (int k = 0; k < layer->map_w * layer->map_h; k++) {
		layer->map_common[k] = 0.0;
	}
}
//*-------------------------------------------------------------------------------------------------------/




//加速部分

// 激活函数----------------------------------------------------------------------------------------------/
struct activation_func
{
	/* scale: -0.8 ~ 0.8 和label初始值对应 */
	inline static double tan_h(double val)
	{
		double ep = exp(val);
		double em = exp(-val);

		return (ep - em) / (ep + em);
	}

	inline static double dtan_h(double val)
	{
		return 1.0 - val*val;
	}

	/* scale: 0.1 ~ 0.9 和label初始值对应 */
	inline static double relu(double val)
	{
		return val > 0.0 ? val : 0.0;
	}

	inline static double drelu(double val)
	{
		return val > 0.0 ? 1.0 : 0.0;
	}

	/* scale: 0.1 ~ 0.9 和label初始值对应 */
	inline double sigmoid(double val) 
	{ 
		return 1.0 / (1.0 + exp(-val)); 
	}

	double dsigmoid(double val)
	{ 
		return val * (1.0 - val); 
	}
};
//*-------------------------------------------------------------------------------------------------------/


// 卷积--------------------------------------------------------------------------------------------------/
void convn_valid(double in_data[MAX_MAP_SIZE], int in_w, int in_h, 
                double kernel[MAX_KERNEL_SIZE], int kernel_w, int kernel_h, 
                double out_data[MAX_MAP_SIZE], int out_w, int out_h)
{
    double sum = 0.0;
    for (int i = 0; i < out_h; i++)
    {
        for (int j = 0; j < out_w; j++)
        {
            sum = 0.0;
            for (int n = 0; n < kernel_h; n++)
            {
                for (int m = 0; m < kernel_w; m++)
                {
                    sum += in_data[(i + n)*in_w + j + m] * kernel[n*kernel_w + m];
                }
            }
            out_data[i*out_w + j] += sum;
        }
    }
}
//*-------------------------------------------------------------------------------------------------------/

// 正向传播----------------------------------------------------------------------------------------------/
#define O true
#define X false
bool connection_table[6*16] = 
{
	O, X, X, X, O, O, O, X, X, O, O, O, O, X, O, O,
	O, O, X, X, X, O, O, O, X, X, O, O, O, O, X, O,
	O, O, O, X, X, X, O, O, O, X, X, O, X, O, O, O,
	X, O, O, O, X, X, O, O, O, O, X, X, O, X, O, O,
	X, X, O, O, O, X, X, O, O, O, O, X, O, O, X, O,
	X, X, X, O, O, O, X, X, O, O, O, O, X, O, O, O
};
#undef O
#undef X

void conv_fprop(Layer *prev_layer, Layer *layer, bool *pconnection)
{
	int index = 0;
	int size = layer->map_w * layer->map_h;
	for (int i = 0; i < layer->map_count; i++)
	{
		memset(layer->map_common, 0, size*sizeof(double));
		for (int j = 0; j < prev_layer->map_count; j++)
		{
			index = j*layer->map_count + i;
			if (pconnection != NULL && !pconnection[index])
			{
				continue;
			}
		
			convn_valid(
				prev_layer->map[j].data, prev_layer->map_w, prev_layer->map_h, 
				layer->kernel[index].W, layer->kernel_w, layer->kernel_h, 
				layer->map_common, layer->map_w, layer->map_h);
		}

		for (int k = 0; k < size; k++)
		{
			layer->map[i].data[k] = activation_func::tan_h(layer->map_common[k] + layer->map[i].b);
		}
	}
}

/*void avg_pooling_fprop(Layer *prev_layer, Layer *layer)
{
	int map_w = layer->map_w;
	int map_h = layer->map_h;
	int upmap_w = prev_layer->map_w;
	const double scale_factor = 0.25;

	for (int k = 0; k < layer->map_count; k++)
	{
		for (int i = 0; i < map_h; i++)
		{
			for (int j = 0; j < map_w; j++)
			{
				double sum = 0.0;
				for (int n = 2*i; n < 2*(i + 1); n++)
				{
					for (int m = 2*j; m < 2*(j + 1); m++)
					{
						sum += prev_layer->map[k].data[n*upmap_w + m] * layer->kernel[k].W[0];
					}
				}

				sum *= scale_factor;
				sum += layer->map[k].b;
				layer->map[k].data[i*map_w + j] = activation_func::tan_h(sum);
			}
		}
	}
}*/

void max_pooling_fprop(Layer *prev_layer, Layer *layer)
{
	int map_w = layer->map_w;
	int map_h = layer->map_h;
	int upmap_w = prev_layer->map_w;

	for (int k = 0; k < layer->map_count; k++)
	{
		for (int i = 0; i < map_h; i++)
		{
			for (int j = 0; j < map_w; j++)
			{
				double max_value = prev_layer->map[k].data[2*i*upmap_w + 2*j];
				for (int n = 2*i; n < 2*(i + 1); n++)
				{
					for (int m = 2*j; m < 2*(j + 1); m++)
					{
						max_value = MAX(max_value, prev_layer->map[k].data[n*upmap_w + m]);
					}
				}

				layer->map[k].data[i*map_w + j] = activation_func::tan_h(max_value);
			}
		}
	}
}

void fully_connected_fprop(Layer *prev_layer, Layer *layer)
{
	for (int i = 0; i < layer->map_count; i++) 
	{
		double sum = 0.0;
		for (int j = 0; j < prev_layer->map_count; j++)
		{
			sum += prev_layer->map[j].data[0] * layer->kernel[j*layer->map_count + i].W[0];
		}

		sum += layer->map[i].b;
		layer->map[i].data[0] = activation_func::tan_h(sum);
	}
}


//到此为止

void forward_propagation()
{
	// In-->C1
	conv_fprop(&input_layer, &c1_conv_layer, NULL);

	// C1-->S2
	max_pooling_fprop(&c1_conv_layer, &s2_pooling_layer);/*avg_pooling_fprop*/

	// S2-->C3
	conv_fprop(&s2_pooling_layer, &c3_conv_layer, connection_table);

	// C3-->S4
	max_pooling_fprop(&c3_conv_layer, &s4_pooling_layer);/*avg_pooling_fprop*/

	// S4-->C5
	conv_fprop(&s4_pooling_layer, &c5_conv_layer, NULL);

	// C5-->Out
	fully_connected_fprop(&c5_conv_layer, &output_layer);
}

int find_index(double *label) //获取真实标签
{ 
	int index = 0;
	double max_val = label[0];
	for (int i = 1; i < classes_count; i++)
	{
		if (label[i] > max_val)
		{
			max_val = label[i];
			index = i;
		}
	}

	return index;
}

int find_index(Layer *layer)
{
	int index = 0;
	double max_val = *(layer->map[0].data);
	for (int i = 1; i < layer->map_count; i++)
	{
		if (*(layer->map[i].data) > max_val)
		{
			max_val = *(layer->map[i].data);
			index = i;
		}
	}

	return index;
}


void save_model(const char* filename) {
    FILE *fp = NULL;
    fp =fopen(filename, "wb");
    if(!fp) {
        printf("Error: Could not open file for writing: %s\n", filename);
        return;
    }
    
    
    const char magic[] = "LENET5";
    fwrite(magic, sizeof(char), 6, fp);
    int version = 1;
    fwrite(&version, sizeof(int), 1, fp);
    
    // 写入每层的维度信息用于验证
    Layer* layers[] = {&c1_conv_layer, &s2_pooling_layer, &c3_conv_layer, 
                      &s4_pooling_layer, &c5_conv_layer, &output_layer};
    
    for(int l = 0; l < 6; l++) {
        Layer* layer = layers[l];
        fwrite(&layer->kernel_count, sizeof(int), 1, fp);
        fwrite(&layer->kernel_w, sizeof(int), 1, fp);
        fwrite(&layer->kernel_h, sizeof(int), 1, fp);
        fwrite(&layer->map_count, sizeof(int), 1, fp);
        
        // 保存卷积核权重
        for(int i = 0; i < layer->kernel_count; i++) {
            int size = layer->kernel_w * layer->kernel_h;
            size_t written = fwrite(layer->kernel[i].W, sizeof(double), size, fp);
            if(written != size) {
                printf("Error writing kernel weights for layer %d\n", l);
                fclose(fp);
                return;
            }
        }
        // 保存偏置
        for(int i = 0; i < layer->map_count; i++) {
            fwrite(&layer->map[i].b, sizeof(double), 1, fp);
        }
    }
    printf("Model saved successfully to %s\n", filename);
    fclose(fp);
}

void load_model(const char* filename) {
    FILE *fp = NULL;
    fp =fopen(filename, "rb");
    if(!fp) {
        printf("Error: Could not open file for reading: %s\n", filename);
        return;
    }
    
   
    char magic[7] = {0};
    fread(magic, sizeof(char), 6, fp);
    if(strcmp(magic, "LENET5") != 0) {
        printf("Error: Invalid model file format\n");
        fclose(fp);
        return;
    }//strcmp字符串比较(string compare)函数
    
    int version;
    fread(&version, sizeof(int), 1, fp);
    if(version != 1) {
        printf("Error: Unsupported model version\n");
        fclose(fp);
        return;
    }
    
    Layer* layers[] = {&c1_conv_layer, &s2_pooling_layer, &c3_conv_layer, 
                      &s4_pooling_layer, &c5_conv_layer, &output_layer};
    
    for(int l = 0; l < 6; l++) {
        Layer* layer = layers[l];
        
        
        int kernel_count, kernel_w, kernel_h, map_count;
        fread(&kernel_count, sizeof(int), 1, fp);
        fread(&kernel_w, sizeof(int), 1, fp);
        fread(&kernel_h, sizeof(int), 1, fp);
        fread(&map_count, sizeof(int), 1, fp);
        
        if(kernel_count != layer->kernel_count || 
           kernel_w != layer->kernel_w ||
           kernel_h != layer->kernel_h ||
           map_count != layer->map_count) {
            printf("Error: Model architecture mismatch at layer %d\n", l);
            fclose(fp);
            return;
        }
        
       
        for(int i = 0; i < layer->kernel_count; i++) {
            int size = layer->kernel_w * layer->kernel_h;
            size_t read = fread(layer->kernel[i].W, sizeof(double), size, fp);
            if(read != size) {
                printf("Error reading kernel weights for layer %d\n", l);
                fclose(fp);
                return;
            }
        }
        
        for(int i = 0; i < layer->map_count; i++) {
            fread(&layer->map[i].b, sizeof(double), 1, fp);
        }
    }
    //printf("Model loaded successfully from %s\n", filename);
    fclose(fp);
}


void load_and_preprocess_image(const char* image_path, double* image_data) {
    memset(image_data, 0, width * height * sizeof(double));

    int img_width, img_height, channels;
    unsigned char* img = stbi_load(image_path, &img_width, &img_height, &channels, 1);
    
    if (!img) {
        printf("Error: Could not load image %s\n", image_path);
        return;
    }

    double scale_max =  1.0;
    double scale_min = -1.0;
    int padding = 2;

    for (int i = 0; i < width * height; i++) {
        image_data[i] = scale_min;
    }

    for (int i = 0; i < 28; i++) {
        for (int j = 0; j < 28; j++) {
            if (i < img_height && j < img_width) {
                unsigned char pixel = img[i * img_width + j];
                double normalized = ((double)pixel / 255.0) * (scale_max - scale_min) + scale_min;
                image_data[(i + padding)*width + j + padding] = normalized;
            }
        }
    }

    stbi_image_free(img);
}



int predict_single_image(const char* image_path) {
    double* image_data = (double*)malloc(width * height * sizeof(double));
    load_and_preprocess_image(image_path, image_data);
    
    memcpy(input_layer.map[0].data, image_data, width * height * sizeof(double));
    
    forward_propagation();
    
    double max_prob = -1;
    int prediction = 0;
    for (int i = 0; i < 10; i++) {
        double prob = output_layer.map[i].data[0];
        if (prob > max_prob) {
            max_prob = prob;
            prediction = i;
        }
    }
    
    free(image_data);
    return prediction;
}
void test_custom_image(const char* model_path, const char* image_path) {
    int kernel_w = 0, kernel_h = 0;
    
    // 输入层
    init_layer(&input_layer, 0, 1, kernel_w, kernel_h, width, height, false);

    // 卷积层C1
    kernel_w = 5; kernel_h = 5;
    init_layer(&c1_conv_layer, 1, 6, kernel_w, kernel_h, 
               input_layer.map_w - kernel_w + 1, input_layer.map_h - kernel_h + 1, false);

    // 采样层S2
    kernel_w = 1; kernel_h = 1;
    init_layer(&s2_pooling_layer, 1, 6, kernel_w, kernel_h, 
               c1_conv_layer.map_w / 2, c1_conv_layer.map_h / 2, true);

    // 卷积层C3
    kernel_w = 5; kernel_h = 5;
    init_layer(&c3_conv_layer, 6, 16, kernel_w, kernel_h, 
               s2_pooling_layer.map_w - kernel_w + 1, s2_pooling_layer.map_h - kernel_h + 1, false);

    // 采样层S4
    kernel_w = 1; kernel_h = 1;
    init_layer(&s4_pooling_layer, 1, 16, kernel_w, kernel_h, 
               c3_conv_layer.map_w / 2, c3_conv_layer.map_h / 2, true);

    // 卷积层C5
    kernel_w = 5; kernel_h = 5;
    init_layer(&c5_conv_layer, 16, 120, kernel_w, kernel_h, 
               s4_pooling_layer.map_w - kernel_w + 1, s4_pooling_layer.map_h - kernel_h + 1, false);

    // 输出层
    kernel_w = 1; kernel_h = 1;
    init_layer(&output_layer, 120, 10, kernel_w, kernel_h, 1, 1, false);

    load_model(model_path);
  
    int prediction = predict_single_image(image_path);
    printf("Predicted digit: %d\n", prediction);

    release_layer(&input_layer);
    release_layer(&c1_conv_layer);
    release_layer(&c3_conv_layer);
    release_layer(&c5_conv_layer);
    release_layer(&s2_pooling_layer);
    release_layer(&s4_pooling_layer);
    release_layer(&output_layer);
}


int main(int argc, char* argv[])
{
    if (argc < 3) {
        printf("Usage: %s model_path image_path\n", argv[0]);
        return 1;
    }
    
    const char* model_path = argv[1];
    const char* image_path = argv[2];
    
    init_genrand((unsigned long)time(NULL));
    test_custom_image(model_path, image_path);

    system("pause");
    return 0;
}
