`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/11/04 01:18:11
// Design Name: 
// Module Name: shk_to_spi
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

module shk_to_spi #(
    //mode
    parameter MD_SIM_ABLE = 0,
    //number
    //shake bus
    parameter WD_SHK_DATA = 8,
    parameter WD_SHK_ADDR = 8,
    //spi data width 
    parameter WD_SPI_DATA = 8 ,
    //width
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk  ,  
    input           i_sys_resetn,  
    //shake slaver
    input                       s_shk_spi_valid,
    input                       s_shk_spi_msync,
    input    [WD_SHK_DATA-1:0]  s_shk_spi_mdata,
    input    [WD_SHK_ADDR-1:0]  s_shk_spi_maddr,
    output                      s_shk_spi_ready,
    output                      s_shk_spi_ssync,
    output   [WD_SHK_DATA-1:0]  s_shk_spi_sdata,
    output   [WD_SHK_ADDR-1:0]  s_shk_spi_saddr,
    
    //spi interface
    output                      m_port_spi_sclk,
    output   [WD_SPI_DATA-1:0]  m_port_spi_dout,
    input                       m_port_spi_sdin,
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_shk_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate

//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// shake slaver
reg                    r_shk_spi_valid;
wire                   w_shk_spi_valid_pos;
reg                    r_shk_spi_msync;
reg [WD_SHK_DATA-1:0]  r_shk_spi_mdata;
reg [WD_SHK_ADDR-1:0]  r_shk_spi_maddr;

//========================================================
//always and assign to drive logic and connect
// ----------------------------------------------------------
// shake slaver
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_spi_valid <= 1'b0; //
    end
    else if(1) //
    begin
        r_shk_spi_valid <= s_shk_spi_valid;  //
    end
end
assign w_shk_spi_valid_pos = s_shk_spi_valid && r_shk_spi_valid;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_spi_mdata <= 1'b0;
        r_shk_spi_maddr <= 1'b0; //
    end
    else if(1) //
    begin
        r_shk_spi_mdata <= s_shk_spi_mdata;
        r_shk_spi_maddr <= s_shk_spi_maddr;  //
    end
end

//========================================================
//module and task to build part of system

//========================================================
//expand and plug-in part with version 

//========================================================
//ila and vio to debug and monitor

endmodule