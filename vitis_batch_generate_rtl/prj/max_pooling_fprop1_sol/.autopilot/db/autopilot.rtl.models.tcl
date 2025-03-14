set SynModuleInfo {
  {SRCNAME max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4 MODELNAME max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4 RTLNAME max_pooling_fprop1_max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4
    SUBMODULES {
      {MODELNAME max_pooling_fprop1_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME max_pooling_fprop1_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_mul_17s_17s_17_1_1 RTLNAME max_pooling_fprop1_mul_17s_17s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_flow_control_loop_pipe_sequential_init RTLNAME max_pooling_fprop1_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME max_pooling_fprop1_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME max_pooling_fprop1 MODELNAME max_pooling_fprop1 RTLNAME max_pooling_fprop1 IS_TOP 1
    SUBMODULES {
      {MODELNAME max_pooling_fprop1_dsub_64ns_64ns_64_8_full_dsp_1 RTLNAME max_pooling_fprop1_dsub_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME max_pooling_fprop1_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_ddiv_64ns_64ns_64_31_no_dsp_1 RTLNAME max_pooling_fprop1_ddiv_64ns_64ns_64_31_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 30 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_dexp_64ns_64ns_64_30_full_dsp_1 RTLNAME max_pooling_fprop1_dexp_64ns_64ns_64_30_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 29 ALLOW_PRAGMA 1}
      {MODELNAME max_pooling_fprop1_mul_16s_16s_16_1_1 RTLNAME max_pooling_fprop1_mul_16s_16s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
