set SynModuleInfo {
  {SRCNAME fully_connected_fprop_Pipeline_VITIS_LOOP_262_2 MODELNAME fully_connected_fprop_Pipeline_VITIS_LOOP_262_2 RTLNAME fully_connected_fprop_fully_connected_fprop_Pipeline_VITIS_LOOP_262_2
    SUBMODULES {
      {MODELNAME fully_connected_fprop_dmul_64ns_64ns_64_8_max_dsp_1 RTLNAME fully_connected_fprop_dmul_64ns_64ns_64_8_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fprop_mul_11ns_6ns_16_1_1 RTLNAME fully_connected_fprop_mul_11ns_6ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fprop_flow_control_loop_pipe_sequential_init RTLNAME fully_connected_fprop_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fully_connected_fprop_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fully_connected_fprop MODELNAME fully_connected_fprop RTLNAME fully_connected_fprop IS_TOP 1
    SUBMODULES {
      {MODELNAME fully_connected_fprop_dadddsub_64ns_64ns_64_8_full_dsp_1 RTLNAME fully_connected_fprop_dadddsub_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fprop_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME fully_connected_fprop_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fprop_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME fully_connected_fprop_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME fully_connected_fprop_dexp_64ns_64ns_64_30_full_dsp_1 RTLNAME fully_connected_fprop_dexp_64ns_64ns_64_30_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 29 ALLOW_PRAGMA 1}
    }
  }
}
