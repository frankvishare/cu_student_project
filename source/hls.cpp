#include "hls.h"
#include "hls_config.h"
#include "xmem.h"

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

#ifdef __cplusplus
extern "C" {
#endif

// 卷积--------------------------------------------------------------------------------------------------/
/*
void IMPL(convn_valid)(double in_data[MAX_MAP_SIZE], int in_w, int in_h, 
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
	*/
//*-------------------------------------------------------------------------------------------------------/
void IMPL(convn_valid)(HLS_COMMON_ARG double in_data[MAX_MAP_SIZE], int in_w, int in_h, 
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

void (conv_fprop)(HLS_COMMON_ARG Layer *prev_layer, Layer *layer, bool pconnection[96])
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

void IMPL(max_pooling_fprop)(HLS_COMMON_ARG Layer *prev_layer, Layer *layer)
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

void IMPL(fully_connected_fprop)(HLS_COMMON_ARG Layer *prev_layer, Layer *layer)
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

#ifdef __cplusplus
}
#endif


#if CAPTURE_COSIM
	#include "hls_capture.cpp"
#endif