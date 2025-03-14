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
#include "hls.h"
#include "xmem.h"

/*
#define MAX_MAP_SIZE 1024     // 最大特征图大小 (32x32)
#define MAX_MAP_COUNT 120     // 每层最大特征图数量
#define MAX_KERNEL_SIZE 25    // 最大卷积核大小 (5x5)
#define MAX_KERNEL_COUNT 1920 // 最大卷积核数量 (16*120)
#define MAX_SAMPLE_SIZE 1024  // 最大样本大小 (32x32)
#define MAX_LABEL_SIZE 10     // 最大标签大小 (10类)
*/
// 基本参数----------------------------------------------------------------------------------------------/


const int batch_size = 10;
const int classes_count = 10;
const int width  = 32;
const int height = 32;
//const int train_sample_count = 60000;
//const int test_sample_count  = 10000;

//Layer input_layer, output_layer;
//Layer c1_conv_layer, c3_conv_layer, c5_conv_layer;
//Layer s2_pooling_layer, s4_pooling_layer;

//*-------------------------------------------------------------------------------------------------------/

// 初始化------------------------------------------------------------------------------------------------/
void init_layer(Layer1 *layer1, Layer2 *layer2, int prevlayer_map_count, int map_count, 
	int kernel_w, int kernel_h, int map_w, int map_h, bool is_pooling)
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

// Initialize Layer1 (integer parameters)
layer1->kernel_count = prevlayer_map_count * map_count;
layer1->kernel_w = kernel_w;
layer1->kernel_h = kernel_h;
layer1->map_count = map_count;
layer1->map_w = map_w;
layer1->map_h = map_h;

// Check limits
if (layer1->kernel_count > MAX_KERNEL_COUNT) {
printf("Error: kernel_count exceeds MAX_KERNEL_COUNT\n");
return;
}

if (layer1->map_count > MAX_MAP_COUNT) {
printf("Error: map_count exceeds MAX_MAP_COUNT\n");
return;
}

if (map_w * map_h > MAX_MAP_SIZE) {
printf("Error: map size exceeds MAX_MAP_SIZE\n");
return;
}

// Initialize Layer2 (arrays)
for (int i = 0; i < prevlayer_map_count; i++)
{
for (int j = 0; j < map_count; j++)
{
 int idx = i*map_count + j;
 for (int k = 0; k < kernel_w*kernel_h; k++) {
	 layer2->W[idx][k] = (genrand_real1() - 0.5) * 2 * weight_base;
	 layer2->dW[idx][k] = 0.0;
 }
}
}

for (int i = 0; i < layer1->map_count; i++)
{
layer2->b[i] = 0.0;
layer2->db[i] = 0.0;

for (int k = 0; k < map_w * map_h; k++) {
 layer2->data[i][k] = 0.0;
 layer2->error[i][k] = 0.0;
}
}

for (int k = 0; k < map_w * map_h; k++) {
layer2->map_common[k] = 0.0;
}
}

void release_layer(Layer1 *layer1, Layer2 *layer2)
{
    for (int i = 0; i < layer1->kernel_count; i++)
    {
        for (int k = 0; k < layer1->kernel_w * layer1->kernel_h; k++) {
            layer2->W[i][k] = 0.0;
            layer2->dW[i][k] = 0.0;
        }
    }

    for (int i = 0; i < layer1->map_count; i++)
    {
        for (int k = 0; k < layer1->map_w * layer1->map_h; k++) {
            layer2->data[i][k] = 0.0;
            layer2->error[i][k] = 0.0;
        }
        layer2->b[i] = 0.0;
        layer2->db[i] = 0.0;
    }
    
    for (int k = 0; k < layer1->map_w * layer1->map_h; k++) {
        layer2->map_common[k] = 0.0;
    }
}
//*-------------------------------------------------------------------------------------------------------/



#if 0
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
				prev_layer->data[j][0], prev_layer->map_w, prev_layer->map_h, 
				layer->W[index], layer->kernel_w, layer->kernel_h, 
				layer->map_common, layer->map_w, layer->map_h);
		}

		for (int k = 0; k < size; k++)
		{
			layer->data[i][k] = activation_func::tan_h(layer->map_common[k] + layer->b[i]);
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
						sum += prev_layer->data[k][n*upmap_w + m] * layer->W[k][0];
					}
				}

				sum *= scale_factor;
				sum += layer->b[k];
				layer->data[k][i*map_w + j] = activation_func::tan_h(sum);
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
				double max_value = prev_layer->data[k][2*i*upmap_w + 2*j];
				for (int n = 2*i; n < 2*(i + 1); n++)
				{
					for (int m = 2*j; m < 2*(j + 1); m++)
					{
						max_value = MAX(max_value, prev_layer->data[k][n*upmap_w + m]);
					}
				}

				layer->data[k][i*map_w + j] = activation_func::tan_h(max_value);
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
			sum += prev_layer->data[j][0] * layer->W[j*layer->map_count + i][0];
		}

		sum += layer->b[i];
		layer->data[i][0] = activation_func::tan_h(sum);
	}
}

