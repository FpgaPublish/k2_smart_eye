`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/30 05:01:28
// Design Name: 
// Module Name: init_start
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
module init_start #(
    //sim mode
    parameter MD_SIM_ABLE = 0,
    //init time
    parameter NB_INIT_TIME = 28, //max 31
    //error info
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk   ,  
    input           i_sys_resetn,  
    //output  timer update
    output          o_init_update,
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_init_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate

//========================================================
//register and wire to time sequence and combine
reg [31:0] r_init_cnt;
//========================================================
//always and assign to drive logic and connect
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_init_cnt <= 1'b0; //
    end
    else if(r_init_cnt[NB_INIT_TIME])
    begin
        r_init_cnt <= r_init_cnt;
    end
    else if(1) //
    begin
        r_init_cnt <= r_init_cnt + 1'b1;  //
    end
end
assign o_init_update = r_init_cnt == {(NB_INIT_TIME){1'b1}};
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