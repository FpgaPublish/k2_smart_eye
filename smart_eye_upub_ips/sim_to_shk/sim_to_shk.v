`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/11/18 00:31:31
// Design Name: 
// Module Name: sim_to_shk
// Project Name: 
// Target Devices: ZYNQ7010 | XCZU2CG | Kintex7
// Tool Versions: 2021.1 || 2022.2
// Description: 
//         * 
// Dependencies: 
//         * 
// Revision: 0.01 
// Revision 0.01 - File Created
// Additional Comments:
// 
// *******************************************************************************
module sim_to_shk #(
    //mode
    parameter MD_SIM_ABLE = 0,
    //number
    parameter NB_ADDR_INIT = 8,
    parameter NB_DATA_INIT =16,
    parameter NB_SHK_DELAY = 32,
    parameter NB_SHK_SYNC  = 16,
    //shake bus
    parameter WD_SHK_DATA = 16,
    parameter WD_SHK_ADDR = 16,
    //width
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk  ,  
    input           i_sys_resetn,  
    //shake master
    output                      m_shk_sim_valid,
    output                      m_shk_sim_msync,
    output   [WD_SHK_DATA-1:0]  m_shk_sim_mdata,
    output   [WD_SHK_ADDR-1:0]  m_shk_sim_maddr,
    input                       m_shk_sim_ready,
    input                       m_shk_sim_ssync,
    input    [WD_SHK_DATA-1:0]  m_shk_sim_sdata,
    input    [WD_SHK_ADDR-1:0]  m_shk_sim_saddr, 
    //shake slaver
    input                       s_shk_sim_valid,
    input                       s_shk_sim_msync,
    input    [WD_SHK_DATA-1:0]  s_shk_sim_mdata,
    input    [WD_SHK_ADDR-1:0]  s_shk_sim_maddr,
    output                      s_shk_sim_ready,
    output                      s_shk_sim_ssync,
    output   [WD_SHK_DATA-1:0]  s_shk_sim_sdata,
    output   [WD_SHK_ADDR-1:0]  s_shk_sim_saddr,
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_sim_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate

//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// master control
reg [NB_SHK_DELAY-1:0] r_delay_cunt;
// ----------------------------------------------------------
// slaver control
reg r_shk_sim_ready;
//========================================================
//always and assign to drive logic and connect
// ----------------------------------------------------------
// master control
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_delay_cunt <= 1'b0; //
    end
    else if(r_delay_cunt[NB_SHK_DELAY-1])
    begin
        r_delay_cunt <= 1'b0;
    end
    else if(1) //
    begin
        r_delay_cunt <= r_delay_cunt + 1'b1;  //
    end
end
assign m_shk_sim_valid = r_delay_cunt == 1;
assign m_shk_sim_msync = r_delay_cunt == 2 ** NB_SHK_SYNC;
assign m_shk_sim_mdata = NB_ADDR_INIT;
assign m_shk_sim_maddr = NB_DATA_INIT;
// ----------------------------------------------------------
// slaver control
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_sim_ready <= 1'b0; //
    end
    else if(s_shk_sim_valid) //
    begin
        r_shk_sim_ready <= 1'b1;  //
    end
    else 
    begin
        r_shk_sim_ready <= 1'b0;
    end
end
assign s_shk_sim_ready = r_shk_sim_ready;
assign s_shk_sim_ssync = s_shk_sim_msync;
assign s_shk_sim_sdata = s_shk_sim_mdata;
assign s_shk_sim_saddr = s_shk_sim_maddr;


//========================================================
//module and task to build part of system

//========================================================
//expand and plug-in part with version 

//========================================================
//ila and vio to debug and monitor

endmodule