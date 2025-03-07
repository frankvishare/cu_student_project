set SynModuleInfo {
  {SRCNAME convn_valid_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4 MODELNAME convn_valid_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4 RTLNAME convn_valid_convn_valid_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4
    SUBMODULES {
      {MODELNAME convn_valid_dmul_64ns_64ns_64_8_max_dsp_1 RTLNAME convn_valid_dmul_64ns_64ns_64_8_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME convn_valid_ama_addmuladd_10ns_10ns_10s_10ns_10_4_1 RTLNAME convn_valid_ama_addmuladd_10ns_10ns_10s_10ns_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME convn_valid_mac_muladd_5s_5s_5ns_5_4_1 RTLNAME convn_valid_mac_muladd_5s_5s_5ns_5_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME convn_valid_flow_control_loop_pipe_sequential_init RTLNAME convn_valid_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME convn_valid_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME convn_valid MODELNAME convn_valid RTLNAME convn_valid IS_TOP 1
    SUBMODULES {
      {MODELNAME convn_valid_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME convn_valid_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME convn_valid_mul_31ns_31ns_62_2_1 RTLNAME convn_valid_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME convn_valid_mul_10s_10s_10_1_1 RTLNAME convn_valid_mul_10s_10s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
}
