create_project prj -part xcvu19p-fsvb3824-2-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/duludulu/Documents/hls/vitis_batch_generate_rtl/prj/convn_valid_sol/syn/verilog/convn_valid_dadd_64ns_64ns_64_8_full_dsp_1_ip.tcl"
source "/home/duludulu/Documents/hls/vitis_batch_generate_rtl/prj/convn_valid_sol/syn/verilog/convn_valid_dmul_64ns_64ns_64_8_max_dsp_1_ip.tcl"
