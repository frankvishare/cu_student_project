set moduleName max_pooling_fprop2
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
set C_modelName {max_pooling_fprop2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict c3_conv_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_W { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_dW { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict c3_conv_layer2_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_data { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 2 }
dict set ap_memory_interface_dict s4_pooling_layer2_error { MEM_WIDTH 64 MEM_SIZE 983040 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_b { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_db { MEM_WIDTH 64 MEM_SIZE 960 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_W { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_dW { MEM_WIDTH 64 MEM_SIZE 384000 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict s4_pooling_layer2_map_common { MEM_WIDTH 64 MEM_SIZE 8192 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ ap_core uint 8 unused  }
	{ ap_part uint 8 unused  }
	{ ap_parent uint 8 unused  }
	{ c3_conv_layer1_map_w int 32 regular {pointer 0}  }
	{ c3_conv_layer1_map_h int 32 unused {pointer 0}  }
	{ c3_conv_layer1_map_count int 32 unused {pointer 0}  }
	{ c3_conv_layer1_kernel_w int 32 unused {pointer 0}  }
	{ c3_conv_layer1_kernel_h int 32 unused {pointer 0}  }
	{ c3_conv_layer1_kernel_count int 32 unused {pointer 0}  }
	{ c3_conv_layer2_data int 64 regular {array 122880 { 1 1 } 1 1 }  }
	{ c3_conv_layer2_error int 64 unused {array 122880 { } 0 1 }  }
	{ c3_conv_layer2_b int 64 unused {array 120 { } 0 1 }  }
	{ c3_conv_layer2_db int 64 unused {array 120 { } 0 1 }  }
	{ c3_conv_layer2_W int 64 unused {array 48000 { } 0 1 }  }
	{ c3_conv_layer2_dW int 64 unused {array 48000 { } 0 1 }  }
	{ c3_conv_layer2_map_common int 64 unused {array 1024 { } 0 1 }  }
	{ s4_pooling_layer1_map_w int 32 regular {pointer 0}  }
	{ s4_pooling_layer1_map_h int 32 regular {pointer 0}  }
	{ s4_pooling_layer1_map_count int 32 regular {pointer 0}  }
	{ s4_pooling_layer1_kernel_w int 32 unused {pointer 0}  }
	{ s4_pooling_layer1_kernel_h int 32 unused {pointer 0}  }
	{ s4_pooling_layer1_kernel_count int 32 unused {pointer 0}  }
	{ s4_pooling_layer2_data int 64 regular {array 122880 { 0 3 } 0 1 }  }
	{ s4_pooling_layer2_error int 64 unused {array 122880 { } 0 1 }  }
	{ s4_pooling_layer2_b int 64 unused {array 120 { } 0 1 }  }
	{ s4_pooling_layer2_db int 64 unused {array 120 { } 0 1 }  }
	{ s4_pooling_layer2_W int 64 unused {array 48000 { } 0 1 }  }
	{ s4_pooling_layer2_dW int 64 unused {array 48000 { } 0 1 }  }
	{ s4_pooling_layer2_map_common int 64 unused {array 1024 { } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "ap_core", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_part", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_parent", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer1_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "c3_conv_layer2_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c3_conv_layer2_b", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c3_conv_layer2_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c3_conv_layer2_W", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c3_conv_layer2_dW", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "c3_conv_layer2_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer1_map_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_map_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_map_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_w", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_h", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer1_kernel_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s4_pooling_layer2_data", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s4_pooling_layer2_error", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_b", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_db", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_W", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_dW", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} , 
 	{ "Name" : "s4_pooling_layer2_map_common", "interface" : "memory", "bitwidth" : 64, "direction" : "NONE"} ]}
# RTL Port declarations: 
set portNum 152
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
	{ c3_conv_layer1_map_w sc_in sc_lv 32 signal 3 } 
	{ c3_conv_layer1_map_h sc_in sc_lv 32 signal 4 } 
	{ c3_conv_layer1_map_count sc_in sc_lv 32 signal 5 } 
	{ c3_conv_layer1_kernel_w sc_in sc_lv 32 signal 6 } 
	{ c3_conv_layer1_kernel_h sc_in sc_lv 32 signal 7 } 
	{ c3_conv_layer1_kernel_count sc_in sc_lv 32 signal 8 } 
	{ c3_conv_layer2_data_address0 sc_out sc_lv 17 signal 9 } 
	{ c3_conv_layer2_data_ce0 sc_out sc_logic 1 signal 9 } 
	{ c3_conv_layer2_data_q0 sc_in sc_lv 64 signal 9 } 
	{ c3_conv_layer2_data_address1 sc_out sc_lv 17 signal 9 } 
	{ c3_conv_layer2_data_ce1 sc_out sc_logic 1 signal 9 } 
	{ c3_conv_layer2_data_q1 sc_in sc_lv 64 signal 9 } 
	{ c3_conv_layer2_error_address0 sc_out sc_lv 17 signal 10 } 
	{ c3_conv_layer2_error_ce0 sc_out sc_logic 1 signal 10 } 
	{ c3_conv_layer2_error_we0 sc_out sc_logic 1 signal 10 } 
	{ c3_conv_layer2_error_d0 sc_out sc_lv 64 signal 10 } 
	{ c3_conv_layer2_error_q0 sc_in sc_lv 64 signal 10 } 
	{ c3_conv_layer2_error_address1 sc_out sc_lv 17 signal 10 } 
	{ c3_conv_layer2_error_ce1 sc_out sc_logic 1 signal 10 } 
	{ c3_conv_layer2_error_we1 sc_out sc_logic 1 signal 10 } 
	{ c3_conv_layer2_error_d1 sc_out sc_lv 64 signal 10 } 
	{ c3_conv_layer2_error_q1 sc_in sc_lv 64 signal 10 } 
	{ c3_conv_layer2_b_address0 sc_out sc_lv 7 signal 11 } 
	{ c3_conv_layer2_b_ce0 sc_out sc_logic 1 signal 11 } 
	{ c3_conv_layer2_b_we0 sc_out sc_logic 1 signal 11 } 
	{ c3_conv_layer2_b_d0 sc_out sc_lv 64 signal 11 } 
	{ c3_conv_layer2_b_q0 sc_in sc_lv 64 signal 11 } 
	{ c3_conv_layer2_b_address1 sc_out sc_lv 7 signal 11 } 
	{ c3_conv_layer2_b_ce1 sc_out sc_logic 1 signal 11 } 
	{ c3_conv_layer2_b_we1 sc_out sc_logic 1 signal 11 } 
	{ c3_conv_layer2_b_d1 sc_out sc_lv 64 signal 11 } 
	{ c3_conv_layer2_b_q1 sc_in sc_lv 64 signal 11 } 
	{ c3_conv_layer2_db_address0 sc_out sc_lv 7 signal 12 } 
	{ c3_conv_layer2_db_ce0 sc_out sc_logic 1 signal 12 } 
	{ c3_conv_layer2_db_we0 sc_out sc_logic 1 signal 12 } 
	{ c3_conv_layer2_db_d0 sc_out sc_lv 64 signal 12 } 
	{ c3_conv_layer2_db_q0 sc_in sc_lv 64 signal 12 } 
	{ c3_conv_layer2_db_address1 sc_out sc_lv 7 signal 12 } 
	{ c3_conv_layer2_db_ce1 sc_out sc_logic 1 signal 12 } 
	{ c3_conv_layer2_db_we1 sc_out sc_logic 1 signal 12 } 
	{ c3_conv_layer2_db_d1 sc_out sc_lv 64 signal 12 } 
	{ c3_conv_layer2_db_q1 sc_in sc_lv 64 signal 12 } 
	{ c3_conv_layer2_W_address0 sc_out sc_lv 16 signal 13 } 
	{ c3_conv_layer2_W_ce0 sc_out sc_logic 1 signal 13 } 
	{ c3_conv_layer2_W_we0 sc_out sc_logic 1 signal 13 } 
	{ c3_conv_layer2_W_d0 sc_out sc_lv 64 signal 13 } 
	{ c3_conv_layer2_W_q0 sc_in sc_lv 64 signal 13 } 
	{ c3_conv_layer2_W_address1 sc_out sc_lv 16 signal 13 } 
	{ c3_conv_layer2_W_ce1 sc_out sc_logic 1 signal 13 } 
	{ c3_conv_layer2_W_we1 sc_out sc_logic 1 signal 13 } 
	{ c3_conv_layer2_W_d1 sc_out sc_lv 64 signal 13 } 
	{ c3_conv_layer2_W_q1 sc_in sc_lv 64 signal 13 } 
	{ c3_conv_layer2_dW_address0 sc_out sc_lv 16 signal 14 } 
	{ c3_conv_layer2_dW_ce0 sc_out sc_logic 1 signal 14 } 
	{ c3_conv_layer2_dW_we0 sc_out sc_logic 1 signal 14 } 
	{ c3_conv_layer2_dW_d0 sc_out sc_lv 64 signal 14 } 
	{ c3_conv_layer2_dW_q0 sc_in sc_lv 64 signal 14 } 
	{ c3_conv_layer2_dW_address1 sc_out sc_lv 16 signal 14 } 
	{ c3_conv_layer2_dW_ce1 sc_out sc_logic 1 signal 14 } 
	{ c3_conv_layer2_dW_we1 sc_out sc_logic 1 signal 14 } 
	{ c3_conv_layer2_dW_d1 sc_out sc_lv 64 signal 14 } 
	{ c3_conv_layer2_dW_q1 sc_in sc_lv 64 signal 14 } 
	{ c3_conv_layer2_map_common_address0 sc_out sc_lv 10 signal 15 } 
	{ c3_conv_layer2_map_common_ce0 sc_out sc_logic 1 signal 15 } 
	{ c3_conv_layer2_map_common_we0 sc_out sc_logic 1 signal 15 } 
	{ c3_conv_layer2_map_common_d0 sc_out sc_lv 64 signal 15 } 
	{ c3_conv_layer2_map_common_q0 sc_in sc_lv 64 signal 15 } 
	{ c3_conv_layer2_map_common_address1 sc_out sc_lv 10 signal 15 } 
	{ c3_conv_layer2_map_common_ce1 sc_out sc_logic 1 signal 15 } 
	{ c3_conv_layer2_map_common_we1 sc_out sc_logic 1 signal 15 } 
	{ c3_conv_layer2_map_common_d1 sc_out sc_lv 64 signal 15 } 
	{ c3_conv_layer2_map_common_q1 sc_in sc_lv 64 signal 15 } 
	{ s4_pooling_layer1_map_w sc_in sc_lv 32 signal 16 } 
	{ s4_pooling_layer1_map_h sc_in sc_lv 32 signal 17 } 
	{ s4_pooling_layer1_map_count sc_in sc_lv 32 signal 18 } 
	{ s4_pooling_layer1_kernel_w sc_in sc_lv 32 signal 19 } 
	{ s4_pooling_layer1_kernel_h sc_in sc_lv 32 signal 20 } 
	{ s4_pooling_layer1_kernel_count sc_in sc_lv 32 signal 21 } 
	{ s4_pooling_layer2_data_address0 sc_out sc_lv 17 signal 22 } 
	{ s4_pooling_layer2_data_ce0 sc_out sc_logic 1 signal 22 } 
	{ s4_pooling_layer2_data_we0 sc_out sc_logic 1 signal 22 } 
	{ s4_pooling_layer2_data_d0 sc_out sc_lv 64 signal 22 } 
	{ s4_pooling_layer2_error_address0 sc_out sc_lv 17 signal 23 } 
	{ s4_pooling_layer2_error_ce0 sc_out sc_logic 1 signal 23 } 
	{ s4_pooling_layer2_error_we0 sc_out sc_logic 1 signal 23 } 
	{ s4_pooling_layer2_error_d0 sc_out sc_lv 64 signal 23 } 
	{ s4_pooling_layer2_error_q0 sc_in sc_lv 64 signal 23 } 
	{ s4_pooling_layer2_error_address1 sc_out sc_lv 17 signal 23 } 
	{ s4_pooling_layer2_error_ce1 sc_out sc_logic 1 signal 23 } 
	{ s4_pooling_layer2_error_we1 sc_out sc_logic 1 signal 23 } 
	{ s4_pooling_layer2_error_d1 sc_out sc_lv 64 signal 23 } 
	{ s4_pooling_layer2_error_q1 sc_in sc_lv 64 signal 23 } 
	{ s4_pooling_layer2_b_address0 sc_out sc_lv 7 signal 24 } 
	{ s4_pooling_layer2_b_ce0 sc_out sc_logic 1 signal 24 } 
	{ s4_pooling_layer2_b_we0 sc_out sc_logic 1 signal 24 } 
	{ s4_pooling_layer2_b_d0 sc_out sc_lv 64 signal 24 } 
	{ s4_pooling_layer2_b_q0 sc_in sc_lv 64 signal 24 } 
	{ s4_pooling_layer2_b_address1 sc_out sc_lv 7 signal 24 } 
	{ s4_pooling_layer2_b_ce1 sc_out sc_logic 1 signal 24 } 
	{ s4_pooling_layer2_b_we1 sc_out sc_logic 1 signal 24 } 
	{ s4_pooling_layer2_b_d1 sc_out sc_lv 64 signal 24 } 
	{ s4_pooling_layer2_b_q1 sc_in sc_lv 64 signal 24 } 
	{ s4_pooling_layer2_db_address0 sc_out sc_lv 7 signal 25 } 
	{ s4_pooling_layer2_db_ce0 sc_out sc_logic 1 signal 25 } 
	{ s4_pooling_layer2_db_we0 sc_out sc_logic 1 signal 25 } 
	{ s4_pooling_layer2_db_d0 sc_out sc_lv 64 signal 25 } 
	{ s4_pooling_layer2_db_q0 sc_in sc_lv 64 signal 25 } 
	{ s4_pooling_layer2_db_address1 sc_out sc_lv 7 signal 25 } 
	{ s4_pooling_layer2_db_ce1 sc_out sc_logic 1 signal 25 } 
	{ s4_pooling_layer2_db_we1 sc_out sc_logic 1 signal 25 } 
	{ s4_pooling_layer2_db_d1 sc_out sc_lv 64 signal 25 } 
	{ s4_pooling_layer2_db_q1 sc_in sc_lv 64 signal 25 } 
	{ s4_pooling_layer2_W_address0 sc_out sc_lv 16 signal 26 } 
	{ s4_pooling_layer2_W_ce0 sc_out sc_logic 1 signal 26 } 
	{ s4_pooling_layer2_W_we0 sc_out sc_logic 1 signal 26 } 
	{ s4_pooling_layer2_W_d0 sc_out sc_lv 64 signal 26 } 
	{ s4_pooling_layer2_W_q0 sc_in sc_lv 64 signal 26 } 
	{ s4_pooling_layer2_W_address1 sc_out sc_lv 16 signal 26 } 
	{ s4_pooling_layer2_W_ce1 sc_out sc_logic 1 signal 26 } 
	{ s4_pooling_layer2_W_we1 sc_out sc_logic 1 signal 26 } 
	{ s4_pooling_layer2_W_d1 sc_out sc_lv 64 signal 26 } 
	{ s4_pooling_layer2_W_q1 sc_in sc_lv 64 signal 26 } 
	{ s4_pooling_layer2_dW_address0 sc_out sc_lv 16 signal 27 } 
	{ s4_pooling_layer2_dW_ce0 sc_out sc_logic 1 signal 27 } 
	{ s4_pooling_layer2_dW_we0 sc_out sc_logic 1 signal 27 } 
	{ s4_pooling_layer2_dW_d0 sc_out sc_lv 64 signal 27 } 
	{ s4_pooling_layer2_dW_q0 sc_in sc_lv 64 signal 27 } 
	{ s4_pooling_layer2_dW_address1 sc_out sc_lv 16 signal 27 } 
	{ s4_pooling_layer2_dW_ce1 sc_out sc_logic 1 signal 27 } 
	{ s4_pooling_layer2_dW_we1 sc_out sc_logic 1 signal 27 } 
	{ s4_pooling_layer2_dW_d1 sc_out sc_lv 64 signal 27 } 
	{ s4_pooling_layer2_dW_q1 sc_in sc_lv 64 signal 27 } 
	{ s4_pooling_layer2_map_common_address0 sc_out sc_lv 10 signal 28 } 
	{ s4_pooling_layer2_map_common_ce0 sc_out sc_logic 1 signal 28 } 
	{ s4_pooling_layer2_map_common_we0 sc_out sc_logic 1 signal 28 } 
	{ s4_pooling_layer2_map_common_d0 sc_out sc_lv 64 signal 28 } 
	{ s4_pooling_layer2_map_common_q0 sc_in sc_lv 64 signal 28 } 
	{ s4_pooling_layer2_map_common_address1 sc_out sc_lv 10 signal 28 } 
	{ s4_pooling_layer2_map_common_ce1 sc_out sc_logic 1 signal 28 } 
	{ s4_pooling_layer2_map_common_we1 sc_out sc_logic 1 signal 28 } 
	{ s4_pooling_layer2_map_common_d1 sc_out sc_lv 64 signal 28 } 
	{ s4_pooling_layer2_map_common_q1 sc_in sc_lv 64 signal 28 } 
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
 	{ "name": "c3_conv_layer1_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_map_w", "role": "default" }} , 
 	{ "name": "c3_conv_layer1_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_map_h", "role": "default" }} , 
 	{ "name": "c3_conv_layer1_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_map_count", "role": "default" }} , 
 	{ "name": "c3_conv_layer1_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_kernel_w", "role": "default" }} , 
 	{ "name": "c3_conv_layer1_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_kernel_h", "role": "default" }} , 
 	{ "name": "c3_conv_layer1_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c3_conv_layer1_kernel_count", "role": "default" }} , 
 	{ "name": "c3_conv_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_data", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_error_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_error_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_error_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_error_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_error_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_error_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_error_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_error_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_error_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_error_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_error", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_b_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_b_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_b_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_b_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_b_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_b_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_b_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_b_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_b_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_b_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_b", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_db_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_db_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_db_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_db_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_db_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_db_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_db_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_db_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_db_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_db_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_db", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_W_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_W_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_W_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_W_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_W_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_W_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_W_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_W_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_W_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_W_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_W", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_dW_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_dW_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_dW_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_dW_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_dW_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_dW_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_dW_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_dW_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_dW_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_dW_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_dW", "role": "q1" }} , 
 	{ "name": "c3_conv_layer2_map_common_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "address0" }} , 
 	{ "name": "c3_conv_layer2_map_common_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "ce0" }} , 
 	{ "name": "c3_conv_layer2_map_common_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "we0" }} , 
 	{ "name": "c3_conv_layer2_map_common_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "d0" }} , 
 	{ "name": "c3_conv_layer2_map_common_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "q0" }} , 
 	{ "name": "c3_conv_layer2_map_common_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "address1" }} , 
 	{ "name": "c3_conv_layer2_map_common_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "ce1" }} , 
 	{ "name": "c3_conv_layer2_map_common_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "we1" }} , 
 	{ "name": "c3_conv_layer2_map_common_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "d1" }} , 
 	{ "name": "c3_conv_layer2_map_common_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "c3_conv_layer2_map_common", "role": "q1" }} , 
 	{ "name": "s4_pooling_layer1_map_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_w", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_map_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_h", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_map_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_map_count", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_w", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_w", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_h", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_h", "role": "default" }} , 
 	{ "name": "s4_pooling_layer1_kernel_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s4_pooling_layer1_kernel_count", "role": "default" }} , 
 	{ "name": "s4_pooling_layer2_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "address0" }} , 
 	{ "name": "s4_pooling_layer2_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "ce0" }} , 
 	{ "name": "s4_pooling_layer2_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "we0" }} , 
 	{ "name": "s4_pooling_layer2_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s4_pooling_layer2_data", "role": "d0" }} , 
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
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "max_pooling_fprop2",
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
			{"Name" : "c3_conv_layer1_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer1_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer1_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer1_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer1_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer1_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer2_data", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4_fu_244", "Port" : "c3_conv_layer2_data", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "c3_conv_layer2_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c3_conv_layer2_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c3_conv_layer2_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c3_conv_layer2_W", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c3_conv_layer2_dW", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c3_conv_layer2_map_common", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer1_map_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_map_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_map_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_h", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer1_kernel_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "s4_pooling_layer2_data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s4_pooling_layer2_error", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_b", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_db", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_W", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_dW", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "s4_pooling_layer2_map_common", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_234_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state78"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state3"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_232_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state3", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state3"], "PreState" : ["ap_ST_fsm_state2"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_230_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "78", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state3"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4_fu_244", "Parent" : "0", "Child" : ["2", "3", "4"],
		"CDFG" : "max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4",
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
			{"Name" : "sext_ln234", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln236", "Type" : "None", "Direction" : "I"},
			{"Name" : "c3_conv_layer2_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "m_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_value_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_237_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage4", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage4_subdone", "QuitState" : "ap_ST_fsm_pp0_stage4", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage4_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4_fu_244.dcmp_64ns_64ns_1_2_no_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4_fu_244.mul_17s_17s_17_1_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4_fu_244.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dsub_64ns_64ns_64_8_full_dsp_1_U14", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_8_full_dsp_1_U15", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_31_no_dsp_1_U16", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_30_full_dsp_1_U17", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dexp_64ns_64ns_64_30_full_dsp_1_U18", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_16_1_1_U19", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_17s_17_1_1_U20", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	max_pooling_fprop2 {
		ap_core {Type I LastRead -1 FirstWrite -1}
		ap_part {Type I LastRead -1 FirstWrite -1}
		ap_parent {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer1_map_w {Type I LastRead 0 FirstWrite -1}
		c3_conv_layer1_map_h {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer1_map_count {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer1_kernel_w {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer1_kernel_h {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer1_kernel_count {Type I LastRead -1 FirstWrite -1}
		c3_conv_layer2_data {Type I LastRead 4 FirstWrite -1}
		c3_conv_layer2_error {Type X LastRead -1 FirstWrite -1}
		c3_conv_layer2_b {Type X LastRead -1 FirstWrite -1}
		c3_conv_layer2_db {Type X LastRead -1 FirstWrite -1}
		c3_conv_layer2_W {Type X LastRead -1 FirstWrite -1}
		c3_conv_layer2_dW {Type X LastRead -1 FirstWrite -1}
		c3_conv_layer2_map_common {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer1_map_w {Type I LastRead 0 FirstWrite -1}
		s4_pooling_layer1_map_h {Type I LastRead 0 FirstWrite -1}
		s4_pooling_layer1_map_count {Type I LastRead 0 FirstWrite -1}
		s4_pooling_layer1_kernel_w {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_kernel_h {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer1_kernel_count {Type I LastRead -1 FirstWrite -1}
		s4_pooling_layer2_data {Type O LastRead -1 FirstWrite 77}
		s4_pooling_layer2_error {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_b {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_db {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_W {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_dW {Type X LastRead -1 FirstWrite -1}
		s4_pooling_layer2_map_common {Type X LastRead -1 FirstWrite -1}}
	max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4 {
		indvars_iv19_cast {Type I LastRead 0 FirstWrite -1}
		max_value {Type I LastRead 0 FirstWrite -1}
		sext_ln234 {Type I LastRead 0 FirstWrite -1}
		empty_7 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		zext_ln236 {Type I LastRead 0 FirstWrite -1}
		c3_conv_layer2_data {Type I LastRead 4 FirstWrite -1}
		m_1 {Type I LastRead 0 FirstWrite -1}
		max_value_1_out {Type O LastRead -1 FirstWrite 4}}}

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
	c3_conv_layer1_map_w { ap_none {  { c3_conv_layer1_map_w in_data 0 32 } } }
	c3_conv_layer1_map_h { ap_none {  { c3_conv_layer1_map_h in_data 0 32 } } }
	c3_conv_layer1_map_count { ap_none {  { c3_conv_layer1_map_count in_data 0 32 } } }
	c3_conv_layer1_kernel_w { ap_none {  { c3_conv_layer1_kernel_w in_data 0 32 } } }
	c3_conv_layer1_kernel_h { ap_none {  { c3_conv_layer1_kernel_h in_data 0 32 } } }
	c3_conv_layer1_kernel_count { ap_none {  { c3_conv_layer1_kernel_count in_data 0 32 } } }
	c3_conv_layer2_data { ap_memory {  { c3_conv_layer2_data_address0 mem_address 1 17 }  { c3_conv_layer2_data_ce0 mem_ce 1 1 }  { c3_conv_layer2_data_q0 mem_dout 0 64 }  { c3_conv_layer2_data_address1 MemPortADDR2 1 17 }  { c3_conv_layer2_data_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_data_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_error { ap_memory {  { c3_conv_layer2_error_address0 mem_address 1 17 }  { c3_conv_layer2_error_ce0 mem_ce 1 1 }  { c3_conv_layer2_error_we0 mem_we 1 1 }  { c3_conv_layer2_error_d0 mem_din 1 64 }  { c3_conv_layer2_error_q0 mem_dout 0 64 }  { c3_conv_layer2_error_address1 MemPortADDR2 1 17 }  { c3_conv_layer2_error_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_error_we1 MemPortWE2 1 1 }  { c3_conv_layer2_error_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_error_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_b { ap_memory {  { c3_conv_layer2_b_address0 mem_address 1 7 }  { c3_conv_layer2_b_ce0 mem_ce 1 1 }  { c3_conv_layer2_b_we0 mem_we 1 1 }  { c3_conv_layer2_b_d0 mem_din 1 64 }  { c3_conv_layer2_b_q0 mem_dout 0 64 }  { c3_conv_layer2_b_address1 MemPortADDR2 1 7 }  { c3_conv_layer2_b_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_b_we1 MemPortWE2 1 1 }  { c3_conv_layer2_b_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_b_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_db { ap_memory {  { c3_conv_layer2_db_address0 mem_address 1 7 }  { c3_conv_layer2_db_ce0 mem_ce 1 1 }  { c3_conv_layer2_db_we0 mem_we 1 1 }  { c3_conv_layer2_db_d0 mem_din 1 64 }  { c3_conv_layer2_db_q0 mem_dout 0 64 }  { c3_conv_layer2_db_address1 MemPortADDR2 1 7 }  { c3_conv_layer2_db_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_db_we1 MemPortWE2 1 1 }  { c3_conv_layer2_db_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_db_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_W { ap_memory {  { c3_conv_layer2_W_address0 mem_address 1 16 }  { c3_conv_layer2_W_ce0 mem_ce 1 1 }  { c3_conv_layer2_W_we0 mem_we 1 1 }  { c3_conv_layer2_W_d0 mem_din 1 64 }  { c3_conv_layer2_W_q0 mem_dout 0 64 }  { c3_conv_layer2_W_address1 MemPortADDR2 1 16 }  { c3_conv_layer2_W_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_W_we1 MemPortWE2 1 1 }  { c3_conv_layer2_W_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_W_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_dW { ap_memory {  { c3_conv_layer2_dW_address0 mem_address 1 16 }  { c3_conv_layer2_dW_ce0 mem_ce 1 1 }  { c3_conv_layer2_dW_we0 mem_we 1 1 }  { c3_conv_layer2_dW_d0 mem_din 1 64 }  { c3_conv_layer2_dW_q0 mem_dout 0 64 }  { c3_conv_layer2_dW_address1 MemPortADDR2 1 16 }  { c3_conv_layer2_dW_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_dW_we1 MemPortWE2 1 1 }  { c3_conv_layer2_dW_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_dW_q1 MemPortDOUT2 0 64 } } }
	c3_conv_layer2_map_common { ap_memory {  { c3_conv_layer2_map_common_address0 mem_address 1 10 }  { c3_conv_layer2_map_common_ce0 mem_ce 1 1 }  { c3_conv_layer2_map_common_we0 mem_we 1 1 }  { c3_conv_layer2_map_common_d0 mem_din 1 64 }  { c3_conv_layer2_map_common_q0 mem_dout 0 64 }  { c3_conv_layer2_map_common_address1 MemPortADDR2 1 10 }  { c3_conv_layer2_map_common_ce1 MemPortCE2 1 1 }  { c3_conv_layer2_map_common_we1 MemPortWE2 1 1 }  { c3_conv_layer2_map_common_d1 MemPortDIN2 1 64 }  { c3_conv_layer2_map_common_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer1_map_w { ap_none {  { s4_pooling_layer1_map_w in_data 0 32 } } }
	s4_pooling_layer1_map_h { ap_none {  { s4_pooling_layer1_map_h in_data 0 32 } } }
	s4_pooling_layer1_map_count { ap_none {  { s4_pooling_layer1_map_count in_data 0 32 } } }
	s4_pooling_layer1_kernel_w { ap_none {  { s4_pooling_layer1_kernel_w in_data 0 32 } } }
	s4_pooling_layer1_kernel_h { ap_none {  { s4_pooling_layer1_kernel_h in_data 0 32 } } }
	s4_pooling_layer1_kernel_count { ap_none {  { s4_pooling_layer1_kernel_count in_data 0 32 } } }
	s4_pooling_layer2_data { ap_memory {  { s4_pooling_layer2_data_address0 mem_address 1 17 }  { s4_pooling_layer2_data_ce0 mem_ce 1 1 }  { s4_pooling_layer2_data_we0 mem_we 1 1 }  { s4_pooling_layer2_data_d0 mem_din 1 64 } } }
	s4_pooling_layer2_error { ap_memory {  { s4_pooling_layer2_error_address0 mem_address 1 17 }  { s4_pooling_layer2_error_ce0 mem_ce 1 1 }  { s4_pooling_layer2_error_we0 mem_we 1 1 }  { s4_pooling_layer2_error_d0 mem_din 1 64 }  { s4_pooling_layer2_error_q0 mem_dout 0 64 }  { s4_pooling_layer2_error_address1 MemPortADDR2 1 17 }  { s4_pooling_layer2_error_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_error_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_error_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_error_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_b { ap_memory {  { s4_pooling_layer2_b_address0 mem_address 1 7 }  { s4_pooling_layer2_b_ce0 mem_ce 1 1 }  { s4_pooling_layer2_b_we0 mem_we 1 1 }  { s4_pooling_layer2_b_d0 mem_din 1 64 }  { s4_pooling_layer2_b_q0 mem_dout 0 64 }  { s4_pooling_layer2_b_address1 MemPortADDR2 1 7 }  { s4_pooling_layer2_b_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_b_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_b_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_b_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_db { ap_memory {  { s4_pooling_layer2_db_address0 mem_address 1 7 }  { s4_pooling_layer2_db_ce0 mem_ce 1 1 }  { s4_pooling_layer2_db_we0 mem_we 1 1 }  { s4_pooling_layer2_db_d0 mem_din 1 64 }  { s4_pooling_layer2_db_q0 mem_dout 0 64 }  { s4_pooling_layer2_db_address1 MemPortADDR2 1 7 }  { s4_pooling_layer2_db_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_db_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_db_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_db_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_W { ap_memory {  { s4_pooling_layer2_W_address0 mem_address 1 16 }  { s4_pooling_layer2_W_ce0 mem_ce 1 1 }  { s4_pooling_layer2_W_we0 mem_we 1 1 }  { s4_pooling_layer2_W_d0 mem_din 1 64 }  { s4_pooling_layer2_W_q0 mem_dout 0 64 }  { s4_pooling_layer2_W_address1 MemPortADDR2 1 16 }  { s4_pooling_layer2_W_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_W_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_W_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_W_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_dW { ap_memory {  { s4_pooling_layer2_dW_address0 mem_address 1 16 }  { s4_pooling_layer2_dW_ce0 mem_ce 1 1 }  { s4_pooling_layer2_dW_we0 mem_we 1 1 }  { s4_pooling_layer2_dW_d0 mem_din 1 64 }  { s4_pooling_layer2_dW_q0 mem_dout 0 64 }  { s4_pooling_layer2_dW_address1 MemPortADDR2 1 16 }  { s4_pooling_layer2_dW_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_dW_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_dW_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_dW_q1 MemPortDOUT2 0 64 } } }
	s4_pooling_layer2_map_common { ap_memory {  { s4_pooling_layer2_map_common_address0 mem_address 1 10 }  { s4_pooling_layer2_map_common_ce0 mem_ce 1 1 }  { s4_pooling_layer2_map_common_we0 mem_we 1 1 }  { s4_pooling_layer2_map_common_d0 mem_din 1 64 }  { s4_pooling_layer2_map_common_q0 mem_dout 0 64 }  { s4_pooling_layer2_map_common_address1 MemPortADDR2 1 10 }  { s4_pooling_layer2_map_common_ce1 MemPortCE2 1 1 }  { s4_pooling_layer2_map_common_we1 MemPortWE2 1 1 }  { s4_pooling_layer2_map_common_d1 MemPortDIN2 1 64 }  { s4_pooling_layer2_map_common_q1 MemPortDOUT2 0 64 } } }
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
