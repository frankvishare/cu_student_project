set SynModuleInfo {
  {SRCNAME cnn_hls_Pipeline_VITIS_LOOP_165_1 MODELNAME cnn_hls_Pipeline_VITIS_LOOP_165_1 RTLNAME cnn_hls_cnn_hls_Pipeline_VITIS_LOOP_165_1
    SUBMODULES {
      {MODELNAME cnn_hls_sdiv_13ns_32ns_13_17_1 RTLNAME cnn_hls_sdiv_13ns_32ns_13_17_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME cnn_hls_srem_13ns_32ns_13_17_1 RTLNAME cnn_hls_srem_13ns_32ns_13_17_1 BINDTYPE op TYPE srem IMPL auto LATENCY 16 ALLOW_PRAGMA 1}
      {MODELNAME cnn_hls_mac_muladd_13s_13s_13ns_13_4_1 RTLNAME cnn_hls_mac_muladd_13s_13s_13ns_13_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME cnn_hls_mac_muladd_8s_8s_32s_32_4_1 RTLNAME cnn_hls_mac_muladd_8s_8s_32s_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME cnn_hls_flow_control_loop_pipe_sequential_init RTLNAME cnn_hls_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_hls_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_hls_Pipeline_VITIS_LOOP_153_2 MODELNAME cnn_hls_Pipeline_VITIS_LOOP_153_2 RTLNAME cnn_hls_cnn_hls_Pipeline_VITIS_LOOP_153_2}
  {SRCNAME cnn_hls_Pipeline_VITIS_LOOP_105_2 MODELNAME cnn_hls_Pipeline_VITIS_LOOP_105_2 RTLNAME cnn_hls_cnn_hls_Pipeline_VITIS_LOOP_105_2
    SUBMODULES {
      {MODELNAME cnn_hls_mul_13s_13s_13_1_1 RTLNAME cnn_hls_mul_13s_13s_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_hls_Pipeline_VITIS_LOOP_125_2 MODELNAME cnn_hls_Pipeline_VITIS_LOOP_125_2 RTLNAME cnn_hls_cnn_hls_Pipeline_VITIS_LOOP_125_2}
  {SRCNAME cnn_hls MODELNAME cnn_hls RTLNAME cnn_hls IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_hls_mul_32s_32s_32_2_1 RTLNAME cnn_hls_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_hls_mac_muladd_6s_6s_6ns_6_4_1 RTLNAME cnn_hls_mac_muladd_6s_6s_6ns_6_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
}
