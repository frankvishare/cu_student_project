#pragma AUTONET LOCALPARAM  hls_long_tail_pkg.sv

//#pragma AUTONET LOADRTL     hls/xor_diff_type.v
#pragma AUTONET LOADRTL     hls/assign_array_complete.v
//#pragma AUTONET LOADRTL     hls/array_xor.v
//#pragma AUTONET LOADRTL     hls/vector_add.v
//#pragma AUTONET LOADRTL     hls/fill_value.v
//#pragma AUTONET LOADRTL     hls/hevc_loop_filter_chroma_8bit_hls.v
//#pragma AUTONET LOADRTL     hls/cnn_hls.v

//#pragma AUTONET INST        xor_diff_type                                      inst_xor_diff_type
#pragma AUTONET INST        assign_array_complete                              inst_assign_array_complete
//#pragma AUTONET INST        array_xor                                          inst_array_xor
//#pragma AUTONET INST        vector_add                                         inst_vector_add
//#pragma AUTONET INST        fill_value                                         inst_fill_value
//#pragma AUTONET INST        hevc_loop_filter_chroma_8bit_hls                   inst_hevc_loop_filter_chroma_8bit_hls
//#pragma AUTONET INST        cnn_hls                                            inst_cnn_hls

//no endmodule in this file. Hence, use GEN_VERILOG to generate verilog code
#pragma AUTONET GEN_VERILOG
#pragma AUTONET GEN_TB      gen_hls_long_tail_tb

#pragma AUTONET LOAD_C      load_hls_intf      c/hls.h
#pragma AUTONET GEN_C       gen_hls_ap_call    c/hls_apcall.h
