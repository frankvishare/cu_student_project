set moduleName conv_fprop
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
set cdfgNum 6
set C_modelName {conv_fprop}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict prev_layer_map_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict prev_layer_map_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict prev_layer_map_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict prev_layer_map_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict prev_layer_kernel { MEM_WIDTH 3200 MEM_SIZE 768000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict prev_layer_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_map_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_map_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_map_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_map_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_kernel { MEM_WIDTH 3200 MEM_SIZE 768000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict layer_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pconnection { MEM_WIDTH 1 MEM_SIZE 96 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ prev_layer_map_w int 32 regular {pointer 0}  }
	{ prev_layer_map_h int 32 unused {pointer 0}  }
	{ prev_layer_map_count int 32 regular {pointer 0}  }
	{ prev_layer_map_data int 64 regular {array 122880 { 1 3 } 1 1 }  }
	{ prev_layer_map_error int 64 unused {array 122880 { } 0 1 }  }
	{ prev_layer_map_b int 64 unused {array 120 { } 0 1 }  }
	{ prev_layer_map_db int 64 unused {array 120 { } 0 1 }  }
	{ prev_layer_kernel_w int 32 unused {pointer 0}  }
	{ prev_layer_kernel_h int 32 unused {pointer 0}  }
	{ prev_layer_kernel_count int 32 unused {pointer 0}  }
	{ prev_layer_kernel int 3200 unused {array 1920 { } 0 1 }  }
	{ prev_layer_map_common int 64 unused {array 1024 { } 0 1 }  }
	{ layer_map_w int 32 regular {pointer 0}  }
	{ layer_map_h int 32 regular {pointer 0}  }
	{ layer_map_count int 32 regular {pointer 0}  }
	{ layer_map_data int 64 regular {array 122880 { 0 3 } 0 1 }  }
	{ layer_map_error int 64 unused {array 122880 { } 0 1 }  }
	{ layer_map_b int 64 regular {array 120 { 1 3 } 1 1 }  }
	{ layer_map_db int 64 unused {array 120 { } 0 1 }  }
	{ layer_kernel_w int 32 regular {pointer 0}  }
	{ layer_kernel_h int 32 regular {pointer 0}  }
	{ layer_kernel_count int 32 unused {pointer 0}  }
	{ layer_kernel int 3200 regular {array 1920 { 1 3 } 1 1 }  }
	{ layer_map_common int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ pconnection int 1 regular {array 96 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "prev_layer_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_map_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_map_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "prev_layer_map_b", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "prev_layer_map_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "prev_layer_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prev_layer_kernel", "interface" : "memory", "bitwidth" : 3200, "direction" : "NONE"} , 
 	{ "Name" : "prev_layer_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "layer_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_map_data", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "layer_map_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "layer_map_b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer_map_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "layer_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer_kernel", "interface" : "memory", "bitwidth" : 3200, "direction" : "READONLY"} , 
 	{ "Name" : "layer_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pconnection", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prev_layer_map_w sc_in sc_lv 32 signal 0 } 
	{ prev_layer_map_h sc_in sc_lv 32 signal 1 } 
	{ prev_layer_map_count sc_in sc_lv 32 signal 2 } 
	{ prev_layer_map_data_address0 sc_out sc_lv 17 signal 3 } 
	{ prev_layer_map_data_ce0 sc_out sc_logic 1 signal 3 } 
	{ prev_layer_map_data_q0 sc_in sc_lv 64 signal 3 } 
	{ prev_layer_map_error_address0 sc_out sc_lv 17 signal 4 } 
	{ prev_layer_map_error_ce0 sc_out sc_logic 1 signal 4 } 
	{ prev_layer_map_error_we0 sc_out sc_logic 1 signal 4 } 
	{ prev_layer_map_error_d0 sc_out sc_lv 64 signal 4 } 
	{ prev_layer_map_error_q0 sc_in sc_lv 64 signal 4 } 
	{ prev_layer_map_error_address1 sc_out sc_lv 17 signal 4 } 
	{ prev_layer_map_error_ce1 sc_out sc_logic 1 signal 4 } 
	{ prev_layer_map_error_we1 sc_out sc_logic 1 signal 4 } 
	{ prev_layer_map_error_d1 sc_out sc_lv 64 signal 4 } 
	{ prev_layer_map_error_q1 sc_in sc_lv 64 signal 4 } 
	{ prev_layer_map_b_address0 sc_out sc_lv 7 signal 5 } 
	{ prev_layer_map_b_ce0 sc_out sc_logic 1 signal 5 } 
	{ prev_layer_map_b_we0 sc_out sc_logic 1 signal 5 } 
	{ prev_layer_map_b_d0 sc_out sc_lv 64 signal 5 } 
	{ prev_layer_map_b_q0 sc_in sc_lv 64 signal 5 } 
	{ prev_layer_map_b_address1 sc_out sc_lv 7 signal 5 } 
	{ prev_layer_map_b_ce1 sc_out sc_logic 1 signal 5 } 
	{ prev_layer_map_b_we1 sc_out sc_logic 1 signal 5 } 
	{ prev_layer_map_b_d1 sc_out sc_lv 64 signal 5 } 
	{ prev_layer_map_b_q1 sc_in sc_lv 64 signal 5 } 
	{ prev_layer_map_db_address0 sc_out sc_lv 7 signal 6 } 
	{ prev_layer_map_db_ce0 sc_out sc_logic 1 signal 6 } 
	{ prev_layer_map_db_we0 sc_out sc_logic 1 signal 6 } 
	{ prev_layer_map_db_d0 sc_out sc_lv 64 signal 6 } 
	{ prev_layer_map_db_q0 sc_in sc_lv 64 signal 6 } 
	{ prev_layer_map_db_address1 sc_out sc_lv 7 signal 6 } 
	{ prev_layer_map_db_ce1 sc_out sc_logic 1 signal 6 } 
	{ prev_layer_map_db_we1 sc_out sc_logic 1 signal 6 } 
	{ prev_layer_map_db_d1 sc_out sc_lv 64 signal 6 } 
	{ prev_layer_map_db_q1 sc_in sc_lv 64 signal 6 } 
	{ prev_layer_kernel_w sc_in sc_lv 32 signal 7 } 
	{ prev_layer_kernel_h sc_in sc_lv 32 signal 8 } 
	{ prev_layer_kernel_count sc_in sc_lv 32 signal 9 } 
	{ prev_layer_kernel_address0 sc_out sc_lv 11 signal 10 } 
	{ prev_layer_kernel_ce0 sc_out sc_logic 1 signal 10 } 
	{ prev_layer_kernel_we0 sc_out sc_logic 1 signal 10 } 
	{ prev_layer_kernel_d0 sc_out sc_lv 3200 signal 10 } 
	{ prev_layer_kernel_q0 sc_in sc_lv 3200 signal 10 } 
	{ prev_layer_kernel_address1 sc_out sc_lv 11 signal 10 } 
	{ prev_layer_kernel_ce1 sc_out sc_logic 1 signal 10 } 
	{ prev_layer_kernel_we1 sc_out sc_logic 1 signal 10 } 
	{ prev_layer_kernel_d1 sc_out sc_lv 3200 signal 10 } 
	{ prev_layer_kernel_q1 sc_in sc_lv 3200 signal 10 } 
	{ prev_layer_map_common_address0 sc_out sc_lv 10 signal 11 } 
	{ prev_layer_map_common_ce0 sc_out sc_logic 1 signal 11 } 
	{ prev_layer_map_common_we0 sc_out sc_logic 1 signal 11 } 
	{ prev_layer_map_common_d0 sc_out sc_lv 64 signal 11 } 
	{ prev_layer_map_common_q0 sc_in sc_lv 64 signal 11 } 
	{ prev_layer_map_common_address1 sc_out sc_lv 10 signal 11 } 
	{ prev_layer_map_common_ce1 sc_out sc_logic 1 signal 11 } 
	{ prev_layer_map_common_we1 sc_out sc_logic 1 signal 11 } 
	{ prev_layer_map_common_d1 sc_out sc_lv 64 signal 11 } 
	{ prev_layer_map_common_q1 sc_in sc_lv 64 signal 11 } 
	{ layer_map_w sc_in sc_lv 32 signal 12 } 
	{ layer_map_h sc_in sc_lv 32 signal 13 } 
	{ layer_map_count sc_in sc_lv 32 signal 14 } 
	{ layer_map_data_address0 sc_out sc_lv 17 signal 15 } 
	{ layer_map_data_ce0 sc_out sc_logic 1 signal 15 } 
	{ layer_map_data_we0 sc_out sc_logic 1 signal 15 } 
	{ layer_map_data_d0 sc_out sc_lv 64 signal 15 } 
	{ layer_map_error_address0 sc_out sc_lv 17 signal 16 } 
	{ layer_map_error_ce0 sc_out sc_logic 1 signal 16 } 
	{ layer_map_error_we0 sc_out sc_logic 1 signal 16 } 
	{ layer_map_error_d0 sc_out sc_lv 64 signal 16 } 
	{ layer_map_error_q0 sc_in sc_lv 64 signal 16 } 
	{ layer_map_error_address1 sc_out sc_lv 17 signal 16 } 
	{ layer_map_error_ce1 sc_out sc_logic 1 signal 16 } 
	{ layer_map_error_we1 sc_out sc_logic 1 signal 16 } 
	{ layer_map_error_d1 sc_out sc_lv 64 signal 16 } 
	{ layer_map_error_q1 sc_in sc_lv 64 signal 16 } 
	{ layer_map_b_address0 sc_out sc_lv 7 signal 17 } 
	{ layer_map_b_ce0 sc_out sc_logic 1 signal 17 } 
	{ layer_map_b_q0 sc_in sc_lv 64 signal 17 } 
	{ layer_map_db_address0 sc_out sc_lv 7 signal 18 } 
	{ layer_map_db_ce0 sc_out sc_logic 1 signal 18 } 
	{ layer_map_db_we0 sc_out sc_logic 1 signal 18 } 
	{ layer_map_db_d0 sc_out sc_lv 64 signal 18 } 
	{ layer_map_db_q0 sc_in sc_lv 64 signal 18 } 
	{ layer_map_db_address1 sc_out sc_lv 7 signal 18 } 
	{ layer_map_db_ce1 sc_out sc_logic 1 signal 18 } 
	{ layer_map_db_we1 sc_out sc_logic 1 signal 18 } 
	{ layer_map_db_d1 sc_out sc_lv 64 signal 18 } 
	{ layer_map_db_q1 sc_in sc_lv 64 signal 18 } 
	{ layer_kernel_w sc_in sc_lv 32 signal 19 } 
	{ layer_kernel_h sc_in sc_lv 32 signal 20 } 
	{ layer_kernel_count sc_in sc_lv 32 signal 21 } 
	{ layer_kernel_address0 sc_out sc_lv 11 signal 22 } 
	{ layer_kernel_ce0 sc_out sc_logic 1 signal 22 } 
	{ layer_kernel_q0 sc_in sc_lv 3200 signal 22 } 
	{ layer_map_common_address0 sc_out sc_lv 10 signal 23 } 
	{ layer_map_common_ce0 sc_out sc_logic 1 signal 23 } 
	{ layer_map_common_we0 sc_out sc_logic 1 signal 23 } 
	{ layer_map_common_d0 sc_out sc_lv 64 signal 23 } 
	{ layer_map_common_q0 sc_in sc_lv 64 signal 23 } 
	{ pconnection_address0 sc_out sc_lv 7 signal 24 } 
	{ pconnection_ce0 sc_out sc_logic 1 signal 24 } 
	{ pconnection_q0 sc_in sc_lv 1 signal 24 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prev_layer_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_map_w", "role": "default" }} , 
 	{ "name": "prev_layer_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_map_h", "role": "default" }} , 
 	{ "name": "prev_layer_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_map_count", "role": "default" }} , 
 	{ "name": "prev_layer_map_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "prev_layer_map_data", "role": "address0" }} , 
 	{ "name": "prev_layer_map_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_data", "role": "ce0" }} , 
 	{ "name": "prev_layer_map_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_data", "role": "q0" }} , 
 	{ "name": "prev_layer_map_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "address0" }} , 
 	{ "name": "prev_layer_map_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "ce0" }} , 
 	{ "name": "prev_layer_map_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "we0" }} , 
 	{ "name": "prev_layer_map_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "d0" }} , 
 	{ "name": "prev_layer_map_error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "q0" }} , 
 	{ "name": "prev_layer_map_error_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "address1" }} , 
 	{ "name": "prev_layer_map_error_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "ce1" }} , 
 	{ "name": "prev_layer_map_error_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "we1" }} , 
 	{ "name": "prev_layer_map_error_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "d1" }} , 
 	{ "name": "prev_layer_map_error_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_error", "role": "q1" }} , 
 	{ "name": "prev_layer_map_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "address0" }} , 
 	{ "name": "prev_layer_map_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "ce0" }} , 
 	{ "name": "prev_layer_map_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "we0" }} , 
 	{ "name": "prev_layer_map_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "d0" }} , 
 	{ "name": "prev_layer_map_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "q0" }} , 
 	{ "name": "prev_layer_map_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "address1" }} , 
 	{ "name": "prev_layer_map_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "ce1" }} , 
 	{ "name": "prev_layer_map_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "we1" }} , 
 	{ "name": "prev_layer_map_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "d1" }} , 
 	{ "name": "prev_layer_map_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_b", "role": "q1" }} , 
 	{ "name": "prev_layer_map_db_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "address0" }} , 
 	{ "name": "prev_layer_map_db_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "ce0" }} , 
 	{ "name": "prev_layer_map_db_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "we0" }} , 
 	{ "name": "prev_layer_map_db_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "d0" }} , 
 	{ "name": "prev_layer_map_db_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "q0" }} , 
 	{ "name": "prev_layer_map_db_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "address1" }} , 
 	{ "name": "prev_layer_map_db_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "ce1" }} , 
 	{ "name": "prev_layer_map_db_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "we1" }} , 
 	{ "name": "prev_layer_map_db_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "d1" }} , 
 	{ "name": "prev_layer_map_db_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_db", "role": "q1" }} , 
 	{ "name": "prev_layer_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_kernel_w", "role": "default" }} , 
 	{ "name": "prev_layer_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_kernel_h", "role": "default" }} , 
 	{ "name": "prev_layer_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prev_layer_kernel_count", "role": "default" }} , 
 	{ "name": "prev_layer_kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "address0" }} , 
 	{ "name": "prev_layer_kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "ce0" }} , 
 	{ "name": "prev_layer_kernel_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "we0" }} , 
 	{ "name": "prev_layer_kernel_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "d0" }} , 
 	{ "name": "prev_layer_kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "q0" }} , 
 	{ "name": "prev_layer_kernel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "address1" }} , 
 	{ "name": "prev_layer_kernel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "ce1" }} , 
 	{ "name": "prev_layer_kernel_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "we1" }} , 
 	{ "name": "prev_layer_kernel_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "d1" }} , 
 	{ "name": "prev_layer_kernel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "prev_layer_kernel", "role": "q1" }} , 
 	{ "name": "prev_layer_map_common_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "address0" }} , 
 	{ "name": "prev_layer_map_common_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "ce0" }} , 
 	{ "name": "prev_layer_map_common_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "we0" }} , 
 	{ "name": "prev_layer_map_common_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "d0" }} , 
 	{ "name": "prev_layer_map_common_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "q0" }} , 
 	{ "name": "prev_layer_map_common_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "address1" }} , 
 	{ "name": "prev_layer_map_common_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "ce1" }} , 
 	{ "name": "prev_layer_map_common_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "we1" }} , 
 	{ "name": "prev_layer_map_common_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "d1" }} , 
 	{ "name": "prev_layer_map_common_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "prev_layer_map_common", "role": "q1" }} , 
 	{ "name": "layer_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_map_w", "role": "default" }} , 
 	{ "name": "layer_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_map_h", "role": "default" }} , 
 	{ "name": "layer_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_map_count", "role": "default" }} , 
 	{ "name": "layer_map_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "layer_map_data", "role": "address0" }} , 
 	{ "name": "layer_map_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_data", "role": "ce0" }} , 
 	{ "name": "layer_map_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_data", "role": "we0" }} , 
 	{ "name": "layer_map_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_data", "role": "d0" }} , 
 	{ "name": "layer_map_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "layer_map_error", "role": "address0" }} , 
 	{ "name": "layer_map_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_error", "role": "ce0" }} , 
 	{ "name": "layer_map_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_error", "role": "we0" }} , 
 	{ "name": "layer_map_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_error", "role": "d0" }} , 
 	{ "name": "layer_map_error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_error", "role": "q0" }} , 
 	{ "name": "layer_map_error_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "layer_map_error", "role": "address1" }} , 
 	{ "name": "layer_map_error_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_error", "role": "ce1" }} , 
 	{ "name": "layer_map_error_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_error", "role": "we1" }} , 
 	{ "name": "layer_map_error_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_error", "role": "d1" }} , 
 	{ "name": "layer_map_error_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_error", "role": "q1" }} , 
 	{ "name": "layer_map_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer_map_b", "role": "address0" }} , 
 	{ "name": "layer_map_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_b", "role": "ce0" }} , 
 	{ "name": "layer_map_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_b", "role": "q0" }} , 
 	{ "name": "layer_map_db_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer_map_db", "role": "address0" }} , 
 	{ "name": "layer_map_db_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_db", "role": "ce0" }} , 
 	{ "name": "layer_map_db_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_db", "role": "we0" }} , 
 	{ "name": "layer_map_db_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_db", "role": "d0" }} , 
 	{ "name": "layer_map_db_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_db", "role": "q0" }} , 
 	{ "name": "layer_map_db_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "layer_map_db", "role": "address1" }} , 
 	{ "name": "layer_map_db_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_db", "role": "ce1" }} , 
 	{ "name": "layer_map_db_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_db", "role": "we1" }} , 
 	{ "name": "layer_map_db_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_db", "role": "d1" }} , 
 	{ "name": "layer_map_db_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_db", "role": "q1" }} , 
 	{ "name": "layer_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_kernel_w", "role": "default" }} , 
 	{ "name": "layer_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_kernel_h", "role": "default" }} , 
 	{ "name": "layer_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer_kernel_count", "role": "default" }} , 
 	{ "name": "layer_kernel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer_kernel", "role": "address0" }} , 
 	{ "name": "layer_kernel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_kernel", "role": "ce0" }} , 
 	{ "name": "layer_kernel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3200, "type": "signal", "bundle":{"name": "layer_kernel", "role": "q0" }} , 
 	{ "name": "layer_map_common_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "layer_map_common", "role": "address0" }} , 
 	{ "name": "layer_map_common_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_common", "role": "ce0" }} , 
 	{ "name": "layer_map_common_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer_map_common", "role": "we0" }} , 
 	{ "name": "layer_map_common_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_common", "role": "d0" }} , 
 	{ "name": "layer_map_common_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer_map_common", "role": "q0" }} , 
 	{ "name": "pconnection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pconnection", "role": "address0" }} , 
 	{ "name": "pconnection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pconnection", "role": "ce0" }} , 
 	{ "name": "pconnection_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pconnection", "role": "q0" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "8", "15", "16", "17", "18", "19"],
		"CDFG" : "conv_fprop",
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
			{"Name" : "prev_layer_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_map_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242", "Port" : "prev_layer_map_data", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "prev_layer_map_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "prev_layer_map_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "prev_layer_map_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "prev_layer_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_kernel", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "prev_layer_map_common", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_map_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257", "Port" : "layer_map_data", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "layer_map_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_map_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_map_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "layer_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_kernel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_map_common", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv_fprop_Pipeline_1_fu_235", "Port" : "layer_map_common", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "8", "SubInstance" : "grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257", "Port" : "layer_map_common", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "pconnection", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state25"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_52_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state12", "ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_92_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state26"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_89_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_1_fu_235", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "conv_fprop_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer_map_common", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_1_fu_235.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
		"CDFG" : "conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4",
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
			{"Name" : "layer_kernel_w_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln101", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln52", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln61_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "prev_layer_map_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "layer_kernel_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_3_VITIS_LOOP_59_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242.dmul_64ns_64ns_64_8_max_dsp_1_U4", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242.mul_31ns_32s_58_2_1_U5", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242.ama_addmuladd_17ns_17ns_17s_17ns_17_4_1_U6", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_242.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14"],
		"CDFG" : "conv_fprop_Pipeline_VITIS_LOOP_106_3",
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
			{"Name" : "size", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln108", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer_map_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "layer_map_common", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_106_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter79", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter79", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.dadd_64ns_64ns_64_8_full_dsp_1_U20", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.dadd_64ns_64ns_64_8_full_dsp_1_U22", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.ddiv_64ns_64ns_64_31_no_dsp_1_U23", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.dexp_64ns_64ns_64_30_full_dsp_1_U24", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.dexp_64ns_64ns_64_30_full_dsp_1_U25", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop_Pipeline_VITIS_LOOP_106_3_fu_257.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_8_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_31ns_62_2_1_U35", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U36", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U37", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_11s_11s_11ns_11_4_1_U38", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_fprop {
		prev_layer_map_w {Type I LastRead 6 FirstWrite -1}
		prev_layer_map_h {Type I LastRead -1 FirstWrite -1}
		prev_layer_map_count {Type I LastRead 2 FirstWrite -1}
		prev_layer_map_data {Type I LastRead 6 FirstWrite -1}
		prev_layer_map_error {Type X LastRead -1 FirstWrite -1}
		prev_layer_map_b {Type X LastRead -1 FirstWrite -1}
		prev_layer_map_db {Type X LastRead -1 FirstWrite -1}
		prev_layer_kernel_w {Type I LastRead -1 FirstWrite -1}
		prev_layer_kernel_h {Type I LastRead -1 FirstWrite -1}
		prev_layer_kernel_count {Type I LastRead -1 FirstWrite -1}
		prev_layer_kernel {Type X LastRead -1 FirstWrite -1}
		prev_layer_map_common {Type X LastRead -1 FirstWrite -1}
		layer_map_w {Type I LastRead 0 FirstWrite -1}
		layer_map_h {Type I LastRead 0 FirstWrite -1}
		layer_map_count {Type I LastRead 2 FirstWrite -1}
		layer_map_data {Type O LastRead -1 FirstWrite 79}
		layer_map_error {Type X LastRead -1 FirstWrite -1}
		layer_map_b {Type I LastRead 7 FirstWrite -1}
		layer_map_db {Type X LastRead -1 FirstWrite -1}
		layer_kernel_w {Type I LastRead 4 FirstWrite -1}
		layer_kernel_h {Type I LastRead 4 FirstWrite -1}
		layer_kernel_count {Type I LastRead -1 FirstWrite -1}
		layer_kernel {Type I LastRead 11 FirstWrite -1}
		layer_map_common {Type IO LastRead 14 FirstWrite -1}
		pconnection {Type I LastRead 10 FirstWrite -1}}
	conv_fprop_Pipeline_1 {
		layer_map_common {Type O LastRead -1 FirstWrite 0}
		size {Type I LastRead 0 FirstWrite -1}}
	conv_fprop_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4 {
		layer_kernel_w_load {Type I LastRead 0 FirstWrite -1}
		mul_ln101 {Type I LastRead 0 FirstWrite -1}
		empty_11 {Type I LastRead 0 FirstWrite -1}
		empty_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln52 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln61_1 {Type I LastRead 0 FirstWrite -1}
		prev_layer_map_data {Type I LastRead 6 FirstWrite -1}
		layer_kernel_load {Type I LastRead 0 FirstWrite -1}
		sum_out {Type O LastRead -1 FirstWrite 16}}
	conv_fprop_Pipeline_VITIS_LOOP_106_3 {
		size {Type I LastRead 0 FirstWrite -1}
		zext_ln108 {Type I LastRead 0 FirstWrite -1}
		layer_map_data {Type O LastRead -1 FirstWrite 79}
		layer_map_common {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prev_layer_map_w { ap_none {  { prev_layer_map_w in_data 0 32 } } }
	prev_layer_map_h { ap_none {  { prev_layer_map_h in_data 0 32 } } }
	prev_layer_map_count { ap_none {  { prev_layer_map_count in_data 0 32 } } }
	prev_layer_map_data { ap_memory {  { prev_layer_map_data_address0 mem_address 1 17 }  { prev_layer_map_data_ce0 mem_ce 1 1 }  { prev_layer_map_data_q0 mem_dout 0 64 } } }
	prev_layer_map_error { ap_memory {  { prev_layer_map_error_address0 mem_address 1 17 }  { prev_layer_map_error_ce0 mem_ce 1 1 }  { prev_layer_map_error_we0 mem_we 1 1 }  { prev_layer_map_error_d0 mem_din 1 64 }  { prev_layer_map_error_q0 mem_dout 0 64 }  { prev_layer_map_error_address1 MemPortADDR2 1 17 }  { prev_layer_map_error_ce1 MemPortCE2 1 1 }  { prev_layer_map_error_we1 MemPortWE2 1 1 }  { prev_layer_map_error_d1 MemPortDIN2 1 64 }  { prev_layer_map_error_q1 MemPortDOUT2 0 64 } } }
	prev_layer_map_b { ap_memory {  { prev_layer_map_b_address0 mem_address 1 7 }  { prev_layer_map_b_ce0 mem_ce 1 1 }  { prev_layer_map_b_we0 mem_we 1 1 }  { prev_layer_map_b_d0 mem_din 1 64 }  { prev_layer_map_b_q0 mem_dout 0 64 }  { prev_layer_map_b_address1 MemPortADDR2 1 7 }  { prev_layer_map_b_ce1 MemPortCE2 1 1 }  { prev_layer_map_b_we1 MemPortWE2 1 1 }  { prev_layer_map_b_d1 MemPortDIN2 1 64 }  { prev_layer_map_b_q1 MemPortDOUT2 0 64 } } }
	prev_layer_map_db { ap_memory {  { prev_layer_map_db_address0 mem_address 1 7 }  { prev_layer_map_db_ce0 mem_ce 1 1 }  { prev_layer_map_db_we0 mem_we 1 1 }  { prev_layer_map_db_d0 mem_din 1 64 }  { prev_layer_map_db_q0 mem_dout 0 64 }  { prev_layer_map_db_address1 MemPortADDR2 1 7 }  { prev_layer_map_db_ce1 MemPortCE2 1 1 }  { prev_layer_map_db_we1 MemPortWE2 1 1 }  { prev_layer_map_db_d1 MemPortDIN2 1 64 }  { prev_layer_map_db_q1 MemPortDOUT2 0 64 } } }
	prev_layer_kernel_w { ap_none {  { prev_layer_kernel_w in_data 0 32 } } }
	prev_layer_kernel_h { ap_none {  { prev_layer_kernel_h in_data 0 32 } } }
	prev_layer_kernel_count { ap_none {  { prev_layer_kernel_count in_data 0 32 } } }
	prev_layer_kernel { ap_memory {  { prev_layer_kernel_address0 mem_address 1 11 }  { prev_layer_kernel_ce0 mem_ce 1 1 }  { prev_layer_kernel_we0 mem_we 1 1 }  { prev_layer_kernel_d0 mem_din 1 3200 }  { prev_layer_kernel_q0 mem_dout 0 3200 }  { prev_layer_kernel_address1 MemPortADDR2 1 11 }  { prev_layer_kernel_ce1 MemPortCE2 1 1 }  { prev_layer_kernel_we1 MemPortWE2 1 1 }  { prev_layer_kernel_d1 MemPortDIN2 1 3200 }  { prev_layer_kernel_q1 MemPortDOUT2 0 3200 } } }
	prev_layer_map_common { ap_memory {  { prev_layer_map_common_address0 mem_address 1 10 }  { prev_layer_map_common_ce0 mem_ce 1 1 }  { prev_layer_map_common_we0 mem_we 1 1 }  { prev_layer_map_common_d0 mem_din 1 64 }  { prev_layer_map_common_q0 mem_dout 0 64 }  { prev_layer_map_common_address1 MemPortADDR2 1 10 }  { prev_layer_map_common_ce1 MemPortCE2 1 1 }  { prev_layer_map_common_we1 MemPortWE2 1 1 }  { prev_layer_map_common_d1 MemPortDIN2 1 64 }  { prev_layer_map_common_q1 MemPortDOUT2 0 64 } } }
	layer_map_w { ap_none {  { layer_map_w in_data 0 32 } } }
	layer_map_h { ap_none {  { layer_map_h in_data 0 32 } } }
	layer_map_count { ap_none {  { layer_map_count in_data 0 32 } } }
	layer_map_data { ap_memory {  { layer_map_data_address0 mem_address 1 17 }  { layer_map_data_ce0 mem_ce 1 1 }  { layer_map_data_we0 mem_we 1 1 }  { layer_map_data_d0 mem_din 1 64 } } }
	layer_map_error { ap_memory {  { layer_map_error_address0 mem_address 1 17 }  { layer_map_error_ce0 mem_ce 1 1 }  { layer_map_error_we0 mem_we 1 1 }  { layer_map_error_d0 mem_din 1 64 }  { layer_map_error_q0 mem_dout 0 64 }  { layer_map_error_address1 MemPortADDR2 1 17 }  { layer_map_error_ce1 MemPortCE2 1 1 }  { layer_map_error_we1 MemPortWE2 1 1 }  { layer_map_error_d1 MemPortDIN2 1 64 }  { layer_map_error_q1 MemPortDOUT2 0 64 } } }
	layer_map_b { ap_memory {  { layer_map_b_address0 mem_address 1 7 }  { layer_map_b_ce0 mem_ce 1 1 }  { layer_map_b_q0 mem_dout 0 64 } } }
	layer_map_db { ap_memory {  { layer_map_db_address0 mem_address 1 7 }  { layer_map_db_ce0 mem_ce 1 1 }  { layer_map_db_we0 mem_we 1 1 }  { layer_map_db_d0 mem_din 1 64 }  { layer_map_db_q0 mem_dout 0 64 }  { layer_map_db_address1 MemPortADDR2 1 7 }  { layer_map_db_ce1 MemPortCE2 1 1 }  { layer_map_db_we1 MemPortWE2 1 1 }  { layer_map_db_d1 MemPortDIN2 1 64 }  { layer_map_db_q1 MemPortDOUT2 0 64 } } }
	layer_kernel_w { ap_none {  { layer_kernel_w in_data 0 32 } } }
	layer_kernel_h { ap_none {  { layer_kernel_h in_data 0 32 } } }
	layer_kernel_count { ap_none {  { layer_kernel_count in_data 0 32 } } }
	layer_kernel { ap_memory {  { layer_kernel_address0 mem_address 1 11 }  { layer_kernel_ce0 mem_ce 1 1 }  { layer_kernel_q0 mem_dout 0 3200 } } }
	layer_map_common { ap_memory {  { layer_map_common_address0 mem_address 1 10 }  { layer_map_common_ce0 mem_ce 1 1 }  { layer_map_common_we0 mem_we 1 1 }  { layer_map_common_d0 mem_din 1 64 }  { layer_map_common_q0 mem_dout 0 64 } } }
	pconnection { ap_memory {  { pconnection_address0 mem_address 1 7 }  { pconnection_ce0 mem_ce 1 1 }  { pconnection_q0 mem_dout 0 1 } } }
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
