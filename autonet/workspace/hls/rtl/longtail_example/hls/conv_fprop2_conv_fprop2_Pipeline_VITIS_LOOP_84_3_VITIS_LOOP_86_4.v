// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module conv_fprop2_conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        c3_conv_layer_kernel_w_load,
        mul_ln163,
        empty_11,
        empty_12,
        empty_13,
        empty,
        zext_ln88_2,
        s2_pooling_layer_data_address0,
        s2_pooling_layer_data_ce0,
        s2_pooling_layer_data_q0,
        mul_ln88,
        c3_conv_layer_W_address0,
        c3_conv_layer_W_ce0,
        c3_conv_layer_W_q0,
        sum_out,
        sum_out_ap_vld,
        grp_fu_269_p_din0,
        grp_fu_269_p_din1,
        grp_fu_269_p_opcode,
        grp_fu_269_p_dout0,
        grp_fu_269_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [31:0] c3_conv_layer_kernel_w_load;
input  [61:0] mul_ln163;
input  [16:0] empty_11;
input  [16:0] empty_12;
input  [15:0] empty_13;
input  [16:0] empty;
input  [16:0] zext_ln88_2;
output  [16:0] s2_pooling_layer_data_address0;
output   s2_pooling_layer_data_ce0;
input  [63:0] s2_pooling_layer_data_q0;
input  [15:0] mul_ln88;
output  [15:0] c3_conv_layer_W_address0;
output   c3_conv_layer_W_ce0;
input  [63:0] c3_conv_layer_W_q0;
output  [63:0] sum_out;
output   sum_out_ap_vld;
output  [63:0] grp_fu_269_p_din0;
output  [63:0] grp_fu_269_p_din1;
output  [0:0] grp_fu_269_p_opcode;
input  [63:0] grp_fu_269_p_dout0;
output   grp_fu_269_p_ce;

reg ap_idle;
reg sum_out_ap_vld;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
reg    ap_block_pp0_stage6_subdone;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] icmp_ln84_reg_407;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [30:0] m_1_reg_397;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln86_fu_197_p2;
reg   [0:0] icmp_ln86_reg_402;
wire   [0:0] icmp_ln84_fu_202_p2;
reg   [0:0] icmp_ln84_reg_407_pp0_iter1_reg;
reg   [0:0] icmp_ln84_reg_407_pp0_iter2_reg;
wire  signed [15:0] trunc_ln84_fu_230_p1;
reg  signed [15:0] trunc_ln84_reg_411;
wire   [16:0] trunc_ln84_1_fu_234_p1;
reg   [16:0] trunc_ln84_1_reg_416;
wire   [15:0] trunc_ln86_fu_254_p1;
reg   [15:0] trunc_ln86_reg_421;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
(* use_dsp48 = "no" *) wire   [16:0] add_ln88_2_fu_262_p2;
reg   [16:0] add_ln88_2_reg_426;
(* use_dsp48 = "no" *) wire   [16:0] add_ln88_3_fu_278_p2;
reg   [16:0] add_ln88_3_reg_431;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_11001;
(* use_dsp48 = "no" *) wire   [15:0] add_ln88_4_fu_286_p2;
reg   [15:0] add_ln88_4_reg_441;
reg   [63:0] s2_pooling_layer_data_load_reg_446;
reg   [63:0] c3_conv_layer_W_load_reg_456;
wire   [63:0] grp_fu_163_p2;
reg   [63:0] mul19_i_reg_471;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln88_fu_282_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln88_1_fu_290_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] sum_fu_62;
reg   [63:0] ap_sig_allocacmp_sum_load;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage3;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [30:0] m_fu_66;
wire   [30:0] add_ln86_fu_267_p2;
wire    ap_block_pp0_stage1;
reg   [30:0] n_fu_70;
wire   [30:0] select_ln84_1_fu_222_p3;
reg   [61:0] indvar_flatten_fu_74;
wire   [61:0] add_ln84_1_fu_207_p2;
wire    ap_block_pp0_stage3_01001;
reg    s2_pooling_layer_data_ce0_local;
reg    c3_conv_layer_W_ce0_local;
wire   [63:0] grp_fu_163_p0;
wire   [63:0] grp_fu_163_p1;
wire    ap_block_pp0_stage2;
wire   [31:0] zext_ln86_fu_193_p1;
wire   [30:0] add_ln84_fu_216_p2;
wire   [30:0] select_ln84_fu_248_p3;
wire   [16:0] trunc_ln86_1_fu_258_p1;
wire  signed [16:0] add_ln88_3_fu_278_p1;
wire   [16:0] grp_fu_315_p4;
wire    ap_block_pp0_stage5;
wire  signed [15:0] add_ln88_4_fu_286_p1;
wire   [15:0] grp_fu_322_p3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage3_00001;
reg    grp_fu_159_ce;
wire    ap_block_pp0_stage4_11001;
reg    grp_fu_163_ce;
reg    grp_fu_315_ce;
reg    grp_fu_322_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
reg    ap_done_pending_pp0;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage4_subdone;
reg    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_509;
reg    ap_condition_513;
reg    ap_condition_518;
reg    ap_condition_223;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_fu_62 = 64'd0;
#0 m_fu_66 = 31'd0;
#0 n_fu_70 = 31'd0;
#0 indvar_flatten_fu_74 = 62'd0;
#0 ap_done_reg = 1'b0;
end

