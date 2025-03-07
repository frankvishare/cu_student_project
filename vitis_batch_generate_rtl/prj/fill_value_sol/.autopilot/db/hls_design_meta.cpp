#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_core", 8, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ap_part", 8, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("ap_parent", 8, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("value_r", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("fillsize", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("big_array_address0", 14, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("big_array_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("big_array_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("big_array_d0", 32, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("ap_ce", 1, hls_in, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "fill_value";
