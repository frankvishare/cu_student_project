# This script segment is generated automatically by AutoPilot

set name conv_fprop2_dadddsub_64ns_64ns_64_8_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dadd} IMPL {fulldsp} LATENCY 7 ALLOW_PRAGMA 1
}


set name conv_fprop2_mul_31ns_31ns_62_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name conv_fprop2_mul_32s_32s_32_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name conv_fprop2_mul_11ns_6ns_16_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name conv_fprop2_mul_10s_10s_10_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler conv_fprop2_mac_muladd_11s_11s_11ns_11_4_1 BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name s2_pooling_layer2_data \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename s2_pooling_layer2_data \
    op interface \
    ports { s2_pooling_layer2_data_address0 { O 17 vector } s2_pooling_layer2_data_ce0 { O 1 bit } s2_pooling_layer2_data_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's2_pooling_layer2_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name c3_conv_layer2_data \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename c3_conv_layer2_data \
    op interface \
    ports { c3_conv_layer2_data_address0 { O 17 vector } c3_conv_layer2_data_ce0 { O 1 bit } c3_conv_layer2_data_we0 { O 1 bit } c3_conv_layer2_data_d0 { O 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c3_conv_layer2_data'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name c3_conv_layer2_b \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename c3_conv_layer2_b \
    op interface \
    ports { c3_conv_layer2_b_address0 { O 7 vector } c3_conv_layer2_b_ce0 { O 1 bit } c3_conv_layer2_b_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c3_conv_layer2_b'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name c3_conv_layer2_W \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename c3_conv_layer2_W \
    op interface \
    ports { c3_conv_layer2_W_address0 { O 16 vector } c3_conv_layer2_W_ce0 { O 1 bit } c3_conv_layer2_W_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c3_conv_layer2_W'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name c3_conv_layer2_map_common \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename c3_conv_layer2_map_common \
    op interface \
    ports { c3_conv_layer2_map_common_address0 { O 10 vector } c3_conv_layer2_map_common_ce0 { O 1 bit } c3_conv_layer2_map_common_we0 { O 1 bit } c3_conv_layer2_map_common_d0 { O 64 vector } c3_conv_layer2_map_common_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'c3_conv_layer2_map_common'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name pconnection \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename pconnection \
    op interface \
    ports { pconnection_address0 { O 7 vector } pconnection_ce0 { O 1 bit } pconnection_q0 { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'pconnection'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name s2_pooling_layer1_map_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s2_pooling_layer1_map_w \
    op interface \
    ports { s2_pooling_layer1_map_w { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name s2_pooling_layer1_map_count \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s2_pooling_layer1_map_count \
    op interface \
    ports { s2_pooling_layer1_map_count { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name c3_conv_layer1_map_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c3_conv_layer1_map_w \
    op interface \
    ports { c3_conv_layer1_map_w { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name c3_conv_layer1_map_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c3_conv_layer1_map_h \
    op interface \
    ports { c3_conv_layer1_map_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name c3_conv_layer1_map_count \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c3_conv_layer1_map_count \
    op interface \
    ports { c3_conv_layer1_map_count { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name c3_conv_layer1_kernel_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c3_conv_layer1_kernel_w \
    op interface \
    ports { c3_conv_layer1_kernel_w { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name c3_conv_layer1_kernel_h \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c3_conv_layer1_kernel_h \
    op interface \
    ports { c3_conv_layer1_kernel_h { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


