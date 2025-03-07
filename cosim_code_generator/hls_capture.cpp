//####################################
// Append auto generated functions to the end of hls.cpp
#include <mutex>
#include "tgcapture.h"

template<typename T> T& ASSIGN_REF(T* ptr, const char *func_name) {
    if(ptr == NULL) {
        static T zero;
        static unsigned int i;
        if (i < 10) {
            std::cout << "warning: " <<  i << ':' << func_name << ": pointer is NULL\n";
            ++i;
        }
        return zero;
    } else {
        return *ptr;
    }
}

template<typename T> const T& ASSIGN_REF(const T* ptr, const char *func_name) {
    if(ptr == NULL) {
        static T zero;
        static unsigned int i;
        if (i < 10) {
            std::cout << "warning: " <<  i << ':' << func_name << ": const pointer is NULL\n";
            ++i;
        }
        return zero;
    } else {
        return *ptr;
    }
}

static const unsigned int MAX_CAPTURE_COUNT = 10000;
static const unsigned int MAX_CAPTURE_INTERVAL = 1;

//==============================================================
// Save cabac data bin
// capture to cabac file in case of PARENT_FUNC_MATCHED or PARENT_FUNC_NONE
// Hence, the child function cabac data doesn't modified the g_fbin, so it will be save to parent function one.
#define CABAC_LOG_START(filename)   bool is_capture_func = (parent_func_status == PARENT_FUNC_MATCHED || parent_func_status == PARENT_FUNC_NONE); \
                                    auto cabac_iter = g_fbin.find(__tid);       \
                                    if (is_capture_func) {                      \
                                        if(cabac_iter == g_fbin.end()){         \
                                            FILE *fbin = fopen(filename_append_tidx(filename).c_str(), "wb");           \
                                            if (fbin == NULL) {                     \
                                                printf("cannot open file to write: %s", filename);  \
                                                exit(-1);                           \
                                            }                                       \
                                            capture_cabac_info info(fbin, true);    \
                                            g_fbin[__tid] = info;           \
                                        } else {                                    \
                                            cabac_iter->second.enable = true;       \
                                        }                                           \
                                    }


#define CABAC_LOG_END()             if (is_capture_func) {   \
                                        if (capture_group.items[__tid]->get_capture_count() == MAX_CAPTURE_COUNT &&  g_fbin[__tid].f != NULL) {   \
                                            fclose(g_fbin[__tid].f);                \
                                            g_fbin[__tid].f = NULL;                 \
                                        }                                           \
                                        g_fbin[__tid].enable = false;               \
                                    }



struct capture_cabac_info{
    FILE* f;
    bool enable;

    capture_cabac_info(){
        f= NULL;
        enable = false;
    }
    capture_cabac_info(FILE* p_f, bool p_enable){
        f= p_f;
        enable = p_enable;
    }
};

static std::unordered_map<pthread_t, capture_cabac_info> g_fbin;

void decodeBin_log(int ctx, int bin)
{
    pthread_t tid = pthread_self();
    auto iter = g_fbin.find(tid);
    if (iter == g_fbin.end()){
        return;
    }

    if (iter->second.f != NULL && iter->second.enable)
    {
        //fputc(ctx & 0xff, outF);
        //fputc((ctx >> 8) & 0xff, outF);
        fputc(bin, iter->second.f);
    }
}

//==============================================================

#ifdef __cplusplus
extern "C" {
#endif

void CAPTURE_(convn_valid)(double in_data[1024],int in_w,int in_h,double kernel[25],int kernel_w,int kernel_h,double out_data[1024],int out_w,int out_h){
#if 1
static CCapture capture_convn_valid;
CCapture *capture = &capture_convn_valid;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers


    tgOpen("convn_valid_output.bin", in_data, in_w, in_h, kernel, kernel_w, kernel_h, out_data, out_w, out_h);

    tgCaptureBeforeCall(in_data,1024,in_w,in_h,kernel,25,kernel_w,kernel_h,out_data,1024,out_w,out_h);

    // call the function with the initial parameters
    IMPL(convn_valid)(in_data, in_w, in_h, kernel, kernel_w, kernel_h, out_data, out_w, out_h);

    tgCaptureAfterCall(in_data,1024,kernel,25,out_data,1024);

    tgClose();
#else
    IMPL(convn_valid)(in_data, in_w, in_h, kernel, kernel_w, kernel_h, out_data, out_w, out_h);
#endif
}

void CAPTURE_(conv_fprop)(Layer * prev_layer_ptr,Layer * layer_ptr,bool pconnection[96]){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
static CCapture capture_conv_fprop;
CCapture *capture = &capture_conv_fprop;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer & prev_layer = ASSIGN_REF(prev_layer_ptr, __FUNCTION__);
    Layer & layer = ASSIGN_REF(layer_ptr, __FUNCTION__);


    tgOpen("conv_fprop_output.bin", prev_layer, layer, pconnection);

    tgCaptureBeforeCall(prev_layer,layer,pconnection,96);

    // call the function with the initial parameters
    IMPL(conv_fprop)(prev_layer_ptr, layer_ptr, pconnection);

    tgCaptureAfterCall(prev_layer,layer,pconnection,96);

    tgClose();
#else
    IMPL(conv_fprop)(prev_layer_ptr, layer_ptr, pconnection);
#endif
}

void CAPTURE_(max_pooling_fprop)(Layer * prev_layer_ptr,Layer * layer_ptr){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
static CCapture capture_max_pooling_fprop;
CCapture *capture = &capture_max_pooling_fprop;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer & prev_layer = ASSIGN_REF(prev_layer_ptr, __FUNCTION__);
    Layer & layer = ASSIGN_REF(layer_ptr, __FUNCTION__);


    tgOpen("max_pooling_fprop_output.bin", prev_layer, layer);

    tgCaptureBeforeCall(prev_layer,layer);

    // call the function with the initial parameters
    IMPL(max_pooling_fprop)(prev_layer_ptr, layer_ptr);

    tgCaptureAfterCall(prev_layer,layer);

    tgClose();
#else
    IMPL(max_pooling_fprop)(prev_layer_ptr, layer_ptr);
#endif
}

void CAPTURE_(fully_connected_fprop)(Layer * prev_layer_ptr,Layer * layer_ptr){
#if 0 //cosim_code_generator: This function is marked as skip in function_list.txt
static CCapture capture_fully_connected_fprop;
CCapture *capture = &capture_fully_connected_fprop;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer & prev_layer = ASSIGN_REF(prev_layer_ptr, __FUNCTION__);
    Layer & layer = ASSIGN_REF(layer_ptr, __FUNCTION__);


    tgOpen("fully_connected_fprop_output.bin", prev_layer, layer);

    tgCaptureBeforeCall(prev_layer,layer);

    // call the function with the initial parameters
    IMPL(fully_connected_fprop)(prev_layer_ptr, layer_ptr);

    tgCaptureAfterCall(prev_layer,layer);

    tgClose();
#else
    IMPL(fully_connected_fprop)(prev_layer_ptr, layer_ptr);
#endif
}



#ifdef __cplusplus
}
#endif