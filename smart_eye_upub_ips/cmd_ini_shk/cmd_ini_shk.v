`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/16 14:50:26
// Design Name: 
// Module Name: cmd_ini_shk
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
module cmd_ini_shk #(
    //mode
    parameter MD_SIM_ABLE = 0,
    //number
    //cmd
    parameter WD_CMD_DATA = 32,
    parameter NB_CMD_ORDE = 32,
    //shake bus
    parameter WD_SHK_DATA = 8 ,
    parameter WD_SHK_ADDR = 16,
    //width
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk   ,  
    input           i_sys_resetn,  
    //cmd input
    output   [WD_CMD_DATA*NB_CMD_ORDE-1:0]  s_cmd_dst_arry,
    output                                  s_cmd_dst_updt,
    //shake master
    output                      m_shk_cmd_valid,
    output                      m_shk_cmd_msync,
    output   [WD_SHK_DATA-1:0]  m_shk_cmd_mdata,
    output   [WD_SHK_DATA-1:0]  m_shk_cmd_mdat1,
    output   [WD_SHK_ADDR-1:0]  m_shk_cmd_maddr,
    input                       m_shk_cmd_ready,
    input                       m_shk_cmd_ssync,
    input    [WD_SHK_DATA-1:0]  m_shk_cmd_sdata,
    input    [WD_SHK_ADDR-1:0]  m_shk_cmd_saddr, 
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_cmd_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate

//========================================================
//register and wire to time sequence and combine

//========================================================
//always and assign to drive logic and connect

//========================================================
//module and task to build part of system

//========================================================
//expand and plug-in part with version 

//========================================================
//ila and vio to debug and monitor

endmodule
              
/* end verilog
```           
              
 </details>   
              
## sim        
              
*/            