#endif
//到此为止


void forward_propagation(xmem_t *xmem)
{
    memcpy(xmem->pconnection, connection_table, sizeof(connection_table));
    
    conv_fprop1(&xmem->input_layer1, &xmem->input_layer2, 
                &xmem->c1_conv_layer1, &xmem->c1_conv_layer2, NULL);

    max_pooling_fprop1(&xmem->c1_conv_layer1, &xmem->c1_conv_layer2,
                      &xmem->s2_pooling_layer1, &xmem->s2_pooling_layer2);

    conv_fprop2(&xmem->s2_pooling_layer1, &xmem->s2_pooling_layer2,
                &xmem->c3_conv_layer1, &xmem->c3_conv_layer2, xmem->pconnection);

    max_pooling_fprop2(&xmem->c3_conv_layer1, &xmem->c3_conv_layer2,
                      &xmem->s4_pooling_layer1, &xmem->s4_pooling_layer2);

    conv_fprop3(&xmem->s4_pooling_layer1, &xmem->s4_pooling_layer2,
                &xmem->c5_conv_layer1, &xmem->c5_conv_layer2, NULL);

    fully_connected_fprop(&xmem->c5_conv_layer1, &xmem->c5_conv_layer2,
                         &xmem->output_layer1, &xmem->output_layer2);
}

int find_index(Layer1 *layer1, Layer2 *layer2)
{
    int index = 0;
    double max_val = layer2->data[0][0];
    for (int i = 1; i < layer1->map_count; i++)
    {
        if (layer2->data[i][0] > max_val)
        {
            max_val = layer2->data[i][0];
            index = i;
        }
    }
    return index;
}

/*
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
            size_t written = fwrite(layer->W[i], sizeof(double), size, fp);
            if(written != size) {
                printf("Error writing kernel weights for layer %d\n", l);
                fclose(fp);
                return;
            }
        }
        // 保存偏置
        for(int i = 0; i < layer->map_count; i++) {
            fwrite(&layer->b[i], sizeof(double), 1, fp);
        }
    }
    printf("Model saved successfully to %s\n", filename);
    fclose(fp);
}
*/
void load_model(xmem_t *xmem, const char* filename) {
    FILE *fp = NULL;
    fp = fopen(filename, "rb");
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
    }
    
    int version;
    fread(&version, sizeof(int), 1, fp);
    if(version != 1) {
        printf("Error: Unsupported model version\n");
        fclose(fp);
        return;
    }
    
    Layer1* layers1[] = {&xmem->c1_conv_layer1, &xmem->s2_pooling_layer1, &xmem->c3_conv_layer1, 
                        &xmem->s4_pooling_layer1, &xmem->c5_conv_layer1, &xmem->output_layer1};
    Layer2* layers2[] = {&xmem->c1_conv_layer2, &xmem->s2_pooling_layer2, &xmem->c3_conv_layer2,
                        &xmem->s4_pooling_layer2, &xmem->c5_conv_layer2, &xmem->output_layer2};
    
    for(int l = 0; l < 6; l++) {
        Layer1* layer1 = layers1[l];
        Layer2* layer2 = layers2[l];
        
        int kernel_count, kernel_w, kernel_h, map_count;
        fread(&kernel_count, sizeof(int), 1, fp);
        fread(&kernel_w, sizeof(int), 1, fp);
        fread(&kernel_h, sizeof(int), 1, fp);
        fread(&map_count, sizeof(int), 1, fp);
        
        if(kernel_count != layer1->kernel_count || 
           kernel_w != layer1->kernel_w ||
           kernel_h != layer1->kernel_h ||
           map_count != layer1->map_count) {
            printf("Error: Model architecture mismatch at layer %d\n", l);
            fclose(fp);
            return;
        }
        
        for(int i = 0; i < layer1->kernel_count; i++) {
            int size = layer1->kernel_w * layer1->kernel_h;
            size_t read = fread(layer2->W[i], sizeof(double), size, fp);
            if(read != size) {
                printf("Error reading kernel weights for layer %d\n", l);
                fclose(fp);
                return;
            }
        }
        
        for(int i = 0; i < layer1->map_count; i++) {
            fread(&layer2->b[i], sizeof(double), 1, fp);
        }
    }
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

