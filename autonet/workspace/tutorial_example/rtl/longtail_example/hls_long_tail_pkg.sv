
package hls_long_tail_pkg;
    enum {
        xor_diff_type,
        assign_array_complete,
        array_xor,
        vector_add,
        fill_value,
        hevc_loop_filter_chroma_8bit_hls,
        cnn_hls
    } hls_enum_t;
    localparam HLS_NUM = 7;
    localparam HLS_CACHE = 0;
    localparam HLS_PARENT = 0;
    localparam [$clog2(HLS_NUM)-1:0] HLS_PARENT_IDX[HLS_PARENT] = {

    };


    //xmem desc
    //alias:vec_s1_x = vec_s1.x
    //alias:vec_s1_y = vec_s1.y
    //alias:vec_s2_x = vec_s2.x
    //alias:vec_s2_y = vec_s2.y
    //alias:vec_d1_x = vec_d1.x
    //alias:vec_d1_y = vec_d1.y

    //xmem width
    localparam width_xor_val8                                      = 8;
    localparam width_xor_val16                                     = 16;
    localparam width_xor_val32                                     = 32;
    localparam width_arr_complete                                  = 32;
    //struct:localparam width_vec_s1                                        = 64;
    localparam width_vec_s1_x                                      = 32;
    localparam width_vec_s1_y                                      = 32;
    //struct:localparam width_vec_s2                                        = 64;
    localparam width_vec_s2_x                                      = 32;
    localparam width_vec_s2_y                                      = 32;
    //struct:localparam width_vec_d1                                        = 64;
    localparam width_vec_d1_x                                      = 32;
    localparam width_vec_d1_y                                      = 32;
    localparam width_tc_arr                                        = 32;
    localparam width_no_p_arr                                      = 8;
    localparam width_no_q_arr                                      = 8;
    localparam width_xxxxx_paddingA                                = 8;
    localparam width_filter_map                                    = 8;
    localparam width_pixel                                         = 8;
    localparam width_sum                                           = 32;
    localparam width_arr_s1                                        = 32;
    localparam width_arr_s2                                        = 32;
    localparam width_arr_d1                                        = 32;
    localparam width_big_array                                     = 32;
    localparam width_pix_base                                      = 8;
    localparam width_generic_xmem32                                = 32;

    //xmem offset
    localparam offset_xor_val8                                     = 0;
    localparam offset_xor_val16                                    = 4;
    localparam offset_xor_val32                                    = 8;
    localparam offset_arr_complete                                 = 12;
    //struct:localparam offset_vec_s1                                       = 32;
    localparam offset_vec_s1_x                                     = 32;
    localparam offset_vec_s1_y                                     = 36;
    //struct:localparam offset_vec_s2                                       = 40;
    localparam offset_vec_s2_x                                     = 40;
    localparam offset_vec_s2_y                                     = 44;
    //struct:localparam offset_vec_d1                                       = 48;
    localparam offset_vec_d1_x                                     = 48;
    localparam offset_vec_d1_y                                     = 52;
    localparam offset_tc_arr                                       = 56;
    localparam offset_no_p_arr                                     = 64;
    localparam offset_no_q_arr                                     = 68;
    localparam offset_xxxxx_paddingA                               = 70;
    localparam offset_filter_map                                   = 2048;
    localparam offset_pixel                                        = 2112;
    localparam offset_sum                                          = 7156;
    localparam offset_arr_s1                                       = 23540;
    localparam offset_arr_s2                                       = 23580;
    localparam offset_arr_d1                                       = 23620;
    localparam offset_big_array                                    = 23660;
    localparam offset_pix_base                                     = 63660;
    localparam offset_generic_xmem32                               = 0;

    //xmem depth
    localparam depth_xor_val8                                      = 1;
    localparam depth_xor_val16                                     = 1;
    localparam depth_xor_val32                                     = 1;
    localparam depth_arr_complete                                  = 5;
    //struct:localparam depth_vec_s1                                        = 1;
    localparam depth_vec_s1_x                                      = 1;
    localparam depth_vec_s1_y                                      = 1;
    //struct:localparam depth_vec_s2                                        = 1;
    localparam depth_vec_s2_x                                      = 1;
    localparam depth_vec_s2_y                                      = 1;
    //struct:localparam depth_vec_d1                                        = 1;
    localparam depth_vec_d1_x                                      = 1;
    localparam depth_vec_d1_y                                      = 1;
    localparam depth_tc_arr                                        = 2;
    localparam depth_no_p_arr                                      = 2;
    localparam depth_no_q_arr                                      = 2;
    localparam depth_xxxxx_paddingA                                = 1976;
    localparam depth_filter_map                                    = 64;
    localparam depth_pixel                                         = 5041;
    localparam depth_sum                                           = 4096;
    localparam depth_arr_s1                                        = 10;
    localparam depth_arr_s2                                        = 10;
    localparam depth_arr_d1                                        = 10;
    localparam depth_big_array                                     = 10000;
    localparam depth_pix_base                                      = 2073600;
    localparam depth_generic_xmem32                                = 534315;

endpackage
