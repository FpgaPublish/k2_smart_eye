`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2023 10:32:44 PM
// Design Name: 
// Module Name: tb_uart
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


module tb_uart(

    );
reg clk_in1_0 = 0;
always #(12.5) clk_in1_0 = ~clk_in1_0;

//uart
wire s_port_uart_0_mtx;
wire s_port_uart_0_mrx;
assign s_port_uart_0_mtx = s_port_uart_0_mrx;
initial #10000000 $stop();
    

design_x7_wrapper u_design_x7_wrapper(
    .clk_in1_0         ( clk_in1_0         ),
    .s_port_uart_0_mrx ( s_port_uart_0_mrx ),
    .s_port_uart_0_mtx ( s_port_uart_0_mtx )
);

endmodule
