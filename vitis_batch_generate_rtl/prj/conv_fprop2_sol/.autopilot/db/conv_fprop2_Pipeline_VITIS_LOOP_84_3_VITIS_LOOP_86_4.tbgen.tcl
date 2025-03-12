set moduleName conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 6
set C_modelName {conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict s2_pooling_la_map_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ c3_conv_layer_kernel_w_load int 32 regular  }
	{ mul_ln156 int 62 regular  }
	{ empty_11 int 17 regular  }
	{ empty_12 int 17 regular  }
	{ sext_ln79 int 32 regular  }
	{ empty int 17 regular  }
	{ zext_ln88_1 int 17 regular  }
	{ s2_pooling_la_map_data int 64 regular {array 122880 { 1 3 } 1 1 }  }
	{ c3_conv_layer_kernel_load int 3200 regular  }
	{ sum_out double 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c3_conv_layer_kernel_w_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln156", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "empty_11", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty_12", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln79", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln88_1", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "s2_pooling_la_map_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer_kernel_load", "interface" : "wire", "bitwidth" : 3200, "direction" : "READONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ c3_conv_layer_kernel_w_load sc_in sc_lv 32 signal 0 } 
	{ mul_ln156 sc_in sc_lv 62 signal 1 } 
	{ empty_11 sc_in sc_lv 17 signal 2 } 
	{ empty_12 sc_in sc_lv 17 signal 3 } 
	{ sext_ln79 sc_in sc_lv 32 signal 4 } 
	{ empty sc_in sc_lv 17 signal 5 } 
	{ zext_ln88_1 sc_in sc_lv 17 signal 6 } 
	{ s2_pooling_la_map_data_address0 sc_out sc_lv 17 signal 7 } 
	{ s2_pooling_la_map_data_ce0 sc_out sc_logic 1 signal 7 } 
	{ s2_pooling_la_map_data_q0 sc_in sc_lv 64 signal 7 } 
	{ c3_conv_layer_kernel_load sc_in sc_lv 3200 signal 8 } 
	{ sum_out sc_out sc_lv 64 signal 9 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ grp_fu_274_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_274_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_274_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_274_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_274_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "c3_conv_layer_kernel_w_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer_kernel_w_load", "role": "default" }} , 
 	{ "name": "mul_ln156", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln156", "role": "default" }} , 
 	{ "name": "empty_11", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_11", "role": "default" }} , 
 	{ "name": "empty_12", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_12", "role": "default" }} , 
 	{ "name": "sext_ln79", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln79", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "zext_ln88_1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "zext_ln88_1", "role": "default" }} , 
 	{ "name": "s2_pooling_la_map_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s2_pooling_la_map_data", "role": "address0" }} , 
 	{ "name": "s2_pooling_la_map_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s2_pooling_la_map_data", "role": "ce0" }} , 
 	{ "name": "s2_pooling_la_map_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s2_pooling_la_map_data", "role": "q0" }} , 
 	{ "name": "c3_conv_layer_kernel_load", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "c3_conv_layer_kernel_load", "role": "default" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_274_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_274_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_274_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_274_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_274_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_274_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_274_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "c3_conv_layer_kernel_w_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln156", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln79", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln88_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "s2_pooling_la_map_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c3_conv_layer_kernel_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_86_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_58_2_1_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_17ns_17ns_17s_17ns_17_4_1_U6", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4 {
		c3_conv_layer_kernel_w_load {Type I LastRead 0 FirstWrite -1}
		mul_ln156 {Type I LastRead 0 FirstWrite -1}
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln79 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln88_1 {Type I LastRead 0 FirstWrite -1}
		s2_pooling_la_map_data {Type I LastRead 6 FirstWrite -1}
		c3_conv_layer_kernel_load {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c3_conv_layer_kernel_w_load { ap_none {  { c3_conv_layer_kernel_w_load in_data 0 32 } } }
	mul_ln156 { ap_none {  { mul_ln156 in_data 0 62 } } }
	empty_11 { ap_none {  { empty_11 in_data 0 17 } } }
	empty_12 { ap_none {  { empty_12 in_data 0 17 } } }
	sext_ln79 { ap_none {  { sext_ln79 in_data 0 32 } } }
	empty { ap_none {  { empty in_data 0 17 } } }
	zext_ln88_1 { ap_none {  { zext_ln88_1 in_data 0 17 } } }
	s2_pooling_la_map_data { ap_memory {  { s2_pooling_la_map_data_address0 mem_address 1 17 }  { s2_pooling_la_map_data_ce0 mem_ce 1 1 }  { s2_pooling_la_map_data_q0 mem_dout 0 64 } } }
	c3_conv_layer_kernel_load { ap_none {  { c3_conv_layer_kernel_load in_data 0 3200 } } }
	sum_out { ap_vld {  { sum_out out_data 1 64 }  { sum_out_ap_vld out_vld 1 1 } } }
}
