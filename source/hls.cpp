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

#ifdef __cplusplus
extern "C" {
#endif

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

void IMPL(conv_fprop1)(HLS_COMMON_ARG Layer1 *input_layer1, Layer2 *input_layer2, 
                      Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2, bool pconnection[96])
{
    #pragma HLS disaggregate variable=input_layer1
    #pragma HLS disaggregate variable=input_layer2
    #pragma HLS disaggregate variable=c1_conv_layer1
    #pragma HLS disaggregate variable=c1_conv_layer2
    
    int index = 0;
    int size = c1_conv_layer1->map_w * c1_conv_layer1->map_h;
    for (int i = 0; i < c1_conv_layer1->map_count; i++)
    {
        memset(c1_conv_layer2->map_common, 0, size*sizeof(double));
        for (int j = 0; j < input_layer1->map_count; j++)
        {
            index = j*c1_conv_layer1->map_count + i;
            if (pconnection != NULL && !pconnection[index])
            {
                continue;
            }
        
            convn_valid(
                input_layer2->data[j], input_layer1->map_w, input_layer1->map_h, 
                c1_conv_layer2->W[index], c1_conv_layer1->kernel_w, c1_conv_layer1->kernel_h, 
                c1_conv_layer2->map_common, c1_conv_layer1->map_w, c1_conv_layer1->map_h);
        }

        for (int k = 0; k < size; k++)
        {
            c1_conv_layer2->data[i][k] = activation_func::tan_h(c1_conv_layer2->map_common[k] + c1_conv_layer2->b[i]);
        }
    }
}

void IMPL(conv_fprop2)(HLS_COMMON_ARG Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2,
                      Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2, bool pconnection[96])
{
    #pragma HLS disaggregate variable=s2_pooling_layer1
    #pragma HLS disaggregate variable=s2_pooling_layer2
    #pragma HLS disaggregate variable=c3_conv_layer1
    #pragma HLS disaggregate variable=c3_conv_layer2

    int index = 0;
    int size = c3_conv_layer1->map_w * c3_conv_layer1->map_h;
    for (int i = 0; i < c3_conv_layer1->map_count; i++)
    {
        memset(c3_conv_layer2->map_common, 0, size*sizeof(double));
        for (int j = 0; j < s2_pooling_layer1->map_count; j++)
        {
            index = j*c3_conv_layer1->map_count + i;
            if (pconnection != NULL && !pconnection[index])
            {
                continue;
            }
        
            convn_valid(
                s2_pooling_layer2->data[j], s2_pooling_layer1->map_w, s2_pooling_layer1->map_h, 
                c3_conv_layer2->W[index], c3_conv_layer1->kernel_w, c3_conv_layer1->kernel_h, 
                c3_conv_layer2->map_common, c3_conv_layer1->map_w, c3_conv_layer1->map_h);
        }

        for (int k = 0; k < size; k++)
        {
            c3_conv_layer2->data[i][k] = activation_func::tan_h(c3_conv_layer2->map_common[k] + c3_conv_layer2->b[i]);
        }
    }
}

void IMPL(conv_fprop3)(HLS_COMMON_ARG Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2,
                      Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2, bool pconnection[96])
{
    #pragma HLS disaggregate variable=s4_pooling_layer1
    #pragma HLS disaggregate variable=s4_pooling_layer2
    #pragma HLS disaggregate variable=c5_conv_layer1
    #pragma HLS disaggregate variable=c5_conv_layer2
    
    int index = 0;
    int size = c5_conv_layer1->map_w * c5_conv_layer1->map_h;
    for (int i = 0; i < c5_conv_layer1->map_count; i++)
    {
        memset(c5_conv_layer2->map_common, 0, size*sizeof(double));
        for (int j = 0; j < s4_pooling_layer1->map_count; j++)
        {
            index = j*c5_conv_layer1->map_count + i;
            if (pconnection != NULL && !pconnection[index])
            {
                continue;
            }
        
            convn_valid(
                s4_pooling_layer2->data[j], s4_pooling_layer1->map_w, s4_pooling_layer1->map_h, 
                c5_conv_layer2->W[index], c5_conv_layer1->kernel_w, c5_conv_layer1->kernel_h, 
                c5_conv_layer2->map_common, c5_conv_layer1->map_w, c5_conv_layer1->map_h);
        }

        for (int k = 0; k < size; k++)
        {
            c5_conv_layer2->data[i][k] = activation_func::tan_h(c5_conv_layer2->map_common[k] + c5_conv_layer2->b[i]);
        }
    }
}

void IMPL(max_pooling_fprop1)(HLS_COMMON_ARG Layer1 *c1_conv_layer1, Layer2 *c1_conv_layer2,
                             Layer1 *s2_pooling_layer1, Layer2 *s2_pooling_layer2)
{
    #pragma HLS disaggregate variable=c1_conv_layer1
    #pragma HLS disaggregate variable=c1_conv_layer2
    #pragma HLS disaggregate variable=s2_pooling_layer1
    #pragma HLS disaggregate variable=s2_pooling_layer2
    
    int map_w = s2_pooling_layer1->map_w;
    int map_h = s2_pooling_layer1->map_h;
    int upmap_w = c1_conv_layer1->map_w;

    for (int k = 0; k < s2_pooling_layer1->map_count; k++)
    {
        for (int i = 0; i < map_h; i++)
        {
            for (int j = 0; j < map_w; j++)
            {
                double max_value = c1_conv_layer2->data[k][2*i*upmap_w + 2*j];
                for (int n = 2*i; n < 2*(i + 1); n++)
                {
                    for (int m = 2*j; m < 2*(j + 1); m++)
                    {
                        max_value = MAX(max_value, c1_conv_layer2->data[k][n*upmap_w + m]);
                    }
                }

                s2_pooling_layer2->data[k][i*map_w + j] = activation_func::tan_h(max_value);
            }
        }
    }
}

void IMPL(max_pooling_fprop2)(HLS_COMMON_ARG Layer1 *c3_conv_layer1, Layer2 *c3_conv_layer2,
                             Layer1 *s4_pooling_layer1, Layer2 *s4_pooling_layer2)
{
    #pragma HLS disaggregate variable=c3_conv_layer1
    #pragma HLS disaggregate variable=c3_conv_layer2
    #pragma HLS disaggregate variable=s4_pooling_layer1
    #pragma HLS disaggregate variable=s4_pooling_layer2
    
    int s4_map_w = s4_pooling_layer1->map_w;
    int s4_map_h = s4_pooling_layer1->map_h;
    int c3_map_w = c3_conv_layer1->map_w;

    for (int k = 0; k < s4_pooling_layer1->map_count; k++)
    {
        for (int i = 0; i < s4_map_h; i++)
        {
            for (int j = 0; j < s4_map_w; j++)
            {
                double max_value = c3_conv_layer2->data[k][2*i*c3_map_w + 2*j];
                for (int n = 2*i; n < 2*(i + 1); n++)
                {
                    for (int m = 2*j; m < 2*(j + 1); m++)
                    {
                        max_value = MAX(max_value, c3_conv_layer2->data[k][n*c3_map_w + m]);
                    }
                }

                s4_pooling_layer2->data[k][i*s4_map_w + j] = activation_func::tan_h(max_value);
            }
        }
    }
}

void IMPL(fully_connected_fprop)(HLS_COMMON_ARG Layer1 *c5_conv_layer1, Layer2 *c5_conv_layer2,
                                Layer1 *output_layer1, Layer2 *output_layer2)
{
    #pragma HLS disaggregate variable=c5_conv_layer1
    #pragma HLS disaggregate variable=c5_conv_layer2
    #pragma HLS disaggregate variable=output_layer1
    #pragma HLS disaggregate variable=output_layer2
    
    for (int i = 0; i < output_layer1->map_count; i++) 
    {
        double sum = 0.0;
        for (int j = 0; j < c5_conv_layer1->map_count; j++)
        {
            sum += c5_conv_layer2->data[j][0] * output_layer2->W[j*output_layer1->map_count + i][0];
        }

        sum += output_layer2->b[i];
        output_layer2->data[i][0] = activation_func::tan_h(sum);
    }
}

#ifdef __cplusplus
}
#endif

#if CAPTURE_COSIM
    #include "hls_capture.cpp"
#endif