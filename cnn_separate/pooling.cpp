#include "pooling.h"


#ifndef MAX
#define MAX(A,B)	(((A) >= (B)) ? (A) : (B))
#endif


void max_pooling_fprop(Layer *prev_layer, Layer *layer)
{
    int map_w = layer->map_w;
    int map_h = layer->map_h;
    int upmap_w = prev_layer->map_w;


    if (map_w * map_h > MAX_MAP_SIZE || prev_layer->map_w * prev_layer->map_h > MAX_MAP_SIZE) {
        return;
    }

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