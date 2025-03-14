set moduleName conv_fprop3
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
set C_modelName {conv_fprop3}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict s4_pooling_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_W { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_dW { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_W { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_dW { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c5_conv_layer2_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict pconnection { MEM_WIDTH 1 MEM_SIZE 96 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ap_core uint 8 unused  }
	{ ap_part uint 8 unused  }
	{ ap_parent uint 8 unused  }
	{ s4_pooling_layer1_map_w int 32 regular {pointer 0}  }
	{ s4_pooling_layer1_map_h int 32 unused {pointer 0}  }
	{ s4_pooling_layer1_map_count int 32 regular {pointer 0}  }
	{ s4_pooling_layer1_kernel_w int 32 unused {pointer 0}  }
	{ s4_pooling_layer1_kernel_h int 32 unused {pointer 0}  }
	{ s4_pooling_layer1_kernel_count int 32 unused {pointer 0}  }
	{ s4_pooling_layer2_data int 64 regular {array 122880 { 1 3 } 1 1 }  }
	{ s4_pooling_layer2_error int 64 unused {array 122880 { } 0 1 }  }
	{ s4_pooling_layer2_b int 64 unused {array 120 { } 0 1 }  }
	{ s4_pooling_layer2_db int 64 unused {array 120 { } 0 1 }  }
	{ s4_pooling_layer2_W int 64 unused {array 48000 { } 0 1 }  }
	{ s4_pooling_layer2_dW int 64 unused {array 48000 { } 0 1 }  }
	{ s4_pooling_layer2_map_common int 64 unused {array 1024 { } 0 1 }  }
	{ c5_conv_layer1_map_w int 32 regular {pointer 0}  }
	{ c5_conv_layer1_map_h int 32 regular {pointer 0}  }
	{ c5_conv_layer1_map_count int 32 regular {pointer 0}  }
	{ c5_conv_layer1_kernel_w int 32 regular {pointer 0}  }
	{ c5_conv_layer1_kernel_h int 32 regular {pointer 0}  }
	{ c5_conv_layer1_kernel_count int 32 unused {pointer 0}  }
	{ c5_conv_layer2_data int 64 regular {array 122880 { 0 3 } 0 1 }  }
	{ c5_conv_layer2_error int 64 unused {array 122880 { } 0 1 }  }
	{ c5_conv_layer2_b int 64 regular {array 120 { 1 3 } 1 1 }  }
	{ c5_conv_layer2_db int 64 unused {array 120 { } 0 1 }  }
	{ c5_conv_layer2_W int 64 regular {array 48000 { 1 3 } 1 1 }  }
	{ c5_conv_layer2_dW int 64 unused {array 48000 { } 0 1 }  }
	{ c5_conv_layer2_map_common int 64 regular {array 1024 { 2 3 } 1 1 }  }
	{ pconnection int 1 regular {array 96 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ap_core", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_part", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_parent", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer2_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_b", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_W", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_dW", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c5_conv_layer1_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer1_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer1_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer1_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer1_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer1_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "c5_conv_layer2_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c5_conv_layer2_b", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer2_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c5_conv_layer2_W", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c5_conv_layer2_dW", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c5_conv_layer2_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "READWRITE"} , 
 	{ "Name" : "pconnection", "interface" : "memory", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 133
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
	{ s4_pooling_layer1_map_w sc_in sc_lv 32 signal 3 } 
	{ s4_pooling_layer1_map_h sc_in sc_lv 32 signal 4 } 
	{ s4_pooling_layer1_map_count sc_in sc_lv 32 signal 5 } 
	{ s4_pooling_layer1_kernel_w sc_in sc_lv 32 signal 6 } 
	{ s4_pooling_layer1_kernel_h sc_in sc_lv 32 signal 7 } 
	{ s4_pooling_layer1_kernel_count sc_in sc_lv 32 signal 8 } 
	{ s4_pooling_layer2_data_address0 sc_out sc_lv 17 signal 9 } 
	{ s4_pooling_layer2_data_ce0 sc_out sc_logic 1 signal 9 } 
	{ s4_pooling_layer2_data_q0 sc_in sc_lv 64 signal 9 } 
	{ s4_pooling_layer2_error_address0 sc_out sc_lv 17 signal 10 } 
	{ s4_pooling_layer2_error_ce0 sc_out sc_logic 1 signal 10 } 
	{ s4_pooling_layer2_error_we0 sc_out sc_logic 1 signal 10 } 
	{ s4_pooling_layer2_error_d0 sc_out sc_lv 64 signal 10 } 
	{ s4_pooling_layer2_error_q0 sc_in sc_lv 64 signal 10 } 
	{ s4_pooling_layer2_error_address1 sc_out sc_lv 17 signal 10 } 
	{ s4_pooling_layer2_error_ce1 sc_out sc_logic 1 signal 10 } 
	{ s4_pooling_layer2_error_we1 sc_out sc_logic 1 signal 10 } 
	{ s4_pooling_layer2_error_d1 sc_out sc_lv 64 signal 10 } 
	{ s4_pooling_layer2_error_q1 sc_in sc_lv 64 signal 10 } 
	{ s4_pooling_layer2_b_address0 sc_out sc_lv 7 signal 11 } 
	{ s4_pooling_layer2_b_ce0 sc_out sc_logic 1 signal 11 } 
	{ s4_pooling_layer2_b_we0 sc_out sc_logic 1 signal 11 } 
	{ s4_pooling_layer2_b_d0 sc_out sc_lv 64 signal 11 } 
	{ s4_pooling_layer2_b_q0 sc_in sc_lv 64 signal 11 } 
	{ s4_pooling_layer2_b_address1 sc_out sc_lv 7 signal 11 } 
	{ s4_pooling_layer2_b_ce1 sc_out sc_logic 1 signal 11 } 
	{ s4_pooling_layer2_b_we1 sc_out sc_logic 1 signal 11 } 
	{ s4_pooling_layer2_b_d1 sc_out sc_lv 64 signal 11 } 
	{ s4_pooling_layer2_b_q1 sc_in sc_lv 64 signal 11 } 
	{ s4_pooling_layer2_db_address0 sc_out sc_lv 7 signal 12 } 
	{ s4_pooling_layer2_db_ce0 sc_out sc_logic 1 signal 12 } 
	{ s4_pooling_layer2_db_we0 sc_out sc_logic 1 signal 12 } 
	{ s4_pooling_layer2_db_d0 sc_out sc_lv 64 signal 12 } 
	{ s4_pooling_layer2_db_q0 sc_in sc_lv 64 signal 12 } 
	{ s4_pooling_layer2_db_address1 sc_out sc_lv 7 signal 12 } 
	{ s4_pooling_layer2_db_ce1 sc_out sc_logic 1 signal 12 } 
	{ s4_pooling_layer2_db_we1 sc_out sc_logic 1 signal 12 } 
	{ s4_pooling_layer2_db_d1 sc_out sc_lv 64 signal 12 } 
	{ s4_pooling_layer2_db_q1 sc_in sc_lv 64 signal 12 } 
	{ s4_pooling_layer2_W_address0 sc_out sc_lv 16 signal 13 } 
	{ s4_pooling_layer2_W_ce0 sc_out sc_logic 1 signal 13 } 
	{ s4_pooling_layer2_W_we0 sc_out sc_logic 1 signal 13 } 
	{ s4_pooling_layer2_W_d0 sc_out sc_lv 64 signal 13 } 
	{ s4_pooling_layer2_W_q0 sc_in sc_lv 64 signal 13 } 
	{ s4_pooling_layer2_W_address1 sc_out sc_lv 16 signal 13 } 
	{ s4_pooling_layer2_W_ce1 sc_out sc_logic 1 signal 13 } 
	{ s4_pooling_layer2_W_we1 sc_out sc_logic 1 signal 13 } 
	{ s4_pooling_layer2_W_d1 sc_out sc_lv 64 signal 13 } 
	{ s4_pooling_layer2_W_q1 sc_in sc_lv 64 signal 13 } 
	{ s4_pooling_layer2_dW_address0 sc_out sc_lv 16 signal 14 } 
	{ s4_pooling_layer2_dW_ce0 sc_out sc_logic 1 signal 14 } 
	{ s4_pooling_layer2_dW_we0 sc_out sc_logic 1 signal 14 } 
	{ s4_pooling_layer2_dW_d0 sc_out sc_lv 64 signal 14 } 
	{ s4_pooling_layer2_dW_q0 sc_in sc_lv 64 signal 14 } 
	{ s4_pooling_layer2_dW_address1 sc_out sc_lv 16 signal 14 } 
	{ s4_pooling_layer2_dW_ce1 sc_out sc_logic 1 signal 14 } 
	{ s4_pooling_layer2_dW_we1 sc_out sc_logic 1 signal 14 } 
	{ s4_pooling_layer2_dW_d1 sc_out sc_lv 64 signal 14 } 
	{ s4_pooling_layer2_dW_q1 sc_in sc_lv 64 signal 14 } 
	{ s4_pooling_layer2_map_common_address0 sc_out sc_lv 10 signal 15 } 
	{ s4_pooling_layer2_map_common_ce0 sc_out sc_logic 1 signal 15 } 
	{ s4_pooling_layer2_map_common_we0 sc_out sc_logic 1 signal 15 } 
	{ s4_pooling_layer2_map_common_d0 sc_out sc_lv 64 signal 15 } 
	{ s4_pooling_layer2_map_common_q0 sc_in sc_lv 64 signal 15 } 
	{ s4_pooling_layer2_map_common_address1 sc_out sc_lv 10 signal 15 } 
	{ s4_pooling_layer2_map_common_ce1 sc_out sc_logic 1 signal 15 } 
	{ s4_pooling_layer2_map_common_we1 sc_out sc_logic 1 signal 15 } 
	{ s4_pooling_layer2_map_common_d1 sc_out sc_lv 64 signal 15 } 
	{ s4_pooling_layer2_map_common_q1 sc_in sc_lv 64 signal 15 } 
	{ c5_conv_layer1_map_w sc_in sc_lv 32 signal 16 } 
	{ c5_conv_layer1_map_h sc_in sc_lv 32 signal 17 } 
	{ c5_conv_layer1_map_count sc_in sc_lv 32 signal 18 } 
	{ c5_conv_layer1_kernel_w sc_in sc_lv 32 signal 19 } 
	{ c5_conv_layer1_kernel_h sc_in sc_lv 32 signal 20 } 
	{ c5_conv_layer1_kernel_count sc_in sc_lv 32 signal 21 } 
	{ c5_conv_layer2_data_address0 sc_out sc_lv 17 signal 22 } 
	{ c5_conv_layer2_data_ce0 sc_out sc_logic 1 signal 22 } 
	{ c5_conv_layer2_data_we0 sc_out sc_logic 1 signal 22 } 
	{ c5_conv_layer2_data_d0 sc_out sc_lv 64 signal 22 } 
	{ c5_conv_layer2_error_address0 sc_out sc_lv 17 signal 23 } 
	{ c5_conv_layer2_error_ce0 sc_out sc_logic 1 signal 23 } 
	{ c5_conv_layer2_error_we0 sc_out sc_logic 1 signal 23 } 
	{ c5_conv_layer2_error_d0 sc_out sc_lv 64 signal 23 } 
	{ c5_conv_layer2_error_q0 sc_in sc_lv 64 signal 23 } 
	{ c5_conv_layer2_error_address1 sc_out sc_lv 17 signal 23 } 
	{ c5_conv_layer2_error_ce1 sc_out sc_logic 1 signal 23 } 
	{ c5_conv_layer2_error_we1 sc_out sc_logic 1 signal 23 } 
	{ c5_conv_layer2_error_d1 sc_out sc_lv 64 signal 23 } 
	{ c5_conv_layer2_error_q1 sc_in sc_lv 64 signal 23 } 
	{ c5_conv_layer2_b_address0 sc_out sc_lv 7 signal 24 } 
	{ c5_conv_layer2_b_ce0 sc_out sc_logic 1 signal 24 } 
	{ c5_conv_layer2_b_q0 sc_in sc_lv 64 signal 24 } 
	{ c5_conv_layer2_db_address0 sc_out sc_lv 7 signal 25 } 
	{ c5_conv_layer2_db_ce0 sc_out sc_logic 1 signal 25 } 
	{ c5_conv_layer2_db_we0 sc_out sc_logic 1 signal 25 } 
	{ c5_conv_layer2_db_d0 sc_out sc_lv 64 signal 25 } 
	{ c5_conv_layer2_db_q0 sc_in sc_lv 64 signal 25 } 
	{ c5_conv_layer2_db_address1 sc_out sc_lv 7 signal 25 } 
	{ c5_conv_layer2_db_ce1 sc_out sc_logic 1 signal 25 } 
	{ c5_conv_layer2_db_we1 sc_out sc_logic 1 signal 25 } 
	{ c5_conv_layer2_db_d1 sc_out sc_lv 64 signal 25 } 
	{ c5_conv_layer2_db_q1 sc_in sc_lv 64 signal 25 } 
	{ c5_conv_layer2_W_address0 sc_out sc_lv 16 signal 26 } 
	{ c5_conv_layer2_W_ce0 sc_out sc_logic 1 signal 26 } 
	{ c5_conv_layer2_W_q0 sc_in sc_lv 64 signal 26 } 
	{ c5_conv_layer2_dW_address0 sc_out sc_lv 16 signal 27 } 
	{ c5_conv_layer2_dW_ce0 sc_out sc_logic 1 signal 27 } 
	{ c5_conv_layer2_dW_we0 sc_out sc_logic 1 signal 27 } 
	{ c5_conv_layer2_dW_d0 sc_out sc_lv 64 signal 27 } 
	{ c5_conv_layer2_dW_q0 sc_in sc_lv 64 signal 27 } 
	{ c5_conv_layer2_dW_address1 sc_out sc_lv 16 signal 27 } 
	{ c5_conv_layer2_dW_ce1 sc_out sc_logic 1 signal 27 } 
	{ c5_conv_layer2_dW_we1 sc_out sc_logic 1 signal 27 } 
	{ c5_conv_layer2_dW_d1 sc_out sc_lv 64 signal 27 } 
	{ c5_conv_layer2_dW_q1 sc_in sc_lv 64 signal 27 } 
	{ c5_conv_layer2_map_common_address0 sc_out sc_lv 10 signal 28 } 
	{ c5_conv_layer2_map_common_ce0 sc_out sc_logic 1 signal 28 } 
	{ c5_conv_layer2_map_common_we0 sc_out sc_logic 1 signal 28 } 
	{ c5_conv_layer2_map_common_d0 sc_out sc_lv 64 signal 28 } 
	{ c5_conv_layer2_map_common_q0 sc_in sc_lv 64 signal 28 } 
	{ pconnection_address0 sc_out sc_lv 7 signal 29 } 
	{ pconnection_ce0 sc_out sc_logic 1 signal 29 } 
	{ pconnection_q0 sc_in sc_lv 1 signal 29 } 
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
 	{ "name": "s4_pooling_layer1_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_w", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_h", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_count", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_w", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_h", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_count", "role": "default" }} , 
 	{ "name": "s4_pooling_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_error_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_error_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_error_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_error_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_error_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_error", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer2_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_b", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer2_db_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_db_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_db_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_db_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_db_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_db_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_db_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_db_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_db_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_db_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_db", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer2_W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_W_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_W_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_W_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_W_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_W_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_W_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_W_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_W", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer2_dW_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_dW_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_dW_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_dW_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_dW_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_dW_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_dW_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_dW_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_dW_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_dW_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_dW", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer2_map_common_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_map_common_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_map_common_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_map_common_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "d0" }} , 
 	{ "name": "s4_pooling_layer2_map_common_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "q0" }} , 
 	{ "name": "s4_pooling_layer2_map_common_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "address1" }} , 
 	{ "name": "s4_pooling_layer2_map_common_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "ce1" }} , 
 	{ "name": "s4_pooling_layer2_map_common_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "we1" }} , 
 	{ "name": "s4_pooling_layer2_map_common_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "d1" }} , 
 	{ "name": "s4_pooling_layer2_map_common_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_map_common", "role": "q1" }} , 
 	{ "name": "c5_conv_layer1_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_map_w", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_map_h", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_map_count", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_kernel_w", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_kernel_h", "role": "default" }} , 
 	{ "name": "c5_conv_layer1_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c5_conv_layer1_kernel_count", "role": "default" }} , 
 	{ "name": "c5_conv_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c5_conv_layer2_data", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_data", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_data", "role": "we0" }} , 
 	{ "name": "c5_conv_layer2_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_data", "role": "d0" }} , 
 	{ "name": "c5_conv_layer2_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "we0" }} , 
 	{ "name": "c5_conv_layer2_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "d0" }} , 
 	{ "name": "c5_conv_layer2_error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "q0" }} , 
 	{ "name": "c5_conv_layer2_error_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "address1" }} , 
 	{ "name": "c5_conv_layer2_error_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "ce1" }} , 
 	{ "name": "c5_conv_layer2_error_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "we1" }} , 
 	{ "name": "c5_conv_layer2_error_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "d1" }} , 
 	{ "name": "c5_conv_layer2_error_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_error", "role": "q1" }} , 
 	{ "name": "c5_conv_layer2_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c5_conv_layer2_b", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_b", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_b", "role": "q0" }} , 
 	{ "name": "c5_conv_layer2_db_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_db_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_db_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "we0" }} , 
 	{ "name": "c5_conv_layer2_db_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "d0" }} , 
 	{ "name": "c5_conv_layer2_db_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "q0" }} , 
 	{ "name": "c5_conv_layer2_db_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "address1" }} , 
 	{ "name": "c5_conv_layer2_db_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "ce1" }} , 
 	{ "name": "c5_conv_layer2_db_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "we1" }} , 
 	{ "name": "c5_conv_layer2_db_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "d1" }} , 
 	{ "name": "c5_conv_layer2_db_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_db", "role": "q1" }} , 
 	{ "name": "c5_conv_layer2_W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_W", "role": "q0" }} , 
 	{ "name": "c5_conv_layer2_dW_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_dW_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_dW_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "we0" }} , 
 	{ "name": "c5_conv_layer2_dW_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "d0" }} , 
 	{ "name": "c5_conv_layer2_dW_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "q0" }} , 
 	{ "name": "c5_conv_layer2_dW_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "address1" }} , 
 	{ "name": "c5_conv_layer2_dW_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "ce1" }} , 
 	{ "name": "c5_conv_layer2_dW_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "we1" }} , 
 	{ "name": "c5_conv_layer2_dW_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "d1" }} , 
 	{ "name": "c5_conv_layer2_dW_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_dW", "role": "q1" }} , 
 	{ "name": "c5_conv_layer2_map_common_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "c5_conv_layer2_map_common", "role": "address0" }} , 
 	{ "name": "c5_conv_layer2_map_common_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_map_common", "role": "ce0" }} , 
 	{ "name": "c5_conv_layer2_map_common_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c5_conv_layer2_map_common", "role": "we0" }} , 
 	{ "name": "c5_conv_layer2_map_common_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_map_common", "role": "d0" }} , 
 	{ "name": "c5_conv_layer2_map_common_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c5_conv_layer2_map_common", "role": "q0" }} , 
 	{ "name": "pconnection_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "pconnection", "role": "address0" }} , 
 	{ "name": "pconnection_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pconnection", "role": "ce0" }} , 
 	{ "name": "pconnection_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pconnection", "role": "q0" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "8", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "conv_fprop3",
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
			{"Name" : "ap_core", "Type" : "None", "Direction" : "I"},
			{"Name" : "ap_part", "Type" : "None", "Direction" : "I"},
			{"Name" : "ap_parent", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer2_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241", "Port" : "s4_pooling_layer2_data", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "s4_pooling_layer2_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_W", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_dW", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_map_common", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c5_conv_layer1_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer1_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer1_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer1_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer1_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer1_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer2_data", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258", "Port" : "c5_conv_layer2_data", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "c5_conv_layer2_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c5_conv_layer2_b", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c5_conv_layer2_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c5_conv_layer2_W", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241", "Port" : "c5_conv_layer2_W", "Inst_start_state" : "14", "Inst_end_state" : "15"}]},
			{"Name" : "c5_conv_layer2_dW", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c5_conv_layer2_map_common", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_conv_fprop3_Pipeline_1_fu_234", "Port" : "c5_conv_layer2_map_common", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "8", "SubInstance" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258", "Port" : "c5_conv_layer2_map_common", "Inst_start_state" : "26", "Inst_end_state" : "27"}]},
			{"Name" : "pconnection", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state24"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_52_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state13", "LastState" : ["ap_ST_fsm_state14"], "QuitState" : ["ap_ST_fsm_state13"], "PreState" : ["ap_ST_fsm_state12"], "PostState" : ["ap_ST_fsm_state8"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_164_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state8", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state8"], "PreState" : ["ap_ST_fsm_state7"], "PostState" : ["ap_ST_fsm_state25"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_161_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "27", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_1_fu_234", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "conv_fprop3_Pipeline_1",
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
			{"Name" : "c5_conv_layer2_map_common", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "size", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_1_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241", "Parent" : "0", "Child" : ["4", "5", "6", "7"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241.dmul_64ns_64ns_64_8_max_dsp_1_U4", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241.ama_addmuladd_17ns_17ns_17s_17ns_17_4_1_U5", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241.mac_muladd_16s_16s_16ns_16_4_1_U6", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_57_3_VITIS_LOOP_59_4_fu_241.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258", "Parent" : "0", "Child" : ["9", "10", "11", "12", "13", "14"],
		"CDFG" : "conv_fprop3_Pipeline_VITIS_LOOP_178_3",
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
			{"Name" : "zext_ln180", "Type" : "None", "Direction" : "I"},
			{"Name" : "c5_conv_layer2_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c5_conv_layer2_map_common", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_178_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter79", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter79", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.dadd_64ns_64ns_64_8_full_dsp_1_U21", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.dadd_64ns_64ns_64_8_full_dsp_1_U23", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.ddiv_64ns_64ns_64_31_no_dsp_1_U24", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.dexp_64ns_64ns_64_30_full_dsp_1_U25", "Parent" : "8"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.dexp_64ns_64ns_64_30_full_dsp_1_U26", "Parent" : "8"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_fprop3_Pipeline_VITIS_LOOP_178_3_fu_258.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadddsub_64ns_64ns_64_8_full_dsp_1_U35", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_31ns_62_2_1_U36", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U37", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_11ns_6ns_16_1_1_U38", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U39", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_11s_11s_11ns_11_4_1_U40", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_fprop3 {
		ap_core {Type I LastRead -1 FirstWrite -1}
		ap_part {Type I LastRead -1 FirstWrite -1}
		ap_parent {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_map_w {Type I LastRead 6 FirstWrite -1}
		s4_pooling_layer1_map_h {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_map_count {Type I LastRead 2 FirstWrite -1}
		s4_pooling_layer1_kernel_w {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_kernel_h {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_kernel_count {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer2_data {Type I LastRead 6 FirstWrite -1}
		s4_pooling_layer2_error {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_b {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_db {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_W {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_dW {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_map_common {Type X LastRead -1 FirstWrite -1}
		c5_conv_layer1_map_w {Type I LastRead 0 FirstWrite -1}
		c5_conv_layer1_map_h {Type I LastRead 0 FirstWrite -1}
		c5_conv_layer1_map_count {Type I LastRead 2 FirstWrite -1}
		c5_conv_layer1_kernel_w {Type I LastRead 4 FirstWrite -1}
		c5_conv_layer1_kernel_h {Type I LastRead 4 FirstWrite -1}
		c5_conv_layer1_kernel_count {Type I LastRead -1 FirstWrite -1}
		c5_conv_layer2_data {Type O LastRead -1 FirstWrite 79}
		c5_conv_layer2_error {Type X LastRead -1 FirstWrite -1}
		c5_conv_layer2_b {Type I LastRead 7 FirstWrite -1}
		c5_conv_layer2_db {Type X LastRead -1 FirstWrite -1}
		c5_conv_layer2_W {Type I LastRead 7 FirstWrite -1}
		c5_conv_layer2_dW {Type X LastRead -1 FirstWrite -1}
		c5_conv_layer2_map_common {Type IO LastRead 13 FirstWrite -1}
		pconnection {Type I LastRead 10 FirstWrite -1}}
	conv_fprop3_Pipeline_1 {
		c5_conv_layer2_map_common {Type O LastRead -1 FirstWrite 0}
		size {Type I LastRead 0 FirstWrite -1}}
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
		sum_out {Type O LastRead -1 FirstWrite 17}}
	conv_fprop3_Pipeline_VITIS_LOOP_178_3 {
		size {Type I LastRead 0 FirstWrite -1}
		zext_ln180 {Type I LastRead 0 FirstWrite -1}
		c5_conv_layer2_data {Type O LastRead -1 FirstWrite 79}
		c5_conv_layer2_map_common {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ap_core { ap_none {  { ap_core in_data 0 8 } } }
	ap_part { ap_none {  { ap_part in_data 0 8 } } }
	ap_parent { ap_none {  { ap_parent in_data 0 8 } } }
	s4_pooling_layer1_map_w { ap_none {  { s4_pooling_layer1_map_w in_data 0 32 } } }
	s4_pooling_layer1_map_h { ap_none {  { s4_pooling_layer1_map_h in_data 0 32 } } }
	s4_pooling_layer1_map_count { ap_none {  { s4_pooling_layer1_map_count in_data 0 32 } } }
	s4_pooling_layer1_kernel_w { ap_none {  { s4_pooling_layer1_kernel_w in_data 0 32 } } }
	s4_pooling_layer1_kernel_h { ap_none {  { s4_pooling_layer1_kernel_h in_data 0 32 } } }
	s4_pooling_layer1_kernel_count { ap_none {  { s4_pooling_layer1_kernel_count in_data 0 32 } } }
	s4_pooling_layer2_data { ap_memory {  { s4_pooling_layer2_data_address0 mem_address 1 17 }  { s4_pooling_layer2_data_ce0 mem_ce 1 1 }  { s4_pooling_layer2_data_q0 mem_dout 0 64 } } }
	s4_pooling_layer2_error { ap_memory {  { s4_pooling_layer2_error_address0 mem_address 1 17 }  { s4_pooling_layer2_error_ce0 mem_ce 1 1 }  { s4_pooling_layer2_error_we0 mem_we 1 1 }  { s4_pooling_layer2_error_d0 mem_din 1 64 }  { s4_pooling_layer2_error_q0 mem_dout 0 64 }  { s4_pooling_layer2_error_address1 MemPortADDR2 1 17 }  { s4_pooling_layer2_error_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_error_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_error_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_error_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_b { ap_memory {  { s4_pooling_layer2_b_address0 mem_address 1 7 }  { s4_pooling_layer2_b_ce0 mem_ce 1 1 }  { s4_pooling_layer2_b_we0 mem_we 1 1 }  { s4_pooling_layer2_b_d0 mem_din 1 64 }  { s4_pooling_layer2_b_q0 mem_dout 0 64 }  { s4_pooling_layer2_b_address1 MemPortADDR2 1 7 }  { s4_pooling_layer2_b_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_b_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_b_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_b_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_db { ap_memory {  { s4_pooling_layer2_db_address0 mem_address 1 7 }  { s4_pooling_layer2_db_ce0 mem_ce 1 1 }  { s4_pooling_layer2_db_we0 mem_we 1 1 }  { s4_pooling_layer2_db_d0 mem_din 1 64 }  { s4_pooling_layer2_db_q0 mem_dout 0 64 }  { s4_pooling_layer2_db_address1 MemPortADDR2 1 7 }  { s4_pooling_layer2_db_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_db_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_db_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_db_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_W { ap_memory {  { s4_pooling_layer2_W_address0 mem_address 1 16 }  { s4_pooling_layer2_W_ce0 mem_ce 1 1 }  { s4_pooling_layer2_W_we0 mem_we 1 1 }  { s4_pooling_layer2_W_d0 mem_din 1 64 }  { s4_pooling_layer2_W_q0 mem_dout 0 64 }  { s4_pooling_layer2_W_address1 MemPortADDR2 1 16 }  { s4_pooling_layer2_W_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_W_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_W_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_W_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_dW { ap_memory {  { s4_pooling_layer2_dW_address0 mem_address 1 16 }  { s4_pooling_layer2_dW_ce0 mem_ce 1 1 }  { s4_pooling_layer2_dW_we0 mem_we 1 1 }  { s4_pooling_layer2_dW_d0 mem_din 1 64 }  { s4_pooling_layer2_dW_q0 mem_dout 0 64 }  { s4_pooling_layer2_dW_address1 MemPortADDR2 1 16 }  { s4_pooling_layer2_dW_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_dW_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_dW_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_dW_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_map_common { ap_memory {  { s4_pooling_layer2_map_common_address0 mem_address 1 10 }  { s4_pooling_layer2_map_common_ce0 mem_ce 1 1 }  { s4_pooling_layer2_map_common_we0 mem_we 1 1 }  { s4_pooling_layer2_map_common_d0 mem_din 1 64 }  { s4_pooling_layer2_map_common_q0 mem_dout 0 64 }  { s4_pooling_layer2_map_common_address1 MemPortADDR2 1 10 }  { s4_pooling_layer2_map_common_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_map_common_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_map_common_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_map_common_q1 MemPortDOUT2 0 64 } } }
	c5_conv_layer1_map_w { ap_none {  { c5_conv_layer1_map_w in_data 0 32 } } }
	c5_conv_layer1_map_h { ap_none {  { c5_conv_layer1_map_h in_data 0 32 } } }
	c5_conv_layer1_map_count { ap_none {  { c5_conv_layer1_map_count in_data 0 32 } } }
	c5_conv_layer1_kernel_w { ap_none {  { c5_conv_layer1_kernel_w in_data 0 32 } } }
	c5_conv_layer1_kernel_h { ap_none {  { c5_conv_layer1_kernel_h in_data 0 32 } } }
	c5_conv_layer1_kernel_count { ap_none {  { c5_conv_layer1_kernel_count in_data 0 32 } } }
	c5_conv_layer2_data { ap_memory {  { c5_conv_layer2_data_address0 mem_address 1 17 }  { c5_conv_layer2_data_ce0 mem_ce 1 1 }  { c5_conv_layer2_data_we0 mem_we 1 1 }  { c5_conv_layer2_data_d0 mem_din 1 64 } } }
	c5_conv_layer2_error { ap_memory {  { c5_conv_layer2_error_address0 mem_address 1 17 }  { c5_conv_layer2_error_ce0 mem_ce 1 1 }  { c5_conv_layer2_error_we0 mem_we 1 1 }  { c5_conv_layer2_error_d0 mem_din 1 64 }  { c5_conv_layer2_error_q0 mem_dout 0 64 }  { c5_conv_layer2_error_address1 MemPortADDR2 1 17 }  { c5_conv_layer2_error_ce1 MemPortCE2 1 1 }  { c5_conv_layer2_error_we1 MemPortWE2 1 1 }  { c5_conv_layer2_error_d1 MemPortDIN2 1 64 }  { c5_conv_layer2_error_q1 MemPortDOUT2 0 64 } } }
	c5_conv_layer2_b { ap_memory {  { c5_conv_layer2_b_address0 mem_address 1 7 }  { c5_conv_layer2_b_ce0 mem_ce 1 1 }  { c5_conv_layer2_b_q0 mem_dout 0 64 } } }
	c5_conv_layer2_db { ap_memory {  { c5_conv_layer2_db_address0 mem_address 1 7 }  { c5_conv_layer2_db_ce0 mem_ce 1 1 }  { c5_conv_layer2_db_we0 mem_we 1 1 }  { c5_conv_layer2_db_d0 mem_din 1 64 }  { c5_conv_layer2_db_q0 mem_dout 0 64 }  { c5_conv_layer2_db_address1 MemPortADDR2 1 7 }  { c5_conv_layer2_db_ce1 MemPortCE2 1 1 }  { c5_conv_layer2_db_we1 MemPortWE2 1 1 }  { c5_conv_layer2_db_d1 MemPortDIN2 1 64 }  { c5_conv_layer2_db_q1 MemPortDOUT2 0 64 } } }
	c5_conv_layer2_W { ap_memory {  { c5_conv_layer2_W_address0 mem_address 1 16 }  { c5_conv_layer2_W_ce0 mem_ce 1 1 }  { c5_conv_layer2_W_q0 mem_dout 0 64 } } }
	c5_conv_layer2_dW { ap_memory {  { c5_conv_layer2_dW_address0 mem_address 1 16 }  { c5_conv_layer2_dW_ce0 mem_ce 1 1 }  { c5_conv_layer2_dW_we0 mem_we 1 1 }  { c5_conv_layer2_dW_d0 mem_din 1 64 }  { c5_conv_layer2_dW_q0 mem_dout 0 64 }  { c5_conv_layer2_dW_address1 MemPortADDR2 1 16 }  { c5_conv_layer2_dW_ce1 MemPortCE2 1 1 }  { c5_conv_layer2_dW_we1 MemPortWE2 1 1 }  { c5_conv_layer2_dW_d1 MemPortDIN2 1 64 }  { c5_conv_layer2_dW_q1 MemPortDOUT2 0 64 } } }
	c5_conv_layer2_map_common { ap_memory {  { c5_conv_layer2_map_common_address0 mem_address 1 10 }  { c5_conv_layer2_map_common_ce0 mem_ce 1 1 }  { c5_conv_layer2_map_common_we0 mem_we 1 1 }  { c5_conv_layer2_map_common_d0 mem_din 1 64 }  { c5_conv_layer2_map_common_q0 mem_dout 0 64 } } }
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
