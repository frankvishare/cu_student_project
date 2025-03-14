#ifndef _HLS_APCALL_H_
#define _HLS_APCALL_H_

//#include <stdio.h>
//#include <iostream>
//#include <stdlib.h>
#include <stdint.h>
#include "hls_enum.h"
#include "hls.h"

/*
enum long_tail_id
{
    enum_conv_fprop1,
    enum_conv_fprop2,
    enum_conv_fprop3,
    enum_max_pooling_fprop1,
    enum_max_pooling_fprop2,
    enum_fully_connected_fprop
};
*/

#ifdef __cplusplus
extern "C" {
#endif

#if ASIM_CALL
    #define ASIM_SET_HEVC_CONTEXT() asim_set_hevc_context(HEVCCONTEXT_CALL_NoComma)
#else
    #define ASIM_SET_HEVC_CONTEXT()
#endif

#if __riscv && ASIM_CALL
void asim_hls_handler(void) __attribute__ ((interrupt ("supervisor")));
#endif

#if __riscv

//----- Longtail HLS with get cabac interface ----
#if HLS_GET_CABAC || HLS_CMDR || ASIM_CALL
    #define LONGTAIL_WITH_CABAC     1
#else
    #define LONGTAIL_WITH_CABAC     0
#endif

// Calculate the cycle count within apcall by mcycle32()  
#define APCALL_PROFILE      0

//----- Non-blocking ap call (for riscv fpga only) ----
#define NON_BLOCK_AP_CALL   0
#define HLS_SELECT          ((NON_BLOCK_AP_CALL)? 3 : 1)

//----- Hardware dma for memcpy/memset (for riscv fpga only) ----
//edward 2024-10-22: Since copyEngine is used, there is no MTDMA for riscv core.
#define HLS_MTDMA                   0
//#if _rvTranslate
//    #define HLS_MTDMA             0
//#else
//    #define HLS_MTDMA             1  
//#endif

//----- Select HLS run by hardware -----
#if _rvTranslate || HLS_XMEM
#define riscv_conv_fprop1                                        1
#define riscv_conv_fprop2                                        1
#define riscv_conv_fprop3                                        1
#define riscv_max_pooling_fprop1                                 1
#define riscv_max_pooling_fprop2                                 1
#define riscv_fully_connected_fprop                              1
#endif

#define ENUM_FUNC_NUM       HLS_NUM
#define ENUM_FUNC_NUM_ALIGN (((HLS_NUM + 31) / 32) * 32) //aligned with 32-bytes
#define HLS_THREAD          8
#define NEW_HLS_PROF_CNT    1   //edward 2024-10-09: new cycle profiling with function arbiter and xmem2
#define HW_HLS_ACC_CNT      1   //edward 2025-01-06: hardware accumulate profiling counter

#if APCALL_PROFILE
    typedef struct {
        uint32_t count;
        uint32_t acc_cycle;
        uint32_t min;
        uint32_t max;
        //edward 2024-10-09: new cycle profiling with function arbiter and xmem2
        #if NEW_HLS_PROF_CNT
        uint32_t acc_dc_busy;
        uint32_t acc_xmem_busy;
        uint32_t acc_farb_busy;
        uint32_t acc_cyc_no_busy;
        uint32_t min_no_busy;
        uint32_t max_no_busy;
        #endif
    }apcall_profile_t;

    extern apcall_profile_t apcall_profile[HLS_THREAD][ENUM_FUNC_NUM_ALIGN];
    extern const char *hls_func_name[];

  //edward 2025-01-06: hardware accumulate profiling counter
  #if HW_HLS_ACC_CNT

    #define APCALL_PROFILE_START()
    #define APCALL_PROFILE_STOP(FUNC_ID)

  //edward 2024-10-09: new cycle profiling with function arbiter and xmem2
  #elif NEW_HLS_PROF_CNT

    #define APCALL_PROFILE_START()          
    #define APCALL_PROFILE_STOP(FUNC_ID)                                                                   \
                                        do {                                                               \
                                            uint32_t thd       = mhartid();                                \
                                            uint32_t cyc       = longtail_total_cycle(FUNC_ID);                   \
                                            uint32_t dc_busy   = longtail_dc_busy(FUNC_ID);                       \
                                            uint32_t xmem_busy = longtail_xmem_busy(FUNC_ID);                     \
                                            uint32_t farb_busy = longtail_farb_busy(FUNC_ID);                     \
                                            longtail_clear_profile(FUNC_ID);                               \
                                            uint32_t cyc_no_busy = cyc - dc_busy - xmem_busy - farb_busy;  \
                                            if (cyc > apcall_profile[thd][FUNC_ID].max)                    \
                                                apcall_profile[thd][FUNC_ID].max = cyc;                    \
                                            if (cyc < apcall_profile[thd][FUNC_ID].min)                    \
                                                apcall_profile[thd][FUNC_ID].min = cyc;                    \
                                            apcall_profile[thd][FUNC_ID].acc_cycle += cyc;                 \
                                            apcall_profile[thd][FUNC_ID].acc_dc_busy += dc_busy;           \
                                            apcall_profile[thd][FUNC_ID].acc_xmem_busy += xmem_busy;       \
                                            apcall_profile[thd][FUNC_ID].acc_farb_busy += farb_busy;       \
                                            apcall_profile[thd][FUNC_ID].acc_cyc_no_busy += cyc_no_busy;   \
                                            if (cyc_no_busy > apcall_profile[thd][FUNC_ID].max_no_busy)    \
                                                apcall_profile[thd][FUNC_ID].max_no_busy = cyc_no_busy;    \
                                            if (cyc_no_busy < apcall_profile[thd][FUNC_ID].min_no_busy)    \
                                                apcall_profile[thd][FUNC_ID].min_no_busy = cyc_no_busy;    \
                                            ++apcall_profile[thd][FUNC_ID].count;                          \
                                        } while (0)

  #else

    #define APCALL_PROFILE_START()          uint32_t cyc = mcycle32();
    #define APCALL_PROFILE_STOP(FUNC_ID)    uint32_t now = mcycle32();                          \
                                            uint32_t thd = mhartid();                           \
                                            uint32_t diff;                                      \
                                            if(now>cyc) {                                       \
                                                diff = now - cyc;                               \
                                            } else {                                            \
                                                diff = cyc - now;                               \
                                                printf("*** cycle overflow ***\n");             \
                                            }                                                   \
                                            if (diff > 100) {                                   \
                                                printf("*** apcall cycle > 100: %s %u ***\n", hls_func_name[FUNC_ID], diff);   \
                                            }                                                   \
                                            if (diff > apcall_profile[thd][FUNC_ID].max)        \
                                                apcall_profile[thd][FUNC_ID].max = diff;        \
                                            if (diff < apcall_profile[thd][FUNC_ID].min)        \
                                                apcall_profile[thd][FUNC_ID].min = diff;        \
                                            apcall_profile[thd][FUNC_ID].acc_cycle += diff;     \
                                            ++apcall_profile[thd][FUNC_ID].count;

  #endif
#else
    #define APCALL_PROFILE_START()
    #define APCALL_PROFILE_STOP(FUNC_ID)
#endif

void apcall_profile_init(void);
void apcall_profile_done(int thd);
void apcall_profile_report(void);

#if DEBUG
    static void TRACE() {}

    template<typename T, typename ... Types>
    static void TRACE (T firstArg, Types ... args) {
        std::cout << firstArg << ' ';

        TRACE(args...);
    }
#else
    #define TRACE(...)
#endif

#ifndef ARRAY_SIZE
    #define ARRAY_SIZE(arr) (sizeof(arr)/sizeof((arr)[0])
#endif

#if 0
// memcpy may encounter error in xmem because the element may only support dedicated data width 
// use xmem_copy to clone the element to ensure the data width is exactly matched.
template <typename T>
void inline xmem_copy(T *dest, const T *src, size_t num){
    for (size_t i=0; i<num; i++) {
        dest[i] = src[i];
    }
}
#endif

// not use inline function for profilnig
#if APCALL_PROFILE
#define inline __attribute__((noinline))
#endif

static inline void APCALL(conv_fprop1)(HLS_COMMON_ARG  Layer1 * input_layer1, Layer2 * input_layer2, Layer1 * c1_conv_layer1, Layer2 * c1_conv_layer2, bool pconnection[96]){
    //TRACE(input_layer1, input_layer2, c1_conv_layer1, c1_conv_layer2, pconnection);
#if (riscv_conv_fprop1 == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_conv_fprop1);
    APCALL_PROFILE_STOP(enum_conv_fprop1);
    //TRACE(input_layer1, input_layer2, c1_conv_layer1, c1_conv_layer2, pconnection);
#elif (riscv_conv_fprop1 == 2u)
    nop();
    ap_call_nb_0(enum_conv_fprop1);
#elif (riscv_conv_fprop1 == 3u)
    nop();
    ap_call_nb_noret_0(enum_conv_fprop1);
#else
    IMPL(conv_fprop1)(HLS_COMMON_ARG_CALL  input_layer1, input_layer2, c1_conv_layer1, c1_conv_layer2, pconnection);
#endif
}
static inline void conv_fprop1_ret(void){
#if (riscv_conv_fprop1 == 2u)
    ap_ret(enum_conv_fprop1);
#endif
}


static inline void APCALL(conv_fprop2)(HLS_COMMON_ARG  Layer1 * s2_pooling_layer1, Layer2 * s2_pooling_layer2, Layer1 * c3_conv_layer1, Layer2 * c3_conv_layer2, bool pconnection[96]){
    //TRACE(s2_pooling_layer1, s2_pooling_layer2, c3_conv_layer1, c3_conv_layer2, pconnection);
#if (riscv_conv_fprop2 == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_conv_fprop2);
    APCALL_PROFILE_STOP(enum_conv_fprop2);
    //TRACE(s2_pooling_layer1, s2_pooling_layer2, c3_conv_layer1, c3_conv_layer2, pconnection);
#elif (riscv_conv_fprop2 == 2u)
    nop();
    ap_call_nb_0(enum_conv_fprop2);
#elif (riscv_conv_fprop2 == 3u)
    nop();
    ap_call_nb_noret_0(enum_conv_fprop2);
#else
    IMPL(conv_fprop2)(HLS_COMMON_ARG_CALL  s2_pooling_layer1, s2_pooling_layer2, c3_conv_layer1, c3_conv_layer2, pconnection);
#endif
}
static inline void conv_fprop2_ret(void){
#if (riscv_conv_fprop2 == 2u)
    ap_ret(enum_conv_fprop2);
#endif
}


static inline void APCALL(conv_fprop3)(HLS_COMMON_ARG  Layer1 * s4_pooling_layer1, Layer2 * s4_pooling_layer2, Layer1 * c5_conv_layer1, Layer2 * c5_conv_layer2, bool pconnection[96]){
    //TRACE(s4_pooling_layer1, s4_pooling_layer2, c5_conv_layer1, c5_conv_layer2, pconnection);
#if (riscv_conv_fprop3 == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_conv_fprop3);
    APCALL_PROFILE_STOP(enum_conv_fprop3);
    //TRACE(s4_pooling_layer1, s4_pooling_layer2, c5_conv_layer1, c5_conv_layer2, pconnection);
#elif (riscv_conv_fprop3 == 2u)
    nop();
    ap_call_nb_0(enum_conv_fprop3);
#elif (riscv_conv_fprop3 == 3u)
    nop();
    ap_call_nb_noret_0(enum_conv_fprop3);
#else
    IMPL(conv_fprop3)(HLS_COMMON_ARG_CALL  s4_pooling_layer1, s4_pooling_layer2, c5_conv_layer1, c5_conv_layer2, pconnection);
#endif
}
static inline void conv_fprop3_ret(void){
#if (riscv_conv_fprop3 == 2u)
    ap_ret(enum_conv_fprop3);
#endif
}


static inline void APCALL(max_pooling_fprop1)(HLS_COMMON_ARG  Layer1 * c1_conv_layer1, Layer2 * c1_conv_layer2, Layer1 * s2_pooling_layer1, Layer2 * s2_pooling_layer2){
    //TRACE(c1_conv_layer1, c1_conv_layer2, s2_pooling_layer1, s2_pooling_layer2);
#if (riscv_max_pooling_fprop1 == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_max_pooling_fprop1);
    APCALL_PROFILE_STOP(enum_max_pooling_fprop1);
    //TRACE(c1_conv_layer1, c1_conv_layer2, s2_pooling_layer1, s2_pooling_layer2);
#elif (riscv_max_pooling_fprop1 == 2u)
    nop();
    ap_call_nb_0(enum_max_pooling_fprop1);
#elif (riscv_max_pooling_fprop1 == 3u)
    nop();
    ap_call_nb_noret_0(enum_max_pooling_fprop1);
#else
    IMPL(max_pooling_fprop1)(HLS_COMMON_ARG_CALL  c1_conv_layer1, c1_conv_layer2, s2_pooling_layer1, s2_pooling_layer2);
#endif
}
static inline void max_pooling_fprop1_ret(void){
#if (riscv_max_pooling_fprop1 == 2u)
    ap_ret(enum_max_pooling_fprop1);
#endif
}


static inline void APCALL(max_pooling_fprop2)(HLS_COMMON_ARG  Layer1 * c3_conv_layer1, Layer2 * c3_conv_layer2, Layer1 * s4_pooling_layer1, Layer2 * s4_pooling_layer2){
    //TRACE(c3_conv_layer1, c3_conv_layer2, s4_pooling_layer1, s4_pooling_layer2);
#if (riscv_max_pooling_fprop2 == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_max_pooling_fprop2);
    APCALL_PROFILE_STOP(enum_max_pooling_fprop2);
    //TRACE(c3_conv_layer1, c3_conv_layer2, s4_pooling_layer1, s4_pooling_layer2);
#elif (riscv_max_pooling_fprop2 == 2u)
    nop();
    ap_call_nb_0(enum_max_pooling_fprop2);
#elif (riscv_max_pooling_fprop2 == 3u)
    nop();
    ap_call_nb_noret_0(enum_max_pooling_fprop2);
#else
    IMPL(max_pooling_fprop2)(HLS_COMMON_ARG_CALL  c3_conv_layer1, c3_conv_layer2, s4_pooling_layer1, s4_pooling_layer2);
#endif
}
static inline void max_pooling_fprop2_ret(void){
#if (riscv_max_pooling_fprop2 == 2u)
    ap_ret(enum_max_pooling_fprop2);
#endif
}


static inline void APCALL(fully_connected_fprop)(HLS_COMMON_ARG  Layer1 * c5_conv_layer1, Layer2 * c5_conv_layer2, Layer1 * output_layer1, Layer2 * output_layer2){
    //TRACE(c5_conv_layer1, c5_conv_layer2, output_layer1, output_layer2);
#if (riscv_fully_connected_fprop == 1u)  // apcall
    APCALL_PROFILE_START();
    nop();
    ap_call_0(enum_fully_connected_fprop);
    APCALL_PROFILE_STOP(enum_fully_connected_fprop);
    //TRACE(c5_conv_layer1, c5_conv_layer2, output_layer1, output_layer2);
#elif (riscv_fully_connected_fprop == 2u)
    nop();
    ap_call_nb_0(enum_fully_connected_fprop);
#elif (riscv_fully_connected_fprop == 3u)
    nop();
    ap_call_nb_noret_0(enum_fully_connected_fprop);
#else
    IMPL(fully_connected_fprop)(HLS_COMMON_ARG_CALL  c5_conv_layer1, c5_conv_layer2, output_layer1, output_layer2);
#endif
}
static inline void fully_connected_fprop_ret(void){
#if (riscv_fully_connected_fprop == 2u)
    ap_ret(enum_fully_connected_fprop);
#endif
}
#if HLS_XMEM

#endif

#if APCALL_PROFILE
#undef inline
#endif

#endif

#ifdef __cplusplus
}
#endif

#endif