conv_fprop2_dmul_64ns_64ns_64_8_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_8_max_dsp_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_163_p0),
    .din1(grp_fu_163_p1),
    .ce(grp_fu_163_ce),
    .dout(grp_fu_163_p2)
);

conv_fprop2_ama_addmuladd_17ns_17ns_17s_17ns_17_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .din2_WIDTH( 17 ),
    .din3_WIDTH( 17 ),
    .dout_WIDTH( 17 ))
ama_addmuladd_17ns_17ns_17s_17ns_17_4_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(trunc_ln84_1_reg_416),
    .din1(empty_11),
    .din2(empty_12),
    .din3(add_ln88_2_reg_426),
    .ce(grp_fu_315_ce),
    .dout(grp_fu_315_p4)
);

conv_fprop2_mac_muladd_16s_16s_16ns_16_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
mac_muladd_16s_16s_16ns_16_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(trunc_ln84_reg_411),
    .din1(empty_13),
    .din2(trunc_ln86_reg_421),
    .ce(grp_fu_322_ce),
    .dout(grp_fu_322_p3)
);

conv_fprop2_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        if ((1'b1 == ap_ce)) begin
            ap_CS_fsm <= ap_NS_fsm;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_513)) begin
            indvar_flatten_fu_74 <= 62'd0;
        end else if ((1'b1 == ap_condition_509)) begin
            indvar_flatten_fu_74 <= add_ln84_1_fu_207_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_513)) begin
            m_fu_66 <= 31'd0;
        end else if ((1'b1 == ap_condition_518)) begin
            m_fu_66 <= add_ln86_fu_267_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_513)) begin
            n_fu_70 <= 31'd0;
        end else if ((1'b1 == ap_condition_509)) begin
            n_fu_70 <= select_ln84_1_fu_222_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_513)) begin
            sum_fu_62 <= 64'd0;
        end else if ((1'b1 == ap_condition_223)) begin
            sum_fu_62 <= grp_fu_269_p_dout0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln88_2_reg_426 <= add_ln88_2_fu_262_p2;
        mul19_i_reg_471 <= grp_fu_163_p2;
        trunc_ln86_reg_421 <= trunc_ln86_fu_254_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln88_3_reg_431 <= add_ln88_3_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln88_4_reg_441 <= add_ln88_4_fu_286_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c3_conv_layer_W_load_reg_456 <= c3_conv_layer_W_q0;
        icmp_ln84_reg_407 <= icmp_ln84_fu_202_p2;
        icmp_ln84_reg_407_pp0_iter1_reg <= icmp_ln84_reg_407;
        icmp_ln84_reg_407_pp0_iter2_reg <= icmp_ln84_reg_407_pp0_iter1_reg;
        icmp_ln86_reg_402 <= icmp_ln86_fu_197_p2;
        m_1_reg_397 <= m_fu_66;
        trunc_ln84_1_reg_416 <= trunc_ln84_1_fu_234_p1;
        trunc_ln84_reg_411 <= trunc_ln84_fu_230_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s2_pooling_layer_data_load_reg_446 <= s2_pooling_layer_data_q0;
    end
end

always @ (*) begin
    if (((icmp_ln84_reg_407 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln84_reg_407_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_sum_load = grp_fu_269_p_dout0;
    end else begin
        ap_sig_allocacmp_sum_load = sum_fu_62;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c3_conv_layer_W_ce0_local = 1'b1;
    end else begin
        c3_conv_layer_W_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))))) begin
        grp_fu_159_ce = 1'b1;
    end else begin
        grp_fu_159_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))))) begin
        grp_fu_163_ce = 1'b1;
    end else begin
        grp_fu_163_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))))) begin
        grp_fu_315_ce = 1'b1;
    end else begin
        grp_fu_315_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))))) begin
        grp_fu_322_ce = 1'b1;
    end else begin
        grp_fu_322_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        s2_pooling_layer_data_ce0_local = 1'b1;
    end else begin
        s2_pooling_layer_data_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln84_reg_407_pp0_iter2_reg == 1'd1))) begin
        sum_out_ap_vld = 1'b1;
    end else begin
        sum_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln84_1_fu_207_p2 = (indvar_flatten_fu_74 + 62'd1);

assign add_ln84_fu_216_p2 = (n_fu_70 + 31'd1);

assign add_ln86_fu_267_p2 = (select_ln84_fu_248_p3 + 31'd1);

assign add_ln88_2_fu_262_p2 = (empty + trunc_ln86_1_fu_258_p1);

assign add_ln88_3_fu_278_p1 = grp_fu_315_p4;

assign add_ln88_3_fu_278_p2 = ($signed(zext_ln88_2) + $signed(add_ln88_3_fu_278_p1));

assign add_ln88_4_fu_286_p1 = grp_fu_322_p3;

assign add_ln88_4_fu_286_p2 = ($signed(mul_ln88) + $signed(add_ln88_4_fu_286_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage6_subdone = (1'b0 == ap_ce);
end

always @ (*) begin
    ap_condition_223 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end

always @ (*) begin
    ap_condition_509 = ((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln84_fu_202_p2 == 1'd0));
end

always @ (*) begin
    ap_condition_513 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_518 = ((icmp_ln84_reg_407 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;

assign ap_ready = ap_ready_sig;

assign c3_conv_layer_W_address0 = zext_ln88_1_fu_290_p1;

assign c3_conv_layer_W_ce0 = c3_conv_layer_W_ce0_local;

assign grp_fu_163_p0 = s2_pooling_layer_data_load_reg_446;

assign grp_fu_163_p1 = c3_conv_layer_W_load_reg_456;

assign grp_fu_269_p_ce = grp_fu_159_ce;

assign grp_fu_269_p_din0 = ap_sig_allocacmp_sum_load;

assign grp_fu_269_p_din1 = mul19_i_reg_471;

assign grp_fu_269_p_opcode = 2'd0;

assign icmp_ln84_fu_202_p2 = ((indvar_flatten_fu_74 == mul_ln163) ? 1'b1 : 1'b0);

assign icmp_ln86_fu_197_p2 = (($signed(zext_ln86_fu_193_p1) < $signed(c3_conv_layer_kernel_w_load)) ? 1'b1 : 1'b0);

assign s2_pooling_layer_data_address0 = zext_ln88_fu_282_p1;

assign s2_pooling_layer_data_ce0 = s2_pooling_layer_data_ce0_local;

assign select_ln84_1_fu_222_p3 = ((icmp_ln86_fu_197_p2[0:0] == 1'b1) ? n_fu_70 : add_ln84_fu_216_p2);

assign select_ln84_fu_248_p3 = ((icmp_ln86_reg_402[0:0] == 1'b1) ? m_1_reg_397 : 31'd0);

assign sum_out = sum_fu_62;

assign trunc_ln84_1_fu_234_p1 = select_ln84_1_fu_222_p3[16:0];

assign trunc_ln84_fu_230_p1 = select_ln84_1_fu_222_p3[15:0];

assign trunc_ln86_1_fu_258_p1 = select_ln84_fu_248_p3[16:0];

assign trunc_ln86_fu_254_p1 = select_ln84_fu_248_p3[15:0];

assign zext_ln86_fu_193_p1 = m_fu_66;

assign zext_ln88_1_fu_290_p1 = add_ln88_4_reg_441;

assign zext_ln88_fu_282_p1 = add_ln88_3_reg_431;

endmodule //conv_fprop2_conv_fprop2_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4
