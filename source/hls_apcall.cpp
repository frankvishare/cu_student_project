#if __riscv

#include <stdio.h>
#include <string.h>
#include "hls_apcall.h"

#ifdef __cplusplus 
extern "C" {
#endif 

#if _DEBUG
    #define DEBUG_PRINTF(...)       printf(__VA_ARGS__);
#else
    #define DEBUG_PRINTF(...)
#endif


#if ASIM_CALL

static dcache_info_t dcache_info[MAX_CORE_NUM];

#define ASIM_FUNC_ARBITER_ARG_CALL xmem, &ret_rdy, &ret, &call_child

void /*__attribute__ ((interrupt ("supervisor")))*/ asim_hls_handler(){

    child_cmd_t call_child;
    int ret;
    bool ret_rdy;

    int __return_status__ = 0;

    //xmem_t *xmem = (xmem_t*)asim_xmem_at();
    xmem_t *xmem = (xmem_t*)get_riscv_xmem_base();

    hls_enum_t hls_id = (hls_enum_t)asim_get_apcall_hls_id();
    
    switch(hls_id){
    case enum_conv_fprop1:
    {
        DEBUG_PRINTF("APCALL HLS function: conv_fprop1\n");
        Layer1 * input_layer1 = &xmem->input_layer1; //xmem pointer
        Layer2 * input_layer2 = &xmem->input_layer2; //xmem pointer
        Layer1 * c1_conv_layer1 = &xmem->c1_conv_layer1; //xmem pointer
        Layer2 * c1_conv_layer2 = &xmem->c1_conv_layer2; //xmem pointer
        bool *pconnection = xmem->pconnection;  //xmem array
        IMPL(conv_fprop1)(HLS_COMMON_ARG_CALL  input_layer1, input_layer2, c1_conv_layer1, c1_conv_layer2, pconnection);
        break;
    }
    case enum_conv_fprop2:
    {
        DEBUG_PRINTF("APCALL HLS function: conv_fprop2\n");
        Layer1 * s2_pooling_layer1 = &xmem->s2_pooling_layer1; //xmem pointer
        Layer2 * s2_pooling_layer2 = &xmem->s2_pooling_layer2; //xmem pointer
        Layer1 * c3_conv_layer1 = &xmem->c3_conv_layer1; //xmem pointer
        Layer2 * c3_conv_layer2 = &xmem->c3_conv_layer2; //xmem pointer
        bool *pconnection = xmem->pconnection;  //xmem array
        IMPL(conv_fprop2)(HLS_COMMON_ARG_CALL  s2_pooling_layer1, s2_pooling_layer2, c3_conv_layer1, c3_conv_layer2, pconnection);
        break;
    }
    case enum_conv_fprop3:
    {
        DEBUG_PRINTF("APCALL HLS function: conv_fprop3\n");
        Layer1 * s4_pooling_layer1 = &xmem->s4_pooling_layer1; //xmem pointer
        Layer2 * s4_pooling_layer2 = &xmem->s4_pooling_layer2; //xmem pointer
        Layer1 * c5_conv_layer1 = &xmem->c5_conv_layer1; //xmem pointer
        Layer2 * c5_conv_layer2 = &xmem->c5_conv_layer2; //xmem pointer
        bool *pconnection = xmem->pconnection;  //xmem array
        IMPL(conv_fprop3)(HLS_COMMON_ARG_CALL  s4_pooling_layer1, s4_pooling_layer2, c5_conv_layer1, c5_conv_layer2, pconnection);
        break;
    }
    case enum_max_pooling_fprop1:
    {
        DEBUG_PRINTF("APCALL HLS function: max_pooling_fprop1\n");
        Layer1 * c1_conv_layer1 = &xmem->c1_conv_layer1; //xmem pointer
        Layer2 * c1_conv_layer2 = &xmem->c1_conv_layer2; //xmem pointer
        Layer1 * s2_pooling_layer1 = &xmem->s2_pooling_layer1; //xmem pointer
        Layer2 * s2_pooling_layer2 = &xmem->s2_pooling_layer2; //xmem pointer
        IMPL(max_pooling_fprop1)(HLS_COMMON_ARG_CALL  c1_conv_layer1, c1_conv_layer2, s2_pooling_layer1, s2_pooling_layer2);
        break;
    }
    case enum_max_pooling_fprop2:
    {
        DEBUG_PRINTF("APCALL HLS function: max_pooling_fprop2\n");
        Layer1 * c3_conv_layer1 = &xmem->c3_conv_layer1; //xmem pointer
        Layer2 * c3_conv_layer2 = &xmem->c3_conv_layer2; //xmem pointer
        Layer1 * s4_pooling_layer1 = &xmem->s4_pooling_layer1; //xmem pointer
        Layer2 * s4_pooling_layer2 = &xmem->s4_pooling_layer2; //xmem pointer
        IMPL(max_pooling_fprop2)(HLS_COMMON_ARG_CALL  c3_conv_layer1, c3_conv_layer2, s4_pooling_layer1, s4_pooling_layer2);
        break;
    }
    case enum_fully_connected_fprop:
    {
        DEBUG_PRINTF("APCALL HLS function: fully_connected_fprop\n");
        Layer1 * c5_conv_layer1 = &xmem->c5_conv_layer1; //xmem pointer
        Layer2 * c5_conv_layer2 = &xmem->c5_conv_layer2; //xmem pointer
        Layer1 * output_layer1 = &xmem->output_layer1; //xmem pointer
        Layer2 * output_layer2 = &xmem->output_layer2; //xmem pointer
        IMPL(fully_connected_fprop)(HLS_COMMON_ARG_CALL  c5_conv_layer1, c5_conv_layer2, output_layer1, output_layer2);
        break;
    }

        default:
            printf("Undefined HLS func ID\n");
    }

    asim_set_apreturn(__return_status__);
}

#endif

#if APCALL_PROFILE

apcall_profile_t apcall_profile[HLS_THREAD][ENUM_FUNC_NUM_ALIGN];

const char *hls_func_name[] = { "conv_fprop1",
    "conv_fprop2",
    "conv_fprop3",
    "max_pooling_fprop1",
    "max_pooling_fprop2",
    "fully_connected_fprop" };

void apcall_profile_init(){
    memset(apcall_profile, 0, sizeof(apcall_profile));
    for (int i=0; i<ENUM_FUNC_NUM; i++){
        for (int j=0; j<HLS_THREAD; j++){
            apcall_profile[j][i].min = 1000000;
//edward 2024-10-09: new cycle profiling with function arbiter and xmem2
#if NEW_HLS_PROF_CNT
            apcall_profile[j][i].min_no_busy = 1000000;
#endif
        }
    }
}

//edward 2025-01-06: hardware accumulate profiling counter
void hw_apcall_profile_done(int thd){
#if HW_HLS_ACC_CNT
    for(int i=0; i<ENUM_FUNC_NUM; i++){
        apcall_profile[thd][i].count = longtail_call_count(i);
        apcall_profile[thd][i].acc_cycle = longtail_total_cycle(i);
        apcall_profile[thd][i].acc_dc_busy = longtail_dc_busy(i);
        apcall_profile[thd][i].acc_xmem_busy = longtail_xmem_busy(i);
        apcall_profile[thd][i].acc_farb_busy = longtail_farb_busy(i);
    }
#endif
}

void apcall_profile_report(){
    printf("write apcall profile\n");
    FILE *f = fopen("apcall_profile.csv", "w");
    if (!f) {
        printf("cannot open apcall_profile.csv\n");
        return;
    }
//edward 2025-01-06: hardware accumulate profiling counter
#if HW_HLS_ACC_CNT
    fprintf(f, "hls_func_name,count,acc_cycle,acc_dc,acc_xmem,acc_farb\n");
//edward 2024-10-09: new cycle profiling with function arbiter and xmem2
#elif NEW_HLS_PROF_CNT
    fprintf(f, "hls_func_name,count,acc_cycle,acc_dc,acc_xmem,acc_farb,min,max,avg,acc_cycle_no_busy,min_no_busy,max_no_busy,avg_no_busy\n");
#else
    fprintf(f, "hls_func_name,count,acc_cycle,min,max,avg\n");
#endif
    for(int i=0; i<ENUM_FUNC_NUM; i++){
        uint32_t count = 0;
        uint32_t acc_cycle = 0;
        uint32_t acc_dc = 0;
        uint32_t acc_xmem = 0;
        uint32_t acc_farb = 0;
        uint32_t min = 1000000;
        uint32_t max = 0;
        uint32_t avg = 0;
        uint32_t acc_cycle_no_busy = 0;
        uint32_t min_no_busy = 1000000;
        uint32_t max_no_busy = 0;
        uint32_t avg_no_busy = 0;
        
        for (int j=0; j<HLS_THREAD; j++){
            count += apcall_profile[j][i].count;
            acc_cycle += apcall_profile[j][i].acc_cycle;
            if (apcall_profile[j][i].max > max)
                max = apcall_profile[j][i].max;
            if (apcall_profile[j][i].min < min)
                min = apcall_profile[j][i].min;
//edward 2024-10-09: new cycle profiling with function arbiter and xmem2
#if NEW_HLS_PROF_CNT
            acc_dc += apcall_profile[j][i].acc_dc_busy;
            acc_xmem += apcall_profile[j][i].acc_xmem_busy;
            acc_farb += apcall_profile[j][i].acc_farb_busy;
            acc_cycle_no_busy += apcall_profile[j][i].acc_cyc_no_busy;
            if (apcall_profile[j][i].max_no_busy > max_no_busy)
                max_no_busy = apcall_profile[j][i].max_no_busy;
            if (apcall_profile[j][i].min_no_busy < min_no_busy)
                min_no_busy = apcall_profile[j][i].min_no_busy;
#endif
        }
        if (count != 0) {
            avg = acc_cycle / count;
            avg_no_busy = acc_cycle_no_busy / count;
        }
        else {
            min = 0;
            min_no_busy = 0;
        }
//edward 2025-01-06: hardware accumulate profiling counter
#if HW_HLS_ACC_CNT
        fprintf(f, "\"%s\", %u, %u, %u, %u, %u\n", hls_func_name[i], count, acc_cycle, acc_dc, acc_xmem, acc_farb);
//edward 2024-10-09: new cycle profiling with function arbiter and xmem2
#elif NEW_HLS_PROF_CNT
        fprintf(f, "\"%s\", %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u\n", hls_func_name[i], count, acc_cycle, acc_dc, acc_xmem, acc_farb, min, max, avg, acc_cycle_no_busy, min_no_busy, max_no_busy, avg_no_busy);
#else
        fprintf(f, "\"%s\", %u, %u, %u, %u, %u\n", hls_func_name[i], count, acc_cycle, min, max, avg);
#endif
    }
    fclose(f);
}


#else

void apcall_profile_init(){
}

void hw_apcall_profile_done(int thd){
}

void apcall_profile_report(){
}

#endif

#ifdef __cplusplus 
}
#endif

#endif //__riscv
