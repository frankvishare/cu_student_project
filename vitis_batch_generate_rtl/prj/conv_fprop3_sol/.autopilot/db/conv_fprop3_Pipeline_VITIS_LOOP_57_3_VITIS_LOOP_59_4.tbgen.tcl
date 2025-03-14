set moduleName conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4
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
set C_modelName {conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict s4_pooling_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_W { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ c5_conv_layer1_kernel_w_load int 32 regular  }
	{ mul_ln173 int 62 regular  }
	{ empty_11 int 17 regular  }
	{ empty_12 int 17 regular  }
	{ empty_13 int 16 regular  }
	{ empty int 17 regular  }
	{ zext_ln61_2 int 17 regular  }
	{ s4_pooling_layer2_data int 64 regular {array 122880 { 1 3 } 1 1 }  }
	{ mul_ln61 int 16 regular  }
	{ c5_conv_layer2_W int 64 regular {array 48000 { 1 3 } 1 1 }  }
	{ sum_out double 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "c5_conv_layer1_kernel_w_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln173", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "empty_11", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty_12", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln61_2", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln61", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer2_W", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sum_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ c5_conv_layer1_kernel_w_load sc_in sc_lv 32 signal 0 } 
	{ mul_ln173 sc_in sc_lv 62 signal 1 } 
	{ empty_11 sc_in sc_lv 17 signal 2 } 
	{ empty_12 sc_in sc_lv 17 signal 3 } 
	{ empty_13 sc_in sc_lv 16 signal 4 } 
	{ empty sc_in sc_lv 17 signal 5 } 
	{ zext_ln61_2 sc_in sc_lv 17 signal 6 } 
	{ s4_pooling_layer2_data_address0 sc_out sc_lv 17 signal 7 } 
	{ s4_pooling_layer2_data_ce0 sc_out sc_logic 1 signal 7 } 
	{ s4_pooling_layer2_data_q0 sc_in sc_lv 64 signal 7 } 
	{ mul_ln61 sc_in sc_lv 16 signal 8 } 
	{ c5_conv_layer2_W_address0 sc_out sc_lv 16 signal 9 } 
	{ c5_conv_layer2_W_ce0 sc_out sc_logic 1 signal 9 } 
	{ c5_conv_layer2_W_q0 sc_in sc_lv 64 signal 9 } 
	{ sum_out sc_out sc_lv 64 signal 10 } 
	{ sum_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ grp_fu_269_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_269_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_269_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_269_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_269_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_kernel_w_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_kernel_w_load", "role": "default" }} , 
 	{ "name": "mul_ln173", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln173", "role": "default" }} , 
 	{ "name": "empty_11", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_11", "role": "default" }} , 
 	{ "name": "empty_12", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_12", "role": "default" }} , 
 	{ "name": "empty_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "empty_13", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "zext_ln61_2", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "zext_ln61_2", "role": "default" }} , 
 	{ "name": "s4_pooling_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "q0" }} , 
 	{ "name": "mul_ln61", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mul_ln61", "role": "default" }} , 
 	{ "name": "c5_conv_layer2_W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "q0" }} , 
 	{ "name": "sum_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sum_out", "role": "default" }} , 
 	{ "name": "sum_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_269_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_269_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_269_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_269_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_269_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_269_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_269_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4",
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
			{"Name" : "c5_conv_layer1_kernel_w_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln173", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln61_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer2_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mul_ln61", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer2_W", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_3_VITIS_LOOP_59_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage3", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage3_subdone", "QuitState" : "ap_ST_fsm_pp0_stage3", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage3_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_8_max_dsp_1_U4", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_17ns_17ns_17s_17ns_17_4_1_U5", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_16ns_16_4_1_U6", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4 {
		c5_conv_layer1_kernel_w_load {Type I LastRead 0 FirstWrite -1}
		mul_ln173 {Type I LastRead 0 FirstWrite -1}
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		empty_13 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln61_2 {Type I LastRead 0 FirstWrite -1}
		s4_pooling_layer2_data {Type I LastRead 6 FirstWrite -1}
		mul_ln61 {Type I LastRead 0 FirstWrite -1}
		c5_conv_layer2_W {Type I LastRead 7 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	c5_conv_layer1_kernel_w_load { ap_none {  { c5_conv_layer1_kernel_w_load in_data 0 32 } } }
	mul_ln173 { ap_none {  { mul_ln173 in_data 0 62 } } }
	empty_11 { ap_none {  { empty_11 in_data 0 17 } } }
	empty_12 { ap_none {  { empty_12 in_data 0 17 } } }
	empty_13 { ap_none {  { empty_13 in_data 0 16 } } }
	empty { ap_none {  { empty in_data 0 17 } } }
	zext_ln61_2 { ap_none {  { zext_ln61_2 in_data 0 17 } } }
	s4_pooling_layer2_data { ap_memory {  { s4_pooling_layer2_data_address0 mem_address 1 17 }  { s4_pooling_layer2_data_ce0 mem_ce 1 1 }  { s4_pooling_layer2_data_q0 mem_dout 0 64 } } }
	mul_ln61 { ap_none {  { mul_ln61 in_data 0 16 } } }
	c5_conv_layer2_W { ap_memory {  { c5_conv_layer2_W_address0 mem_address 1 16 }  { c5_conv_layer2_W_ce0 mem_ce 1 1 }  { c5_conv_layer2_W_q0 mem_dout 0 64 } } }
	sum_out { ap_vld {  { sum_out out_data 1 64 }  { sum_out_ap_vld out_vld 1 1 } } }
}
