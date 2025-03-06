#include "fully_connected.h"


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