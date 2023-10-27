// *********************************************************************************
// Company: Fpga Publish
// Engineer: F 
// 
// Create Date: 2023/10/28 01:04:27
// Design Name: 
// Module Name: main_top
// Project Name: 
// Target Devices: ZYNQ7010 & XAUG
// Tool Versions: 2021.1
// Description: 
// 
// Dependencies: 
// 
// Revision: 0.01 
// Revision 0.01 - File Created
// Additional Comments:
// 
// ***********************************************************************************
`timescale 1ns / 1ps
// --------------------------------------------------------------------
// file head
`include "public_libs.svh"
`include "public_macro.svh"
module main_top #(
    
   )(
    
);
// ==========================================================
// interface
data_interface data_itf();
// =============================================================
// BUS and SIP to generate signals
initial 
begin
    main_phase main_phs;
    main_phs = new(data_itf);
    main_phs.run();
    #1000
    main_phs = null;
    $stop();
end
// =============================================================
// module to simulate

// =============================================================
// assertion to monitor 

endmodule