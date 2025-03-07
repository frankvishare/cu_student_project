#pragma AUTONET LOCALPARAM  hls_long_tail_pkg.sv

#pragma AUTONET LOADRTL     hls/convn_valid.v
//#pragma AUTONET LOADRTL     hls/conv_fprop.v
//#pragma AUTONET LOADRTL     hls/max_pooling_fprop.v
//#pragma AUTONET LOADRTL     hls/fully_connected_fprop.v

#pragma AUTONET INST        convn_valid                                        inst_convn_valid
//#pragma AUTONET INST        conv_fprop                                         inst_conv_fprop
//#pragma AUTONET INST        max_pooling_fprop                                  inst_max_pooling_fprop
//#pragma AUTONET INST        fully_connected_fprop                              inst_fully_connected_fprop

//no endmodule in this file. Hence, use GEN_VERILOG to generate verilog code
#pragma AUTONET GEN_VERILOG
#pragma AUTONET GEN_TB      gen_hls_long_tail_tb

#pragma AUTONET LOAD_C      load_hls_intf      c/hls.h
#pragma AUTONET GEN_C       gen_hls_ap_call    c/hls_apcall.h
