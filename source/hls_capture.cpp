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

void CAPTURE_(conv_fprop1)(Layer1 * input_layer1_ptr,Layer2 * input_layer2_ptr,Layer1 * c1_conv_layer1_ptr,Layer2 * c1_conv_layer2_ptr,uint8_t pconnection[96]){
#if 1
static CCapture capture_conv_fprop1;
CCapture *capture = &capture_conv_fprop1;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & input_layer1 = ASSIGN_REF(input_layer1_ptr, __FUNCTION__);
    Layer2 & input_layer2 = ASSIGN_REF(input_layer2_ptr, __FUNCTION__);
    Layer1 & c1_conv_layer1 = ASSIGN_REF(c1_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c1_conv_layer2 = ASSIGN_REF(c1_conv_layer2_ptr, __FUNCTION__);


    tgOpen("conv_fprop1_output.bin", input_layer1, input_layer2, c1_conv_layer1, c1_conv_layer2, pconnection);

    tgCaptureBeforeCall(input_layer1,input_layer2,c1_conv_layer1,c1_conv_layer2,pconnection,96);

    // call the function with the initial parameters
    IMPL(conv_fprop1)(input_layer1_ptr, input_layer2_ptr, c1_conv_layer1_ptr, c1_conv_layer2_ptr, pconnection);

    tgCaptureAfterCall(input_layer1,input_layer2,c1_conv_layer1,c1_conv_layer2,pconnection,96);

    tgClose();
#else
    IMPL(conv_fprop1)(input_layer1_ptr, input_layer2_ptr, c1_conv_layer1_ptr, c1_conv_layer2_ptr, pconnection);
#endif
}

void CAPTURE_(conv_fprop2)(Layer1 * s2_pooling_layer1_ptr,Layer2 * s2_pooling_layer2_ptr,Layer1 * c3_conv_layer1_ptr,Layer2 * c3_conv_layer2_ptr,uint8_t pconnection[96]){
#if 1
static CCapture capture_conv_fprop2;
CCapture *capture = &capture_conv_fprop2;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & s2_pooling_layer1 = ASSIGN_REF(s2_pooling_layer1_ptr, __FUNCTION__);
    Layer2 & s2_pooling_layer2 = ASSIGN_REF(s2_pooling_layer2_ptr, __FUNCTION__);
    Layer1 & c3_conv_layer1 = ASSIGN_REF(c3_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c3_conv_layer2 = ASSIGN_REF(c3_conv_layer2_ptr, __FUNCTION__);


    tgOpen("conv_fprop2_output.bin", s2_pooling_layer1, s2_pooling_layer2, c3_conv_layer1, c3_conv_layer2, pconnection);

    tgCaptureBeforeCall(s2_pooling_layer1,s2_pooling_layer2,c3_conv_layer1,c3_conv_layer2,pconnection,96);

    // call the function with the initial parameters
    IMPL(conv_fprop2)(s2_pooling_layer1_ptr, s2_pooling_layer2_ptr, c3_conv_layer1_ptr, c3_conv_layer2_ptr, pconnection);

    tgCaptureAfterCall(s2_pooling_layer1,s2_pooling_layer2,c3_conv_layer1,c3_conv_layer2,pconnection,96);

    tgClose();
#else
    IMPL(conv_fprop2)(s2_pooling_layer1_ptr, s2_pooling_layer2_ptr, c3_conv_layer1_ptr, c3_conv_layer2_ptr, pconnection);
#endif
}

void CAPTURE_(conv_fprop3)(Layer1 * s4_pooling_layer1_ptr,Layer2 * s4_pooling_layer2_ptr,Layer1 * c5_conv_layer1_ptr,Layer2 * c5_conv_layer2_ptr,uint8_t pconnection[96]){
#if 1
static CCapture capture_conv_fprop3;
CCapture *capture = &capture_conv_fprop3;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & s4_pooling_layer1 = ASSIGN_REF(s4_pooling_layer1_ptr, __FUNCTION__);
    Layer2 & s4_pooling_layer2 = ASSIGN_REF(s4_pooling_layer2_ptr, __FUNCTION__);
    Layer1 & c5_conv_layer1 = ASSIGN_REF(c5_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c5_conv_layer2 = ASSIGN_REF(c5_conv_layer2_ptr, __FUNCTION__);


    tgOpen("conv_fprop3_output.bin", s4_pooling_layer1, s4_pooling_layer2, c5_conv_layer1, c5_conv_layer2, pconnection);

    tgCaptureBeforeCall(s4_pooling_layer1,s4_pooling_layer2,c5_conv_layer1,c5_conv_layer2,pconnection,96);

    // call the function with the initial parameters
    IMPL(conv_fprop3)(s4_pooling_layer1_ptr, s4_pooling_layer2_ptr, c5_conv_layer1_ptr, c5_conv_layer2_ptr, pconnection);

    tgCaptureAfterCall(s4_pooling_layer1,s4_pooling_layer2,c5_conv_layer1,c5_conv_layer2,pconnection,96);

    tgClose();
#else
    IMPL(conv_fprop3)(s4_pooling_layer1_ptr, s4_pooling_layer2_ptr, c5_conv_layer1_ptr, c5_conv_layer2_ptr, pconnection);
#endif
}

void CAPTURE_(max_pooling_fprop1)(Layer1 * c1_conv_layer1_ptr,Layer2 * c1_conv_layer2_ptr,Layer1 * s2_pooling_layer1_ptr,Layer2 * s2_pooling_layer2_ptr){
#if 1
static CCapture capture_max_pooling_fprop1;
CCapture *capture = &capture_max_pooling_fprop1;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & c1_conv_layer1 = ASSIGN_REF(c1_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c1_conv_layer2 = ASSIGN_REF(c1_conv_layer2_ptr, __FUNCTION__);
    Layer1 & s2_pooling_layer1 = ASSIGN_REF(s2_pooling_layer1_ptr, __FUNCTION__);
    Layer2 & s2_pooling_layer2 = ASSIGN_REF(s2_pooling_layer2_ptr, __FUNCTION__);


    tgOpen("max_pooling_fprop1_output.bin", c1_conv_layer1, c1_conv_layer2, s2_pooling_layer1, s2_pooling_layer2);

    tgCaptureBeforeCall(c1_conv_layer1,c1_conv_layer2,s2_pooling_layer1,s2_pooling_layer2);

    // call the function with the initial parameters
    IMPL(max_pooling_fprop1)(c1_conv_layer1_ptr, c1_conv_layer2_ptr, s2_pooling_layer1_ptr, s2_pooling_layer2_ptr);

    tgCaptureAfterCall(c1_conv_layer1,c1_conv_layer2,s2_pooling_layer1,s2_pooling_layer2);

    tgClose();
#else
    IMPL(max_pooling_fprop1)(c1_conv_layer1_ptr, c1_conv_layer2_ptr, s2_pooling_layer1_ptr, s2_pooling_layer2_ptr);
#endif
}

void CAPTURE_(max_pooling_fprop2)(Layer1 * c3_conv_layer1_ptr,Layer2 * c3_conv_layer2_ptr,Layer1 * s4_pooling_layer1_ptr,Layer2 * s4_pooling_layer2_ptr){
#if 1
static CCapture capture_max_pooling_fprop2;
CCapture *capture = &capture_max_pooling_fprop2;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & c3_conv_layer1 = ASSIGN_REF(c3_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c3_conv_layer2 = ASSIGN_REF(c3_conv_layer2_ptr, __FUNCTION__);
    Layer1 & s4_pooling_layer1 = ASSIGN_REF(s4_pooling_layer1_ptr, __FUNCTION__);
    Layer2 & s4_pooling_layer2 = ASSIGN_REF(s4_pooling_layer2_ptr, __FUNCTION__);


    tgOpen("max_pooling_fprop2_output.bin", c3_conv_layer1, c3_conv_layer2, s4_pooling_layer1, s4_pooling_layer2);

    tgCaptureBeforeCall(c3_conv_layer1,c3_conv_layer2,s4_pooling_layer1,s4_pooling_layer2);

    // call the function with the initial parameters
    IMPL(max_pooling_fprop2)(c3_conv_layer1_ptr, c3_conv_layer2_ptr, s4_pooling_layer1_ptr, s4_pooling_layer2_ptr);

    tgCaptureAfterCall(c3_conv_layer1,c3_conv_layer2,s4_pooling_layer1,s4_pooling_layer2);

    tgClose();
#else
    IMPL(max_pooling_fprop2)(c3_conv_layer1_ptr, c3_conv_layer2_ptr, s4_pooling_layer1_ptr, s4_pooling_layer2_ptr);
#endif
}

void CAPTURE_(fully_connected_fprop)(Layer1 * c5_conv_layer1_ptr,Layer2 * c5_conv_layer2_ptr,Layer1 * output_layer1_ptr,Layer2 * output_layer2_ptr){
#if 1
static CCapture capture_fully_connected_fprop;
CCapture *capture = &capture_fully_connected_fprop;
pthread_t __tid = pthread_self();

    static std::mutex mtx;
    std::lock_guard<std::mutex> lock(mtx);

    enum PARENT_FUNCTION_STATUS parent_func_status = CCapture::is_parent_func(__func__);

    // define temporary variables to hold pointers
    Layer1 & c5_conv_layer1 = ASSIGN_REF(c5_conv_layer1_ptr, __FUNCTION__);
    Layer2 & c5_conv_layer2 = ASSIGN_REF(c5_conv_layer2_ptr, __FUNCTION__);
    Layer1 & output_layer1 = ASSIGN_REF(output_layer1_ptr, __FUNCTION__);
    Layer2 & output_layer2 = ASSIGN_REF(output_layer2_ptr, __FUNCTION__);


    tgOpen("fully_connected_fprop_output.bin", c5_conv_layer1, c5_conv_layer2, output_layer1, output_layer2);

    tgCaptureBeforeCall(c5_conv_layer1,c5_conv_layer2,output_layer1,output_layer2);

    // call the function with the initial parameters
    IMPL(fully_connected_fprop)(c5_conv_layer1_ptr, c5_conv_layer2_ptr, output_layer1_ptr, output_layer2_ptr);

    tgCaptureAfterCall(c5_conv_layer1,c5_conv_layer2,output_layer1,output_layer2);

    tgClose();
#else
    IMPL(fully_connected_fprop)(c5_conv_layer1_ptr, c5_conv_layer2_ptr, output_layer1_ptr, output_layer2_ptr);
#endif
}



#ifdef __cplusplus
}
#endif