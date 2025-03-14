// ==============================================================
// Generated by Vitis HLS v2024.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module max_pooling_fprop2_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        indvars_iv19_cast,
        max_value,
        sext_ln234,
        empty_7,
        empty,
        zext_ln236,
        c3_conv_layer2_data_address0,
        c3_conv_layer2_data_ce0,
        c3_conv_layer2_data_q0,
        c3_conv_layer2_data_address1,
        c3_conv_layer2_data_ce1,
        c3_conv_layer2_data_q1,
        m_1,
        max_value_1_out,
        max_value_1_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [31:0] indvars_iv19_cast;
input  [63:0] max_value;
input  [31:0] sext_ln234;
input  [16:0] empty_7;
input  [16:0] empty;
input  [16:0] zext_ln236;
output  [16:0] c3_conv_layer2_data_address0;
output   c3_conv_layer2_data_ce0;
input  [63:0] c3_conv_layer2_data_q0;
output  [16:0] c3_conv_layer2_data_address1;
output   c3_conv_layer2_data_ce1;
input  [63:0] c3_conv_layer2_data_q1;
input  [16:0] m_1;
output  [63:0] max_value_1_out;
output   max_value_1_out_ap_vld;

reg ap_idle;
reg max_value_1_out_ap_vld;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
reg    ap_block_pp0_stage4_subdone;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] icmp_ln237_reg_445;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
reg    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln234_cast_fu_148_p1;
reg  signed [63:0] sext_ln234_cast_reg_435;
reg   [63:0] n_1_reg_440;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln237_fu_169_p2;
wire   [16:0] empty_15_fu_178_p2;
reg   [16:0] empty_15_reg_449;
wire   [16:0] add_ln241_2_fu_187_p2;
reg   [16:0] add_ln241_2_reg_455;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [16:0] add_ln241_3_fu_196_p2;
reg   [16:0] add_ln241_3_reg_460;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c3_conv_layer2_data_load_reg_475;
wire    ap_block_pp0_stage4_11001;
reg   [10:0] tmp_1_reg_480;
wire   [51:0] trunc_ln241_1_fu_219_p1;
reg   [51:0] trunc_ln241_1_reg_485;
reg   [63:0] c3_conv_layer2_data_load_1_reg_490;
reg   [10:0] tmp_4_reg_495;
wire   [51:0] trunc_ln241_3_fu_233_p1;
reg   [51:0] trunc_ln241_3_reg_500;
reg   [63:0] max_value_1_load_1_reg_505;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln241_fu_241_p1;
reg   [63:0] bitcast_ln241_reg_511;
wire   [0:0] icmp_ln241_fu_263_p2;
reg   [0:0] icmp_ln241_reg_517;
wire   [0:0] icmp_ln241_1_fu_269_p2;
reg   [0:0] icmp_ln241_1_reg_522;
wire   [0:0] icmp_ln241_2_fu_275_p2;
reg   [0:0] icmp_ln241_2_reg_527;
wire   [0:0] icmp_ln241_3_fu_280_p2;
reg   [0:0] icmp_ln241_3_reg_532;
wire   [0:0] icmp_ln241_6_fu_285_p2;
reg   [0:0] icmp_ln241_6_reg_537;
wire   [0:0] icmp_ln241_7_fu_290_p2;
reg   [0:0] icmp_ln241_7_reg_542;
wire   [0:0] grp_fu_144_p2;
reg   [0:0] tmp_2_reg_547;
wire   [63:0] max_value_2_fu_324_p3;
reg   [63:0] max_value_2_reg_552;
wire   [63:0] bitcast_ln241_1_fu_330_p1;
reg   [63:0] bitcast_ln241_1_reg_559;
reg   [0:0] tmp_5_reg_565;
wire   [63:0] zext_ln241_fu_201_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln241_1_fu_205_p1;
reg   [63:0] max_value_1_fu_62;
wire   [63:0] max_value_3_fu_384_p3;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
wire    ap_block_pp0_stage5;
reg   [63:0] n_fu_66;
wire   [63:0] add_ln237_fu_295_p2;
wire  signed [63:0] indvars_iv19_cast_cast_fu_152_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage4_01001;
reg    c3_conv_layer2_data_ce1_local;
reg    c3_conv_layer2_data_ce0_local;
reg   [63:0] grp_fu_144_p0;
reg   [63:0] grp_fu_144_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage0;
wire  signed [16:0] empty_15_fu_178_p0;
wire   [16:0] add_ln241_fu_183_p2;
wire   [16:0] add_ln241_1_fu_192_p2;
wire   [63:0] bitcast_ln241_2_fu_245_p1;
wire   [10:0] tmp_fu_249_p4;
wire   [51:0] trunc_ln241_fu_259_p1;
wire   [0:0] or_ln241_1_fu_309_p2;
wire   [0:0] and_ln241_fu_313_p2;
wire   [0:0] or_ln241_fu_305_p2;
wire   [0:0] and_ln241_1_fu_318_p2;
wire   [63:0] bitcast_ln241_3_fu_334_p1;
wire   [10:0] tmp_3_fu_337_p4;
wire   [51:0] trunc_ln241_2_fu_347_p1;
wire   [0:0] icmp_ln241_5_fu_357_p2;
wire   [0:0] icmp_ln241_4_fu_351_p2;
wire   [0:0] or_ln241_2_fu_363_p2;
wire   [0:0] or_ln241_3_fu_369_p2;
wire   [0:0] and_ln241_2_fu_373_p2;
wire   [0:0] and_ln241_3_fu_379_p2;
reg    grp_fu_144_ce;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
reg    ap_block_pp0_stage1_subdone;
reg    ap_block_pp0_stage2_subdone;
reg    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_218;
reg    ap_condition_517;
reg    ap_condition_522;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 max_value_1_fu_62 = 64'd0;
#0 n_fu_66 = 64'd0;
#0 ap_done_reg = 1'b0;
end

