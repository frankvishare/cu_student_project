set moduleName hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2
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
set C_modelName {hevc_loop_filter_chroma_8bit_hls_Pipeline_VITIS_LOOP_87_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict pix_base { MEM_WIDTH 8 MEM_SIZE 2073600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ sext_ln76 int 32 regular  }
	{ empty_12 int 21 regular  }
	{ mul13_cast int 21 regular  }
	{ pix_base int 8 regular {array 2073600 { 2 1 } 1 1 }  }
	{ empty int 21 regular  }
	{ sub38 int 16 regular  }
	{ tc int 15 regular  }
	{ select_ln84 int 8 regular  }
	{ select_ln85 int 8 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln76", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_12", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "mul13_cast", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "pix_base", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "sub38", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tc", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln84", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "select_ln85", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ sext_ln76 sc_in sc_lv 32 signal 0 } 
	{ empty_12 sc_in sc_lv 21 signal 1 } 
	{ mul13_cast sc_in sc_lv 21 signal 2 } 
	{ pix_base_address0 sc_out sc_lv 21 signal 3 } 
	{ pix_base_ce0 sc_out sc_logic 1 signal 3 } 
	{ pix_base_we0 sc_out sc_logic 1 signal 3 } 
	{ pix_base_d0 sc_out sc_lv 8 signal 3 } 
	{ pix_base_q0 sc_in sc_lv 8 signal 3 } 
	{ pix_base_address1 sc_out sc_lv 21 signal 3 } 
	{ pix_base_ce1 sc_out sc_logic 1 signal 3 } 
	{ pix_base_q1 sc_in sc_lv 8 signal 3 } 
	{ empty sc_in sc_lv 21 signal 4 } 
	{ sub38 sc_in sc_lv 16 signal 5 } 
	{ tc sc_in sc_lv 15 signal 6 } 
	{ select_ln84 sc_in sc_lv 8 signal 7 } 
	{ select_ln85 sc_in sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "sext_ln76", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sext_ln76", "role": "default" }} , 
 	{ "name": "empty_12", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "empty_12", "role": "default" }} , 
 	{ "name": "mul13_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "mul13_cast", "role": "default" }} , 
 	{ "name": "pix_base_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pix_base", "role": "address0" }} , 
 	{ "name": "pix_base_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "ce0" }} , 
 	{ "name": "pix_base_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "we0" }} , 
 	{ "name": "pix_base_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "d0" }} , 
 	{ "name": "pix_base_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "q0" }} , 
 	{ "name": "pix_base_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "pix_base", "role": "address1" }} , 
 	{ "name": "pix_base_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pix_base", "role": "ce1" }} , 
 	{ "name": "pix_base_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "pix_base", "role": "q1" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "sub38", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sub38", "role": "default" }} , 
 	{ "name": "tc", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "tc", "role": "default" }} , 
 	{ "name": "select_ln84", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln84", "role": "default" }} , 
 	{ "name": "select_ln85", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "select_ln85", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "30", "Max" : "30"}
	, {"Name" : "Interval", "Min" : "30", "Max" : "30"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln76 { ap_none {  { sext_ln76 in_data 0 32 } } }
	empty_12 { ap_none {  { empty_12 in_data 0 21 } } }
	mul13_cast { ap_none {  { mul13_cast in_data 0 21 } } }
	pix_base { ap_memory {  { pix_base_address0 mem_address 1 21 }  { pix_base_ce0 mem_ce 1 1 }  { pix_base_we0 mem_we 1 1 }  { pix_base_d0 mem_din 1 8 }  { pix_base_q0 mem_dout 0 8 }  { pix_base_address1 MemPortADDR2 1 21 }  { pix_base_ce1 MemPortCE2 1 1 }  { pix_base_q1 MemPortDOUT2 0 8 } } }
	empty { ap_none {  { empty in_data 0 21 } } }
	sub38 { ap_none {  { sub38 in_data 0 16 } } }
	tc { ap_none {  { tc in_data 0 15 } } }
	select_ln84 { ap_none {  { select_ln84 in_data 0 8 } } }
	select_ln85 { ap_none {  { select_ln85 in_data 0 8 } } }
}
