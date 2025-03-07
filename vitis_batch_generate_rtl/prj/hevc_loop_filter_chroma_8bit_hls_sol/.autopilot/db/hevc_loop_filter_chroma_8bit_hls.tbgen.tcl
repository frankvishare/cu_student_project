set moduleName hevc_loop_filter_chroma_8bit_hls
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {hevc_loop_filter_chroma_8bit_hls}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict pix_base { MEM_WIDTH 8 MEM_SIZE 2073600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ap_core uint 8 unused  }
	{ ap_part uint 8 unused  }
	{ ap_parent uint 8 unused  }
	{ pix_base int 8 regular {array 2073600 { 2 1 } 1 1 }  }
	{ frame_offset int 32 regular  }
	{ xstride int 32 regular  }
	{ ystride int 32 regular  }
	{ tc_arr_0 int 32 regular {pointer 0}  }
	{ tc_arr_1 int 32 regular {pointer 0}  }
	{ no_p_arr_0 int 8 regular {pointer 0}  }
	{ no_p_arr_1 int 8 regular {pointer 0}  }
	{ no_q_arr_0 int 8 regular {pointer 0}  }
	{ no_q_arr_1 int 8 regular {pointer 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ap_core", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_part", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_parent", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "pix_base", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "frame_offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "xstride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ystride", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tc_arr_0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "tc_arr_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "no_p_arr_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "no_p_arr_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "no_q_arr_0", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "no_q_arr_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_core sc_in sc_lv 8 signal 0 } 
	{ ap_part sc_in sc_lv 8 signal 1 } 
	{ ap_parent sc_in sc_lv 8 signal 2 } 
	{ pix_base_address0 sc_out sc_lv 21 signal 3 } 
	{ pix_base_ce0 sc_out sc_logic 1 signal 3 } 
	{ pix_base_we0 sc_out sc_logic 1 signal 3 } 
	{ pix_base_d0 sc_out sc_lv 8 signal 3 } 
	{ pix_base_q0 sc_in sc_lv 8 signal 3 } 
	{ pix_base_address1 sc_out sc_lv 21 signal 3 } 
	{ pix_base_ce1 sc_out sc_logic 1 signal 3 } 
	{ pix_base_q1 sc_in sc_lv 8 signal 3 } 
	{ frame_offset sc_in sc_lv 32 signal 4 } 
	{ xstride sc_in sc_lv 32 signal 5 } 
	{ ystride sc_in sc_lv 32 signal 6 } 
	{ tc_arr_0 sc_in sc_lv 32 signal 7 } 
	{ tc_arr_1 sc_in sc_lv 32 signal 8 } 
	{ no_p_arr_0 sc_in sc_lv 8 signal 9 } 
	{ no_p_arr_1 sc_in sc_lv 8 signal 10 } 
	{ no_q_arr_0 sc_in sc_lv 8 signal 11 } 
	{ no_q_arr_1 sc_in sc_lv 8 signal 12 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_core", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_core", "role": "default" }} , 
 	{ "name": "ap_part", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_part", "role": "default" }} , 
 	{ "name": "ap_parent", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_parent", "role": "default" }} , 
 	{ "name": "pix_base_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pix_base", "role": "address0" }} , 
 	{ "name": "pix_base_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "ce0" }} , 
 	{ "name": "pix_base_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "we0" }} , 
 	{ "name": "pix_base_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "d0" }} , 
 	{ "name": "pix_base_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "q0" }} , 
 	{ "name": "pix_base_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pix_base", "role": "address1" }} , 
 	{ "name": "pix_base_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "ce1" }} , 
 	{ "name": "pix_base_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "q1" }} , 
 	{ "name": "frame_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "frame_offset", "role": "default" }} , 
 	{ "name": "xstride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xstride", "role": "default" }} , 
 	{ "name": "ystride", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ystride", "role": "default" }} , 
 	{ "name": "tc_arr_0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tc_arr_0", "role": "default" }} , 
 	{ "name": "tc_arr_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tc_arr_1", "role": "default" }} , 
 	{ "name": "no_p_arr_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "no_p_arr_0", "role": "default" }} , 
 	{ "name": "no_p_arr_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "no_p_arr_1", "role": "default" }} , 
 	{ "name": "no_q_arr_0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "no_q_arr_0", "role": "default" }} , 
 	{ "name": "no_q_arr_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "no_q_arr_1", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "hevc_loop_filter_chroma_8bit_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ap_core", "Type" : "None", "Direction" : "I"},
			{"Name" : "ap_part", "Type" : "None", "Direction" : "I"},
			{"Name" : "ap_parent", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_base", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2_fu_153", "Port" : "pix_base", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "frame_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "xstride", "Type" : "None", "Direction" : "I"},
			{"Name" : "ystride", "Type" : "None", "Direction" : "I"},
			{"Name" : "tc_arr_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "tc_arr_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "no_p_arr_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "no_p_arr_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "no_q_arr_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "no_q_arr_1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2_fu_153", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "30", "EstimateLatencyMax" : "30",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln76", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul13_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "pix_base", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub38", "Type" : "None", "Direction" : "I"},
			{"Name" : "tc", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln84", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln85", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2_fu_153.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	hevc_loop_filter_chroma_8bit_hls {
		ap_core {Type I LastRead -1 FirstWrite -1}
		ap_part {Type I LastRead -1 FirstWrite -1}
		ap_parent {Type I LastRead -1 FirstWrite -1}
		pix_base {Type IO LastRead 4 FirstWrite 7}
		frame_offset {Type I LastRead 0 FirstWrite -1}
		xstride {Type I LastRead 0 FirstWrite -1}
		ystride {Type I LastRead 0 FirstWrite -1}
		tc_arr_0 {Type I LastRead 0 FirstWrite -1}
		tc_arr_1 {Type I LastRead 0 FirstWrite -1}
		no_p_arr_0 {Type I LastRead 0 FirstWrite -1}
		no_p_arr_1 {Type I LastRead 0 FirstWrite -1}
		no_q_arr_0 {Type I LastRead 0 FirstWrite -1}
		no_q_arr_1 {Type I LastRead 0 FirstWrite -1}}
	hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2 {
		sext_ln76 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		mul13_cast {Type I LastRead 0 FirstWrite -1}
		pix_base {Type IO LastRead 4 FirstWrite 7}
		empty {Type I LastRead 0 FirstWrite -1}
		sub38 {Type I LastRead 0 FirstWrite -1}
		tc {Type I LastRead 0 FirstWrite -1}
		select_ln84 {Type I LastRead 0 FirstWrite -1}
		select_ln85 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "65"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ap_core { ap_none {  { ap_core in_data 0 8 } } }
	ap_part { ap_none {  { ap_part in_data 0 8 } } }
	ap_parent { ap_none {  { ap_parent in_data 0 8 } } }
	pix_base { ap_memory {  { pix_base_address0 mem_address 1 21 }  { pix_base_ce0 mem_ce 1 1 }  { pix_base_we0 mem_we 1 1 }  { pix_base_d0 mem_din 1 8 }  { pix_base_q0 mem_dout 0 8 }  { pix_base_address1 MemPortADDR2 1 21 }  { pix_base_ce1 MemPortCE2 1 1 }  { pix_base_q1 MemPortDOUT2 0 8 } } }
	frame_offset { ap_none {  { frame_offset in_data 0 32 } } }
	xstride { ap_none {  { xstride in_data 0 32 } } }
	ystride { ap_none {  { ystride in_data 0 32 } } }
	tc_arr_0 { ap_none {  { tc_arr_0 in_data 0 32 } } }
	tc_arr_1 { ap_none {  { tc_arr_1 in_data 0 32 } } }
	no_p_arr_0 { ap_none {  { no_p_arr_0 in_data 0 8 } } }
	no_p_arr_1 { ap_none {  { no_p_arr_1 in_data 0 8 } } }
	no_q_arr_0 { ap_none {  { no_q_arr_0 in_data 0 8 } } }
	no_q_arr_1 { ap_none {  { no_q_arr_1 in_data 0 8 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
