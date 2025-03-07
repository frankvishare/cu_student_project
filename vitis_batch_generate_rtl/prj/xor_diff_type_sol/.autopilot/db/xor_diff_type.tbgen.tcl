set moduleName xor_diff_type
set isTopModule 1
set isCombinational 1
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
set cdfgNum 2
set C_modelName {xor_diff_type}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ ap_core uint 8 unused  }
	{ ap_part uint 8 unused  }
	{ ap_parent uint 8 unused  }
	{ xor_val32 int 32 regular {pointer 1}  }
	{ xor_val16 uint 16 regular  }
	{ xor_val8 uint 8 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ap_core", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_part", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_parent", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xor_val32", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "xor_val16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "xor_val8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_core sc_in sc_lv 8 signal 0 } 
	{ ap_part sc_in sc_lv 8 signal 1 } 
	{ ap_parent sc_in sc_lv 8 signal 2 } 
	{ xor_val32 sc_out sc_lv 32 signal 3 } 
	{ xor_val32_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ xor_val16 sc_in sc_lv 16 signal 4 } 
	{ xor_val8 sc_in sc_lv 8 signal 5 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_core", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_core", "role": "default" }} , 
 	{ "name": "ap_part", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_part", "role": "default" }} , 
 	{ "name": "ap_parent", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_parent", "role": "default" }} , 
 	{ "name": "xor_val32", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "xor_val32", "role": "default" }} , 
 	{ "name": "xor_val32_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "xor_val32", "role": "ap_vld" }} , 
 	{ "name": "xor_val16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "xor_val16", "role": "default" }} , 
 	{ "name": "xor_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "xor_val8", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "xor_diff_type",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
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
			{"Name" : "xor_val32", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "xor_val16", "Type" : "None", "Direction" : "I"},
			{"Name" : "xor_val8", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	xor_diff_type {
		ap_core {Type I LastRead -1 FirstWrite -1}
		ap_part {Type I LastRead -1 FirstWrite -1}
		ap_parent {Type I LastRead -1 FirstWrite -1}
		xor_val32 {Type O LastRead -1 FirstWrite 0}
		xor_val16 {Type I LastRead 0 FirstWrite -1}
		xor_val8 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ap_core { ap_none {  { ap_core in_data 0 8 } } }
	ap_part { ap_none {  { ap_part in_data 0 8 } } }
	ap_parent { ap_none {  { ap_parent in_data 0 8 } } }
	xor_val32 { ap_vld {  { xor_val32 out_data 1 32 }  { xor_val32_ap_vld out_vld 1 1 } } }
	xor_val16 { ap_none {  { xor_val16 in_data 0 16 } } }
	xor_val8 { ap_none {  { xor_val8 in_data 0 8 } } }
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
