`include "../public_file/public_macro.svh"
interface iic_interface;
    logic clk;
    logic scl;
    wire  sda;
    logic assert_flg;
    logic sda_o;
    wire  sda_i;
    logic sda_t;
    assign sda_i = sda;
    assign sda   = sda_t ? 1'bz : sda_o;
endinterface //iic_interface

interface uart_interface;
    logic clk;
    logic mrx;
    logic mtx;
    logic assert_flg;
    logic [`WD_CMD_ADDR-1:0] addr;
endinterface //uart_interface

