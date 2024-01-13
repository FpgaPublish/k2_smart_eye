`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/23 12:55:51
// Design Name: 
// Module Name: iic_to_port
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
module iic_to_port #(
    //sim mode
    parameter MD_SIM_ABLE = 0,
    //error info
    parameter WD_ERR_INFO = 4
   )(
    //iic 
    input   s_iic_src_csn,
    input   s_iic_src_scl,
    input   s_iic_src_sdo,
    input   s_iic_src_tri,
    output  s_iic_src_sdi,
    //iic port
    output  m_piic_dst_csn,
    output  m_piic_dst_scl,
    inout   m_piic_dst_sda,
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_iic_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate

//========================================================
//register and wire to time sequence and combine

//========================================================
//always and assign to drive logic and connect
assign m_piic_dst_csn = s_iic_src_csn;
assign m_piic_dst_scl = s_iic_src_scl;
IOBUF #(
    .DRIVE(12), // Specify the output drive strength
    .IBUF_LOW_PWR("TRUE"),  // Low Power - "TRUE", High Performance = "FALSE" 
    .IOSTANDARD("DEFAULT"), // Specify the I/O standard
    .SLEW("SLOW") // Specify the output slew rate
) IOBUF_inst (
    .O (s_iic_src_sdi),     // Buffer output
    .IO(m_piic_dst_sda),     // Buffer inout port (connect directly to top-level port)
    .I (s_iic_src_sdo),     // Buffer input
    .T (s_iic_src_tri)      // 3-state enable input, high=input, low=output
);
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