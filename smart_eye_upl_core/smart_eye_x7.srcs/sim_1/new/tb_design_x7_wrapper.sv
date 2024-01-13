`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2023 04:06:29 PM
// Design Name: 
// Module Name: tb_design_x7_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
//public file
`include "./public_file/public_macro.svh"
`include "./public_file/public_files.svh"
//assert define 
`include "./lib_assert/cmd_stream_assert.sv"
module tb_design_x7_wrapper(

    );
// ====================================================================
// base signal
// ----------------------------------------------------------
// clock region
reg i_port_clk_1 = 0;
reg i_port_clk_2 = 0;
reg s_sensor_src_0_pclk = 0;
//always #(1000 / 24 / 2) i_port_clk_1 = ~i_port_clk_1; //24M
always #(20.833) i_port_clk_1 = ~i_port_clk_1; //24M
always #(1000 / 25 / 2) i_port_clk_2 = ~i_port_clk_2;
// always #(1000 / 74.25 / 2) s_sensor_src_0_pclk = ~s_sensor_src_0_pclk;
always #(6.734) s_sensor_src_0_pclk = ~s_sensor_src_0_pclk;
wire w_sys_resetn;
wire w_sys_clk;
assign w_sys_resetn = u_design_x7_wrapper.design_x7_i.clock_mdle.clk_wiz_0.locked;
assign w_sys_clk    = u_design_x7_wrapper.design_x7_i.clock_mdle.clk_wiz_0.clk_out1;
// ==========================================================
// param sim set
defparam u_design_x7_wrapper.design_x7_i.cmd_mdle.cmd_rd_shk_0.inst.MD_SIM_ABLE = 1;
defparam u_design_x7_wrapper.design_x7_i.iic_mdle.shk_to_iic_0.inst.NB_SCL_PER = 1000;
defparam u_design_x7_wrapper.design_x7_i.init_start_0.inst.NB_INIT_TIME = 10;
defparam u_design_x7_wrapper.design_x7_i.cmos_mdle.sensor_to_video_0.inst.NB_CLK_FRE = 100000;
// ==================================================================== 
// interface connect
// --------------------------------------------------------------------
// uart interface
uart_interface uart_itf();
assign uart_itf.clk = i_port_clk_1;
// --------------------------------------------------------------------
// IIC interface
iic_interface iic_itf();
assign iic_itf.clk = i_port_clk_1;
// --------------------------------------------------------------------
// sensor interface
sensor_interface sensor_itf();
assign sensor_itf.pclk = s_sensor_src_0_pclk;
// ====================================================================
// scene sim
// --------------------------------------------------------------------
// cmd sim

initial 
begin
    `ifdef MD_CMD_STREAM_CHECK
    //cmd scene run 
    cmd_scene cmd_sce;
    cmd_sce = new(
        uart_itf,
        iic_itf
    );
    cmd_sce.run_write_uart_cmd;
    //release all scene
    cmd_sce = null;
    `endif
    
end
initial 
begin
    `ifdef MD_CAMERA_STREAM_CHECK
    //cmd scene run 
    camera_scene camera_sce;
    camera_sce = new(
        sensor_itf
    );
    camera_sce.run_cmos_camera;
    //release all scene
    camera_sce = null;
    `endif
    
end
// ==========================================================
// black box sim connect
wire init_calib_complete_0;
wire [13:0]DDR3_0_addr;
wire [2:0]DDR3_0_ba;
wire DDR3_0_cas_n;
wire [0:0]DDR3_0_ck_n;
wire [0:0]DDR3_0_ck_p;
wire [0:0]DDR3_0_cke;
wire [0:0]DDR3_0_cs_n;
wire [1:0]DDR3_0_dm;
wire [15:0]DDR3_0_dq;
wire [1:0]DDR3_0_dqs_n;
wire [1:0]DDR3_0_dqs_p;
wire [0:0]DDR3_0_odt;
wire DDR3_0_ras_n;
wire DDR3_0_reset_n;
wire DDR3_0_we_n;
assign init_calib_complete_0 = u_design_x7_wrapper.design_x7_i.cmos_mdle.mig_7series_0.init_calib_complete;
// ====================================================================
// DUT to sim
design_x7_wrapper u_design_x7_wrapper(
    .i_port_clk_1        ( i_port_clk_1        ),
    .i_port_clk_2        ( i_port_clk_2        ),
    .s_sensor_src_0_pclk ( s_sensor_src_0_pclk ),
    .s_sensor_src_0_data ( sensor_itf.data     ),
    .s_sensor_src_0_href ( sensor_itf.href     ),
    .s_sensor_src_0_vsyn ( sensor_itf.vsyn     ),
    .s_sensor_src_0_xclk ( sensor_itf.xclk     ),
    .DDR3_0_addr         ( DDR3_0_addr         ),
    .DDR3_0_ba           ( DDR3_0_ba           ),
    .DDR3_0_cas_n        ( DDR3_0_cas_n        ),
    .DDR3_0_ck_n         ( DDR3_0_ck_n         ),
    .DDR3_0_ck_p         ( DDR3_0_ck_p         ),
    .DDR3_0_cke          ( DDR3_0_cke          ),
    .DDR3_0_cs_n         ( DDR3_0_cs_n         ),
    .DDR3_0_dm           ( DDR3_0_dm           ),
    .DDR3_0_dq           ( DDR3_0_dq           ),
    .DDR3_0_dqs_n        ( DDR3_0_dqs_n        ),
    .DDR3_0_dqs_p        ( DDR3_0_dqs_p        ),
    .DDR3_0_odt          ( DDR3_0_odt          ),
    .DDR3_0_ras_n        ( DDR3_0_ras_n        ),
    .DDR3_0_reset_n      ( DDR3_0_reset_n      ),
    .DDR3_0_we_n         ( DDR3_0_we_n         ),
    .m_piic_dst_0_scl  ( iic_itf.scl      ),
    .m_piic_dst_0_sda  ( iic_itf.sda      ),
    .s_port_uart_0_mrx ( uart_itf.mrx     ),
    .s_port_uart_0_mtx ( uart_itf.mtx     )
);
sim_tb_top u_sim_tb_top(
    .init_calib_complete_0 ( init_calib_complete_0 ),
    .ddr3_addr_fpga        ( DDR3_0_addr           ),
    .ddr3_ba_fpga          ( DDR3_0_ba             ),
    .ddr3_cas_n_fpga       ( DDR3_0_cas_n          ),
    .ddr3_ck_n_fpga        ( DDR3_0_ck_n           ),
    .ddr3_ck_p_fpga        ( DDR3_0_ck_p           ),
    .ddr3_cke_fpga         ( DDR3_0_cke            ),
    .ddr3_cs_n_fpga        ( DDR3_0_cs_n           ),
    .ddr3_dm_fpga          ( DDR3_0_dm             ),
    .ddr3_dq_fpga          ( DDR3_0_dq             ),
    .ddr3_dqs_n_fpga       ( DDR3_0_dqs_n          ),
    .ddr3_dqs_p_fpga       ( DDR3_0_dqs_p          ),
    .ddr3_odt_fpga         ( DDR3_0_odt            ),
    .ddr3_ras_n_fpga       ( DDR3_0_ras_n          ),
    .DDR3_reset_n          ( DDR3_0_reset_n        ),
    .ddr3_we_n_fpga        ( DDR3_0_we_n           )
);

// ====================================================================
// assertion and check
bind tb_design_x7_wrapper cmd_stream_assert u_cmd_stream_assert(
    w_sys_clk,
    w_sys_resetn,
    uart_itf 
);

endmodule
