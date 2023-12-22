`include "../public_file/public_macro.svh"
module cmd_stream_assert(
    logic          w_sys_clk,
    logic          w_sys_resetn,
    uart_interface uart_itf 
);
// --------------------------------------------------------------------
// rstn assert
property pp_uart_not_in_rstn;
    @(posedge w_sys_clk) (!w_sys_resetn && uart_itf.assert_flg ) |->
    uart_itf.mtx == 1;
endproperty
as_uart_not_in_rstn: assert property(pp_uart_not_in_rstn) else 
    $display("warn: pp_uart_not_in_rstn fail!");


endmodule