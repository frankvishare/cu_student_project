#include <memory>
#include "hls_config.h"
#include "hls.h"
#include "tgload.h"
#if __VITIS_HLS__
    #include <ap_int.h>
#endif

#ifndef TBCONFIG_ALL
    #define TBCONFIG_ALL                             0
#endif

#ifndef TBCONFIG_CONVN_VALID
    #define TBCONFIG_CONVN_VALID                     0
#endif



template<typename TSRC, typename TDST>
void array_to_ap_uint(TSRC *src, size_t src_count, TDST &dst){
    size_t idx = 0;
    for(size_t i=0; i<src_count; i++){
        for (size_t j=0; j<32; j++) {
            if (idx < dst.length()) {
                uint8_t value = (src[i] >> j) & 1;
                dst[idx] = value;
                ++idx;
            }
        }
    }
}

template<typename TSRC, typename TDST>
void ap_uint_to_array(TSRC &src, TDST *dst, size_t dst_count){
    size_t idx = 0;
    for(size_t i=0; i<dst_count; i++){
        dst[i] = 0;
        for (size_t j=0; j<32; j++) {
            if (idx < src.length()) {
                uint8_t value = src[idx];
                if (value) {
                    dst[i] |= (1 << j);
                }
                ++idx;
            }
        }
    }
}

#if (DCACHE_SIZE >= 0x1FFFFFFF)
    #error "DCACHE_SIZE is too large for cosimulation, please minimize the DACHE_SIZE for cosimulation and revert back the DCACHE_SIZE to 0x1FFFFFFF after cosim"
#endif

bool test_convn_valid(){
#if (TBCONFIG_CONVN_VALID || TBCONFIG_ALL)
    printf("Test convn_valid\n");
    // define input variables 
    int in_w;
    int in_h;
    int kernel_w;
    int kernel_h;
    int out_w;
    int out_h;

    // define arrays
    double in_data [1024];
    double kernel [25];
    double out_data [1024];

    // define temp variables


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("convn_valid_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(in_data,in_w,in_h,kernel,kernel_w,kernel_h,out_data,out_w,out_h);

        if (finish) {
            break;
        }
        // call the function
        convn_valid(HLS_COMMON_ARG_CALL in_data,in_w,in_h,kernel,kernel_w,kernel_h,out_data,out_w,out_h);

        tgCheck(in_data,kernel,out_data);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip convn_valid\n");
    return true;
#endif
}

bool test_conv_fprop(){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
    printf("Test conv_fprop\n");
    // define input variables 

    // define arrays
    bool pconnection [96];

    // define temp variables
    Layer prev_layer;
    Layer layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("conv_fprop_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(prev_layer,layer,pconnection);

        if (finish) {
            break;
        }
        // call the function
        conv_fprop(HLS_COMMON_ARG_CALL &prev_layer,&layer,pconnection);

        tgCheck(prev_layer,layer,pconnection);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip conv_fprop\n");
    return true;
#endif
}

bool test_max_pooling_fprop(){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
    printf("Test max_pooling_fprop\n");
    // define input variables 

    // define arrays

    // define temp variables
    Layer prev_layer;
    Layer layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("max_pooling_fprop_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(prev_layer,layer);

        if (finish) {
            break;
        }
        // call the function
        max_pooling_fprop(HLS_COMMON_ARG_CALL &prev_layer,&layer);

        tgCheck(prev_layer,layer);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip max_pooling_fprop\n");
    return true;
#endif
}

bool test_fully_connected_fprop(){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
    printf("Test fully_connected_fprop\n");
    // define input variables 

    // define arrays

    // define temp variables
    Layer prev_layer;
    Layer layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("fully_connected_fprop_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(prev_layer,layer);

        if (finish) {
            break;
        }
        // call the function
        fully_connected_fprop(HLS_COMMON_ARG_CALL &prev_layer,&layer);

        tgCheck(prev_layer,layer);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip fully_connected_fprop\n");
    return true;
#endif
}



int main(){
    test_convn_valid();
    test_conv_fprop();
    test_max_pooling_fprop();
    test_fully_connected_fprop();

    return 0;
}