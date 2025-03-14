set SynModuleInfo {
  {SRCNAME conv_fprop1_Pipeline_1 MODELNAME conv_fprop1_Pipeline_1 RTLNAME conv_fprop1_conv_fprop1_Pipeline_1
    SUBMODULES {
      {MODELNAME conv_fprop1_flow_control_loop_pipe_sequential_init RTLNAME conv_fprop1_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME conv_fprop1_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME conv_fprop1_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4 MODELNAME conv_fprop1_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4 RTLNAME conv_fprop1_conv_fprop1_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4
    SUBMODULES {
      {MODELNAME conv_fprop1_dmul_64ns_64ns_64_8_max_dsp_1 RTLNAME conv_fprop1_dmul_64ns_64ns_64_8_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_ama_addmuladd_17ns_17ns_17s_17ns_17_4_1 RTLNAME conv_fprop1_ama_addmuladd_17ns_17ns_17s_17ns_17_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME conv_fprop1_mac_muladd_16s_16s_16ns_16_4_1 RTLNAME conv_fprop1_mac_muladd_16s_16s_16ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME conv_fprop1_Pipeline_VITIS_LOOP_110_3 MODELNAME conv_fprop1_Pipeline_VITIS_LOOP_110_3 RTLNAME conv_fprop1_conv_fprop1_Pipeline_VITIS_LOOP_110_3
    SUBMODULES {
      {MODELNAME conv_fprop1_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME conv_fprop1_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME conv_fprop1_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_dexp_64ns_64ns_64_30_full_dsp_1 RTLNAME conv_fprop1_dexp_64ns_64ns_64_30_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 29 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_fprop1 MODELNAME conv_fprop1 RTLNAME conv_fprop1 IS_TOP 1
    SUBMODULES {
      {MODELNAME conv_fprop1_dadddsub_64ns_64ns_64_8_full_dsp_1 RTLNAME conv_fprop1_dadddsub_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_mul_31ns_31ns_62_2_1 RTLNAME conv_fprop1_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_mul_32s_32s_32_2_1 RTLNAME conv_fprop1_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_mul_11ns_6ns_16_1_1 RTLNAME conv_fprop1_mul_11ns_6ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_mul_10s_10s_10_1_1 RTLNAME conv_fprop1_mul_10s_10s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME conv_fprop1_mac_muladd_11s_11s_11ns_11_4_1 RTLNAME conv_fprop1_mac_muladd_11s_11s_11ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
}