int predict_single_image(xmem_t *xmem, const char* image_path) {
    double* image_data = (double*)malloc(width * height * sizeof(double));
    load_and_preprocess_image(image_path, image_data);
    
    memcpy(xmem->input_layer2.data[0], image_data, width * height * sizeof(double));
    
    forward_propagation(xmem);
    
    double max_prob = -1;
    int prediction = 0;
    for (int i = 0; i < 10; i++) {
        double prob = xmem->output_layer2.data[i][0];
        if (prob > max_prob) {
            max_prob = prob;
            prediction = i;
        }
    }
    
    free(image_data);
    return prediction;
}

void test_custom_image(xmem_t *xmem, const char* model_path, const char* image_path) {
    int kernel_w = 0, kernel_h = 0;
    
    // Input layer
    init_layer(&xmem->input_layer1, &xmem->input_layer2, 0, 1, kernel_w, kernel_h, width, height, false);

    // C1 conv layer
    kernel_w = 5; kernel_h = 5;
    init_layer(&xmem->c1_conv_layer1, &xmem->c1_conv_layer2, 1, 6, kernel_w, kernel_h, 
              xmem->input_layer1.map_w - kernel_w + 1, xmem->input_layer1.map_h - kernel_h + 1, false);

    // S2 pooling layer
    kernel_w = 1; kernel_h = 1;
    init_layer(&xmem->s2_pooling_layer1, &xmem->s2_pooling_layer2, 1, 6, kernel_w, kernel_h, 
              xmem->c1_conv_layer1.map_w / 2, xmem->c1_conv_layer1.map_h / 2, true);

    // C3 conv layer
    kernel_w = 5; kernel_h = 5;
    init_layer(&xmem->c3_conv_layer1, &xmem->c3_conv_layer2, 6, 16, kernel_w, kernel_h, 
              xmem->s2_pooling_layer1.map_w - kernel_w + 1, xmem->s2_pooling_layer1.map_h - kernel_h + 1, false);

    // S4 pooling layer
    kernel_w = 1; kernel_h = 1;
    init_layer(&xmem->s4_pooling_layer1, &xmem->s4_pooling_layer2, 1, 16, kernel_w, kernel_h, 
              xmem->c3_conv_layer1.map_w / 2, xmem->c3_conv_layer1.map_h / 2, true);

    // C5 conv layer
    kernel_w = 5; kernel_h = 5;
    init_layer(&xmem->c5_conv_layer1, &xmem->c5_conv_layer2, 16, 120, kernel_w, kernel_h, 
              xmem->s4_pooling_layer1.map_w - kernel_w + 1, xmem->s4_pooling_layer1.map_h - kernel_h + 1, false);

    // Output layer
    kernel_w = 1; kernel_h = 1;
    init_layer(&xmem->output_layer1, &xmem->output_layer2, 120, 10, kernel_w, kernel_h, 1, 1, false);

    load_model(xmem, model_path);
  
    int prediction = predict_single_image(xmem, image_path);
    printf("Predicted digit: %d\n", prediction);

    release_layer(&xmem->input_layer1, &xmem->input_layer2);
    release_layer(&xmem->c1_conv_layer1, &xmem->c1_conv_layer2);
    release_layer(&xmem->c3_conv_layer1, &xmem->c3_conv_layer2);
    release_layer(&xmem->c5_conv_layer1, &xmem->c5_conv_layer2);
    release_layer(&xmem->s2_pooling_layer1, &xmem->s2_pooling_layer2);
    release_layer(&xmem->s4_pooling_layer1, &xmem->s4_pooling_layer2);
    release_layer(&xmem->output_layer1, &xmem->output_layer2);
}




int main(int argc, char* argv[])
{
    if (argc < 3) {
        printf("Usage: %s model_path image_path\n", argv[0]);
        return 1;
    }
    #if __riscv && HLS_XMEM
    xmem_t *xmem = (xmem_t*)get_riscv_xmem_base();
#else
    xmem_t *xmem = (xmem_t*)malloc(sizeof(xmem_t));
    if (xmem == NULL){
        printf("cannot allocate xmem\n");
        exit(1);
    }
#endif
    const char* model_path = argv[1];
    const char* image_path = argv[2];
    
    init_genrand((unsigned long)time(NULL));

    test_custom_image(xmem, model_path, image_path);

    system("pause");
    return 0;
}

