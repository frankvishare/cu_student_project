set moduleName max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4
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
set cdfgNum 4
set C_modelName {max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c1_conv_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ indvars_iv19_cast int 32 regular  }
	{ max_value double 64 regular  }
	{ sext_ln201 int 32 regular  }
	{ empty_7 int 17 regular  }
	{ empty int 17 regular  }
	{ zext_ln203 int 17 regular  }
	{ c1_conv_layer2_data int 64 regular {array 122880 { 1 1 } 1 1 }  }
	{ m_1 int 17 regular  }
	{ max_value_1_out double 64 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "indvars_iv19_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_value", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln201", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_7", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln203", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "c1_conv_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "m_1", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "max_value_1_out", "interface" : "wire", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ indvars_iv19_cast sc_in sc_lv 32 signal 0 } 
	{ max_value sc_in sc_lv 64 signal 1 } 
	{ sext_ln201 sc_in sc_lv 32 signal 2 } 
	{ empty_7 sc_in sc_lv 17 signal 3 } 
	{ empty sc_in sc_lv 17 signal 4 } 
	{ zext_ln203 sc_in sc_lv 17 signal 5 } 
	{ c1_conv_layer2_data_address0 sc_out sc_lv 17 signal 6 } 
	{ c1_conv_layer2_data_ce0 sc_out sc_logic 1 signal 6 } 
	{ c1_conv_layer2_data_q0 sc_in sc_lv 64 signal 6 } 
	{ c1_conv_layer2_data_address1 sc_out sc_lv 17 signal 6 } 
	{ c1_conv_layer2_data_ce1 sc_out sc_logic 1 signal 6 } 
	{ c1_conv_layer2_data_q1 sc_in sc_lv 64 signal 6 } 
	{ m_1 sc_in sc_lv 17 signal 7 } 
	{ max_value_1_out sc_out sc_lv 64 signal 8 } 
	{ max_value_1_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "indvars_iv19_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "indvars_iv19_cast", "role": "default" }} , 
 	{ "name": "max_value", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_value", "role": "default" }} , 
 	{ "name": "sext_ln201", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln201", "role": "default" }} , 
 	{ "name": "empty_7", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_7", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "zext_ln203", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "zext_ln203", "role": "default" }} , 
 	{ "name": "c1_conv_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "address0" }} , 
 	{ "name": "c1_conv_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "ce0" }} , 
 	{ "name": "c1_conv_layer2_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "q0" }} , 
 	{ "name": "c1_conv_layer2_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "address1" }} , 
 	{ "name": "c1_conv_layer2_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "ce1" }} , 
 	{ "name": "c1_conv_layer2_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c1_conv_layer2_data", "role": "q1" }} , 
 	{ "name": "m_1", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "m_1", "role": "default" }} , 
 	{ "name": "max_value_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "max_value_1_out", "role": "default" }} , 
 	{ "name": "max_value_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_value_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "indvars_iv19_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln201", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln203", "Type" : "None", "Direction" : "I"},
			{"Name" : "c1_conv_layer2_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_value_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_204_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_17s_17_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	max_pooling_fprop1_Pipeline_VITIS_LOOP_204_4 {
		indvars_iv19_cast {Type I LastRead 0 FirstWrite -1}
		max_value {Type I LastRead 0 FirstWrite -1}
		sext_ln201 {Type I LastRead 0 FirstWrite -1}
		empty_7 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln203 {Type I LastRead 0 FirstWrite -1}
		c1_conv_layer2_data {Type I LastRead 4 FirstWrite -1}
		m_1 {Type I LastRead 0 FirstWrite -1}
		max_value_1_out {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	indvars_iv19_cast { ap_none {  { indvars_iv19_cast in_data 0 32 } } }
	max_value { ap_none {  { max_value in_data 0 64 } } }
	sext_ln201 { ap_none {  { sext_ln201 in_data 0 32 } } }
	empty_7 { ap_none {  { empty_7 in_data 0 17 } } }
	empty { ap_none {  { empty in_data 0 17 } } }
	zext_ln203 { ap_none {  { zext_ln203 in_data 0 17 } } }
	c1_conv_layer2_data { ap_memory {  { c1_conv_layer2_data_address0 mem_address 1 17 }  { c1_conv_layer2_data_ce0 mem_ce 1 1 }  { c1_conv_layer2_data_q0 mem_dout 0 64 }  { c1_conv_layer2_data_address1 MemPortADDR2 1 17 }  { c1_conv_layer2_data_ce1 MemPortCE2 1 1 }  { c1_conv_layer2_data_q1 MemPortDOUT2 0 64 } } }
	m_1 { ap_none {  { m_1 in_data 0 17 } } }
	max_value_1_out { ap_vld {  { max_value_1_out out_data 1 64 }  { max_value_1_out_ap_vld out_vld 1 1 } } }
}
