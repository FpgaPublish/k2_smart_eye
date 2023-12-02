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
always #(1000 / 24 / 2) clk_in1_0 = ~clk_in1_0;

//uart
reg  s_port_uart_0_mtx = 1;
wire s_port_uart_0_mrx;
//assign s_port_uart_0_mtx = s_port_uart_0_mrx;
initial #10000000 $stop();
// ----------------------------------------------------------
// add uart cmd rd sim
localparam UART_RATE =  1000_000_000 / 115200;
localparam NB_PKG  = 244;
reg [31:0] r_fifo [0:NB_PKG-1];
integer m,n,k;
always@(posedge clk_in1_0)
begin
    #1000000;
    k = 0;
    repeat(NB_PKG)
    begin
        m = 0;
        repeat(4)
        begin
            n = 0;
            #(UART_RATE)
            s_port_uart_0_mtx = 0;
            repeat(8)
            begin
                #(UART_RATE)
                s_port_uart_0_mtx = r_fifo[k][8-1-n+m*8];
                #0
                n = n  + 1;
            end
            #(UART_RATE)
            s_port_uart_0_mtx = 1;
            #(UART_RATE)
            s_port_uart_0_mtx = 1;
            m = m  + 1;
        end
        k = k + 1;
    end
end
//fifo temp data
integer i;
initial 
    begin
        i = 0;
        repeat(NB_PKG)
        begin
            #1 
            case(i)
                0: r_fifo[i] <= 31'h1331_0001;
                1: r_fifo[i] <= 31'd960;
                2: r_fifo[i] <= {16'h1,16'h1};
                default: r_fifo[i] <= i;
            endcase
            i = i  + 1;
        end
    end


design_x7_wrapper u_design_x7_wrapper(
    .clk_in1_0         ( clk_in1_0         ),
    .s_port_uart_0_mrx ( s_port_uart_0_mrx ),
    .s_port_uart_0_mtx ( s_port_uart_0_mtx )
);

endmodule
