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

#ifndef TBCONFIG_CONV_FPROP1
    #define TBCONFIG_CONV_FPROP1                     0
#endif

#ifndef TBCONFIG_CONV_FPROP2
    #define TBCONFIG_CONV_FPROP2                     0
#endif

#ifndef TBCONFIG_CONV_FPROP3
    #define TBCONFIG_CONV_FPROP3                     0
#endif

#ifndef TBCONFIG_MAX_POOLING_FPROP1
    #define TBCONFIG_MAX_POOLING_FPROP1              0
#endif

#ifndef TBCONFIG_MAX_POOLING_FPROP2
    #define TBCONFIG_MAX_POOLING_FPROP2              0
#endif

#ifndef TBCONFIG_FULLY_CONNECTED_FPROP
    #define TBCONFIG_FULLY_CONNECTED_FPROP           0
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

bool test_conv_fprop1(){
#if (TBCONFIG_CONV_FPROP1 || TBCONFIG_ALL)
    printf("Test conv_fprop1\n");
    // define input variables 

    // define arrays
    bool pconnection [96];

    // define temp variables
    Layer input_layer;
    Layer c1_conv_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("conv_fprop1_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(input_layer,c1_conv_layer,pconnection);

        if (finish) {
            break;
        }
        // call the function
        conv_fprop1(HLS_COMMON_ARG_CALL &input_layer,&c1_conv_layer,pconnection);

        tgCheck(input_layer,c1_conv_layer,pconnection);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip conv_fprop1\n");
    return true;
#endif
}

bool test_conv_fprop2(){
#if (TBCONFIG_CONV_FPROP2 || TBCONFIG_ALL)
    printf("Test conv_fprop2\n");
    // define input variables 

    // define arrays
    bool pconnection [96];

    // define temp variables
    Layer s2_pooling_la;
    Layer c3_conv_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("conv_fprop2_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(s2_pooling_la,c3_conv_layer,pconnection);

        if (finish) {
            break;
        }
        // call the function
        conv_fprop2(HLS_COMMON_ARG_CALL &s2_pooling_la,&c3_conv_layer,pconnection);

        tgCheck(s2_pooling_la,c3_conv_layer,pconnection);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip conv_fprop2\n");
    return true;
#endif
}

bool test_conv_fprop3(){
#if (TBCONFIG_CONV_FPROP3 || TBCONFIG_ALL)
    printf("Test conv_fprop3\n");
    // define input variables 

    // define arrays
    bool pconnection [96];

    // define temp variables
    Layer s4_pooling_layer;
    Layer c5_conv_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("conv_fprop3_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(s4_pooling_layer,c5_conv_layer,pconnection);

        if (finish) {
            break;
        }
        // call the function
        conv_fprop3(HLS_COMMON_ARG_CALL &s4_pooling_layer,&c5_conv_layer,pconnection);

        tgCheck(s4_pooling_layer,c5_conv_layer,pconnection);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip conv_fprop3\n");
    return true;
#endif
}

bool test_max_pooling_fprop1(){
#if (TBCONFIG_MAX_POOLING_FPROP1 || TBCONFIG_ALL)
    printf("Test max_pooling_fprop1\n");
    // define input variables 

    // define arrays

    // define temp variables
    Layer c1_conv_layer;
    Layer s2_pooling_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("max_pooling_fprop1_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(c1_conv_layer,s2_pooling_layer);

        if (finish) {
            break;
        }
        // call the function
        max_pooling_fprop1(HLS_COMMON_ARG_CALL &c1_conv_layer,&s2_pooling_layer);

        tgCheck(c1_conv_layer,s2_pooling_layer);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip max_pooling_fprop1\n");
    return true;
#endif
}

bool test_max_pooling_fprop2(){
#if (TBCONFIG_MAX_POOLING_FPROP2 || TBCONFIG_ALL)
    printf("Test max_pooling_fprop2\n");
    // define input variables 

    // define arrays

    // define temp variables
    Layer c3_conv_layer;
    Layer s4_pooling_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("max_pooling_fprop2_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(c3_conv_layer,s4_pooling_layer);

        if (finish) {
            break;
        }
        // call the function
        max_pooling_fprop2(HLS_COMMON_ARG_CALL &c3_conv_layer,&s4_pooling_layer);

        tgCheck(c3_conv_layer,s4_pooling_layer);
        ++total_count;
    } while(true);

    printf("Passed after %d\n", total_count);
    return true;
#else
    printf("Skip max_pooling_fprop2\n");
    return true;
#endif
}

bool test_fully_connected_fprop(){
#if (TBCONFIG_FULLY_CONNECTED_FPROP || TBCONFIG_ALL)
    printf("Test fully_connected_fprop\n");
    // define input variables 

    // define arrays

    // define temp variables
    Layer c5_conv_layer;
    Layer output_layer;


    HLS_COMMON_INIT_VAR();

    // start loading 
    tgLoad("fully_connected_fprop_output.bin")
    
    unsigned int total_count = 0;
    bool finish = false;
    do{
        tgPop(c5_conv_layer,output_layer);

        if (finish) {
            break;
        }
        // call the function
        fully_connected_fprop(HLS_COMMON_ARG_CALL &c5_conv_layer,&output_layer);

        tgCheck(c5_conv_layer,output_layer);
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
    test_conv_fprop1();
    test_conv_fprop2();
    test_conv_fprop3();
    test_max_pooling_fprop1();
    test_max_pooling_fprop2();
    test_fully_connected_fprop();

    return 0;
}