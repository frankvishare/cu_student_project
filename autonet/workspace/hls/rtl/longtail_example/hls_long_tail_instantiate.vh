#pragma AUTONET LOCALPARAM  hls_long_tail_pkg.sv

#pragma AUTONET LOADRTL     hls/conv_fprop1.v
#pragma AUTONET LOADRTL     hls/conv_fprop2.v
#pragma AUTONET LOADRTL     hls/conv_fprop3.v
#pragma AUTONET LOADRTL     hls/max_pooling_fprop1.v
#pragma AUTONET LOADRTL     hls/max_pooling_fprop2.v
#pragma AUTONET LOADRTL     hls/fully_connected_fprop.v

#pragma AUTONET INST        conv_fprop1                                        inst_conv_fprop1
#pragma AUTONET INST        conv_fprop2                                        inst_conv_fprop2
#pragma AUTONET INST        conv_fprop3                                        inst_conv_fprop3
#pragma AUTONET INST        max_pooling_fprop1                                 inst_max_pooling_fprop1
#pragma AUTONET INST        max_pooling_fprop2                                 inst_max_pooling_fprop2
#pragma AUTONET INST        fully_connected_fprop                              inst_fully_connected_fprop

//no endmodule in this file. Hence, use GEN_VERILOG to generate verilog code
#pragma AUTONET GEN_VERILOG
#pragma AUTONET GEN_TB      gen_hls_long_tail_tb

#pragma AUTONET LOAD_C      load_hls_intf      c/hls.h
#pragma AUTONET GEN_C       gen_hls_ap_call    c/hls_apcall.h
