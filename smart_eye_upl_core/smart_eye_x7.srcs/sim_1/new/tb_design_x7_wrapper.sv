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
//always #(1000 / 24 / 2) i_port_clk_1 = ~i_port_clk_1; //24M
always #(20.833) i_port_clk_1 = ~i_port_clk_1; //24M
wire w_sys_resetn;
wire w_sys_clk;
assign w_sys_resetn = u_design_x7_wrapper.design_x7_i.clock_mdle.clk_wiz_0.locked;
assign w_sys_clk    = u_design_x7_wrapper.design_x7_i.clock_mdle.clk_wiz_0.clk_out1;
// ==========================================================
// param sim set
defparam u_design_x7_wrapper.design_x7_i.cmd_mdle.cmd_rd_shk_0.inst.MD_SIM_ABLE = 1;
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


// ====================================================================
// DUT to sim
design_x7_wrapper u_design_x7_wrapper(
    .i_port_clk_1      ( i_port_clk_1     ),
    .m_port_iic_0_scl  ( iic_itf.scl      ),
    .m_port_iic_0_sda  ( iic_itf.sda      ),
    .s_port_uart_0_mrx ( uart_itf.mrx     ),
    .s_port_uart_0_mtx ( uart_itf.mtx     )
);
// ====================================================================
// assertion and check
bind tb_design_x7_wrapper cmd_stream_assert u_cmd_stream_assert(
    w_sys_clk,
    w_sys_resetn,
    uart_itf 
);

endmodule
