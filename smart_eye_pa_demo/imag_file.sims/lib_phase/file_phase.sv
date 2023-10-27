// *********************************************************************************
// Company: Fpga Publish
// Engineer: F 
// 
// Create Date: 2023/10/28 01:09:56
// Design Name: 
// Module Name: file_phase
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
`include "../public_macro.svh"

class file_phase;
    vip_read_imag vp_read_imag;
    integer i,j;
    virtual data_interface data_itf;
    function new(input virtual data_interface data_itf);
        this.data_itf = data_itf;
    endfunction //new()
    extern task run();
endclass //file_phase

task file_phase::run();
    vp_read_imag = new("./input_data/scan1.dat",`NB_IMAG_W,`NB_IMAG_H);
    // --------------------------------------------------------------------
    // sovle imag data
    i = 0;
    repeat(`NB_IMAG_H)
    begin
        j = 0;
        repeat(`NB_IMAG_W)
        begin
            `NB_SYS_PER
            data_itf.data = vp_read_imag.dat_fifo[i*`NB_IMAG_W + j];
            j = j + 1;
        end
        i = i + 1;
    end
    vp_read_imag = null;
endtask