max_pooling_fprop2_dcmp_64ns_64ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_144_p0),
    .din1(grp_fu_144_p1),
    .ce(grp_fu_144_ce),
    .opcode(5'd3),
    .dout(grp_fu_144_p2)
);

max_pooling_fprop2_mul_17s_17s_17_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 17 ),
    .din1_WIDTH( 17 ),
    .dout_WIDTH( 17 ))
mul_17s_17s_17_1_1_U2(
    .din0(empty_15_fu_178_p0),
    .din1(empty_7),
    .dout(empty_15_fu_178_p2)
);

max_pooling_fprop2_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready_sig),
    .ap_done(ap_done_sig),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_517)) begin
            max_value_1_fu_62 <= max_value;
        end else if ((1'b1 == ap_condition_218)) begin
            max_value_1_fu_62 <= max_value_3_fu_384_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        if ((1'b1 == ap_condition_517)) begin
            n_fu_66 <= indvars_iv19_cast_cast_fu_152_p1;
        end else if ((1'b1 == ap_condition_522)) begin
            n_fu_66 <= add_ln237_fu_295_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln241_2_reg_455 <= add_ln241_2_fu_187_p2;
        add_ln241_3_reg_460 <= add_ln241_3_fu_196_p2;
        bitcast_ln241_1_reg_559 <= bitcast_ln241_1_fu_330_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b1 == ap_ce))) begin
        bitcast_ln241_reg_511 <= bitcast_ln241_fu_241_p1;
        icmp_ln241_1_reg_522 <= icmp_ln241_1_fu_269_p2;
        icmp_ln241_2_reg_527 <= icmp_ln241_2_fu_275_p2;
        icmp_ln241_3_reg_532 <= icmp_ln241_3_fu_280_p2;
        icmp_ln241_6_reg_537 <= icmp_ln241_6_fu_285_p2;
        icmp_ln241_7_reg_542 <= icmp_ln241_7_fu_290_p2;
        icmp_ln241_reg_517 <= icmp_ln241_fu_263_p2;
        max_value_1_load_1_reg_505 <= max_value_1_fu_62;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        c3_conv_layer2_data_load_1_reg_490 <= c3_conv_layer2_data_q0;
        c3_conv_layer2_data_load_reg_475 <= c3_conv_layer2_data_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_15_reg_449 <= empty_15_fu_178_p2;
        icmp_ln237_reg_445 <= icmp_ln237_fu_169_p2;
        max_value_2_reg_552 <= max_value_2_fu_324_p3;
        n_1_reg_440 <= n_fu_66;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sext_ln234_cast_reg_435 <= sext_ln234_cast_fu_148_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_1_reg_480 <= {{c3_conv_layer2_data_q1[62:52]}};
        tmp_4_reg_495 <= {{c3_conv_layer2_data_q0[62:52]}};
        trunc_ln241_1_reg_485 <= trunc_ln241_1_fu_219_p1;
        trunc_ln241_3_reg_500 <= trunc_ln241_3_fu_233_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_2_reg_547 <= grp_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_5_reg_565 <= grp_fu_144_p2;
    end
end

always @ (*) begin
    if (((icmp_ln237_reg_445 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c3_conv_layer2_data_ce0_local = 1'b1;
    end else begin
        c3_conv_layer2_data_ce0_local = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c3_conv_layer2_data_ce1_local = 1'b1;
    end else begin
        c3_conv_layer2_data_ce1_local = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))))) begin
        grp_fu_144_ce = 1'b1;
    end else begin
        grp_fu_144_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_144_p0 = max_value_2_reg_552;
    end else if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_144_p0 = max_value_1_fu_62;
    end else begin
        grp_fu_144_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_144_p1 = bitcast_ln241_1_fu_330_p1;
    end else if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_144_p1 = bitcast_ln241_fu_241_p1;
    end else begin
        grp_fu_144_p1 = 'bx;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln237_reg_445 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        max_value_1_out_ap_vld = 1'b1;
    end else begin
        max_value_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln237_fu_295_p2 = (n_1_reg_440 + 64'd1);

assign add_ln241_1_fu_192_p2 = (empty_15_reg_449 + m_1);

assign add_ln241_2_fu_187_p2 = (zext_ln236 + add_ln241_fu_183_p2);

assign add_ln241_3_fu_196_p2 = (zext_ln236 + add_ln241_1_fu_192_p2);

assign add_ln241_fu_183_p2 = (empty_15_reg_449 + empty);

assign and_ln241_1_fu_318_p2 = (or_ln241_fu_305_p2 & and_ln241_fu_313_p2);

assign and_ln241_2_fu_373_p2 = (or_ln241_3_fu_369_p2 & or_ln241_2_fu_363_p2);

assign and_ln241_3_fu_379_p2 = (tmp_5_reg_565 & and_ln241_2_fu_373_p2);

assign and_ln241_fu_313_p2 = (tmp_2_reg_547 & or_ln241_1_fu_309_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];

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

assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage2_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage3_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage4_subdone = (1'b0 == ap_ce);
end

assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage5_subdone = (1'b0 == ap_ce);
end

always @ (*) begin
    ap_condition_218 = ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4));
end

always @ (*) begin
    ap_condition_517 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

always @ (*) begin
    ap_condition_522 = ((icmp_ln237_reg_445 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5));
end

assign ap_done = ap_done_sig;

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;

assign ap_ready = ap_ready_sig;

assign bitcast_ln241_1_fu_330_p1 = c3_conv_layer2_data_load_1_reg_490;

assign bitcast_ln241_2_fu_245_p1 = max_value_1_fu_62;

assign bitcast_ln241_3_fu_334_p1 = max_value_2_reg_552;

assign bitcast_ln241_fu_241_p1 = c3_conv_layer2_data_load_reg_475;

assign c3_conv_layer2_data_address0 = zext_ln241_1_fu_205_p1;

assign c3_conv_layer2_data_address1 = zext_ln241_fu_201_p1;

assign c3_conv_layer2_data_ce0 = c3_conv_layer2_data_ce0_local;

assign c3_conv_layer2_data_ce1 = c3_conv_layer2_data_ce1_local;

assign empty_15_fu_178_p0 = n_fu_66[16:0];

assign icmp_ln237_fu_169_p2 = ((n_fu_66 == sext_ln234_cast_reg_435) ? 1'b1 : 1'b0);

assign icmp_ln241_1_fu_269_p2 = ((trunc_ln241_fu_259_p1 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln241_2_fu_275_p2 = ((tmp_1_reg_480 != 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln241_3_fu_280_p2 = ((trunc_ln241_1_reg_485 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln241_4_fu_351_p2 = ((tmp_3_fu_337_p4 != 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln241_5_fu_357_p2 = ((trunc_ln241_2_fu_347_p1 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln241_6_fu_285_p2 = ((tmp_4_reg_495 != 11'd2047) ? 1'b1 : 1'b0);

assign icmp_ln241_7_fu_290_p2 = ((trunc_ln241_3_reg_500 == 52'd0) ? 1'b1 : 1'b0);

assign icmp_ln241_fu_263_p2 = ((tmp_fu_249_p4 != 11'd2047) ? 1'b1 : 1'b0);

assign indvars_iv19_cast_cast_fu_152_p1 = $signed(indvars_iv19_cast);

assign max_value_1_out = max_value_1_fu_62;

assign max_value_2_fu_324_p3 = ((and_ln241_1_fu_318_p2[0:0] == 1'b1) ? max_value_1_load_1_reg_505 : bitcast_ln241_reg_511);

assign max_value_3_fu_384_p3 = ((and_ln241_3_fu_379_p2[0:0] == 1'b1) ? max_value_2_reg_552 : bitcast_ln241_1_reg_559);

assign or_ln241_1_fu_309_p2 = (icmp_ln241_3_reg_532 | icmp_ln241_2_reg_527);

assign or_ln241_2_fu_363_p2 = (icmp_ln241_5_fu_357_p2 | icmp_ln241_4_fu_351_p2);

assign or_ln241_3_fu_369_p2 = (icmp_ln241_7_reg_542 | icmp_ln241_6_reg_537);

assign or_ln241_fu_305_p2 = (icmp_ln241_reg_517 | icmp_ln241_1_reg_522);

assign sext_ln234_cast_fu_148_p1 = $signed(sext_ln234);

assign tmp_3_fu_337_p4 = {{bitcast_ln241_3_fu_334_p1[62:52]}};

assign tmp_fu_249_p4 = {{bitcast_ln241_2_fu_245_p1[62:52]}};

assign trunc_ln241_1_fu_219_p1 = c3_conv_layer2_data_q1[51:0];

assign trunc_ln241_2_fu_347_p1 = bitcast_ln241_3_fu_334_p1[51:0];

assign trunc_ln241_3_fu_233_p1 = c3_conv_layer2_data_q0[51:0];

assign trunc_ln241_fu_259_p1 = bitcast_ln241_2_fu_245_p1[51:0];

assign zext_ln241_1_fu_205_p1 = add_ln241_3_reg_460;

assign zext_ln241_fu_201_p1 = add_ln241_2_reg_455;

endmodule //max_pooling_fprop2_max_pooling_fprop2_Pipeline_VITIS_LOOP_237_4
