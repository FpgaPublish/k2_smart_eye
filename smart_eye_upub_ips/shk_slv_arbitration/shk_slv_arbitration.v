`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/16 23:48:13
// Design Name: 
// Module Name: shk_slv_arbitration
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
module shk_slv_arbitration #(
    //sim mode
    parameter MD_SIM_ABLE = 0,

    //shake bus
    parameter WD_SHK0_DATA = 16,
    parameter WD_SHK0_ADDR = 16,
    //error info
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk   ,  
    input           i_sys_resetn,  
    //
    //shake slaver
    input                        s_shk_0_src_valid,
    input                        s_shk_0_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_0_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_0_src_maddr,
    output                       s_shk_0_src_ready,
    output                       s_shk_0_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_0_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_0_src_saddr,
    //shake slaver
    input                        s_shk_1_src_valid,
    input                        s_shk_1_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_1_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_1_src_maddr,
    output                       s_shk_1_src_ready,
    output                       s_shk_1_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_1_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_1_src_saddr,
    //shake slaver
    input                        s_shk_2_src_valid,
    input                        s_shk_2_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_2_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_2_src_maddr,
    output                       s_shk_2_src_ready,
    output                       s_shk_2_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_2_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_2_src_saddr,
    //shake slaver
    input                        s_shk_3_src_valid,
    input                        s_shk_3_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_3_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_3_src_maddr,
    output                       s_shk_3_src_ready,
    output                       s_shk_3_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_3_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_3_src_saddr,
    //shake slaver
    input                        s_shk_4_src_valid,
    input                        s_shk_4_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_4_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_4_src_maddr,
    output                       s_shk_4_src_ready,
    output                       s_shk_4_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_4_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_4_src_saddr,
    //shake slaver
    input                        s_shk_5_src_valid,
    input                        s_shk_5_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_5_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_5_src_maddr,
    output                       s_shk_5_src_ready,
    output                       s_shk_5_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_5_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_5_src_saddr,
    //shake slaver
    input                        s_shk_6_src_valid,
    input                        s_shk_6_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_6_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_6_src_maddr,
    output                       s_shk_6_src_ready,
    output                       s_shk_6_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_6_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_6_src_saddr,
    //shake slaver
    input                        s_shk_7_src_valid,
    input                        s_shk_7_src_msync,
    input    [WD_SHK0_DATA-1:0]  s_shk_7_src_mdata,
    input    [WD_SHK0_ADDR-1:0]  s_shk_7_src_maddr,
    output                       s_shk_7_src_ready,
    output                       s_shk_7_src_ssync,
    output   [WD_SHK0_DATA-1:0]  s_shk_7_src_sdata,
    output   [WD_SHK0_ADDR-1:0]  s_shk_7_src_saddr,
    //shake master
    output                       m_shk_0_dst_valid,
    output                       m_shk_0_dst_msync,
    output   [WD_SHK0_DATA-1:0]  m_shk_0_dst_mdata,
    output   [WD_SHK0_ADDR-1:0]  m_shk_0_dst_maddr,
    input                        m_shk_0_dst_ready,
    input                        m_shk_0_dst_ssync,
    input    [WD_SHK0_DATA-1:0]  m_shk_0_dst_sdata,
    input    [WD_SHK0_ADDR-1:0]  m_shk_0_dst_saddr, 
    
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_shk_info1
);
//========================================================
//function to math and logic
function automatic integer LOG2(input integer N);
begin
    N = N - 1;
    for(LOG2 = 0; N > 0; LOG2 = LOG2 + 1)
    begin
        N = N >> 1;
    end
end 
endfunction
//========================================================
//localparam to converation and calculate
localparam NB_SHK_SLV  = 8; //8
localparam WD_SHK_SLV = LOG2(NB_SHK_SLV);
//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// shake slaver numb req circulate
reg [WD_SHK_SLV-1:0] r_slv_req_circulate;

// ----------------------------------------------------------
// shk dst
reg                     r_shk_0_dst_valid;
reg                     r_shk_0_dst_msync;
reg [WD_SHK0_DATA-1:0]  r_shk_0_dst_mdata;
reg [WD_SHK0_ADDR-1:0]  r_shk_0_dst_maddr;

assign m_shk_0_dst_valid = r_shk_0_dst_valid;
assign m_shk_0_dst_msync = r_shk_0_dst_msync;
assign m_shk_0_dst_mdata = r_shk_0_dst_mdata;
assign m_shk_0_dst_maddr = r_shk_0_dst_maddr;

//========================================================
//always and assign to drive logic and connect
// ----------------------------------------------------------
// shake slaver numb req circulate
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_slv_req_circulate <= 1'b0; //
    end
    else if(m_shk_0_dst_ready == 0 && m_shk_0_dst_valid == 0) //
    begin
        case(r_slv_req_circulate)  //
            0: if(s_shk_0_src_valid == 0 && s_shk_0_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            1: if(s_shk_1_src_valid == 0 && s_shk_1_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            2: if(s_shk_2_src_valid == 0 && s_shk_2_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            3: if(s_shk_3_src_valid == 0 && s_shk_3_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            4: if(s_shk_4_src_valid == 0 && s_shk_4_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            5: if(s_shk_5_src_valid == 0 && s_shk_5_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            6: if(s_shk_6_src_valid == 0 && s_shk_6_src_ready== 0)
            begin
                r_slv_req_circulate <= r_slv_req_circulate + 1'b1;
            end
            7: if(s_shk_7_src_valid == 0 && s_shk_7_src_ready== 0)
            begin
                r_slv_req_circulate <= 0;
            end
        endcase
    end
end
// ----------------------------------------------------------
// shk src
assign s_shk_0_src_ready = r_slv_req_circulate == 0 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_0_src_ssync = r_slv_req_circulate == 0 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_0_src_sdata = r_slv_req_circulate == 0 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_0_src_saddr = r_slv_req_circulate == 0 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_1_src_ready = r_slv_req_circulate == 1 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_1_src_ssync = r_slv_req_circulate == 1 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_1_src_sdata = r_slv_req_circulate == 1 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_1_src_saddr = r_slv_req_circulate == 1 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_2_src_ready = r_slv_req_circulate == 2 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_2_src_ssync = r_slv_req_circulate == 2 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_2_src_sdata = r_slv_req_circulate == 2 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_2_src_saddr = r_slv_req_circulate == 2 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_3_src_ready = r_slv_req_circulate == 3 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_3_src_ssync = r_slv_req_circulate == 3 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_3_src_sdata = r_slv_req_circulate == 3 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_3_src_saddr = r_slv_req_circulate == 3 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_4_src_ready = r_slv_req_circulate == 4 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_4_src_ssync = r_slv_req_circulate == 4 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_4_src_sdata = r_slv_req_circulate == 4 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_4_src_saddr = r_slv_req_circulate == 4 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_5_src_ready = r_slv_req_circulate == 5 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_5_src_ssync = r_slv_req_circulate == 5 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_5_src_sdata = r_slv_req_circulate == 5 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_5_src_saddr = r_slv_req_circulate == 5 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_6_src_ready = r_slv_req_circulate == 6 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_6_src_ssync = r_slv_req_circulate == 6 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_6_src_sdata = r_slv_req_circulate == 6 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_6_src_saddr = r_slv_req_circulate == 6 ? m_shk_0_dst_saddr : 1'b0;

assign s_shk_7_src_ready = r_slv_req_circulate == 7 ? m_shk_0_dst_ready : 1'b0;
assign s_shk_7_src_ssync = r_slv_req_circulate == 7 ? m_shk_0_dst_ssync : 1'b0;
assign s_shk_7_src_sdata = r_slv_req_circulate == 7 ? m_shk_0_dst_sdata : 1'b0;
assign s_shk_7_src_saddr = r_slv_req_circulate == 7 ? m_shk_0_dst_saddr : 1'b0;

// ----------------------------------------------------------
// shk dst
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_0_dst_valid <= 1'b0;
        r_shk_0_dst_msync <= 1'b0;
        r_shk_0_dst_mdata <= 1'b0;
        r_shk_0_dst_maddr <= 1'b0; //
    end
    else if(1) //
    begin
        case(r_slv_req_circulate)  //
            0: 
            begin
                r_shk_0_dst_valid <= s_shk_0_src_valid;
                r_shk_0_dst_msync <= s_shk_0_src_msync;
                r_shk_0_dst_mdata <= s_shk_0_src_mdata;
                r_shk_0_dst_maddr <= s_shk_0_src_maddr; //
            end
            1: 
            begin
                r_shk_0_dst_valid <= s_shk_1_src_valid;
                r_shk_0_dst_msync <= s_shk_1_src_msync;
                r_shk_0_dst_mdata <= s_shk_1_src_mdata;
                r_shk_0_dst_maddr <= s_shk_1_src_maddr; //
            end
            2: 
            begin
                r_shk_0_dst_valid <= s_shk_2_src_valid;
                r_shk_0_dst_msync <= s_shk_2_src_msync;
                r_shk_0_dst_mdata <= s_shk_2_src_mdata;
                r_shk_0_dst_maddr <= s_shk_2_src_maddr; //
            end
            3: 
            begin
                r_shk_0_dst_valid <= s_shk_3_src_valid;
                r_shk_0_dst_msync <= s_shk_3_src_msync;
                r_shk_0_dst_mdata <= s_shk_3_src_mdata;
                r_shk_0_dst_maddr <= s_shk_3_src_maddr; //
            end
            4: 
            begin
                r_shk_0_dst_valid <= s_shk_4_src_valid;
                r_shk_0_dst_msync <= s_shk_4_src_msync;
                r_shk_0_dst_mdata <= s_shk_4_src_mdata;
                r_shk_0_dst_maddr <= s_shk_4_src_maddr; //
            end
            5: 
            begin
                r_shk_0_dst_valid <= s_shk_5_src_valid;
                r_shk_0_dst_msync <= s_shk_5_src_msync;
                r_shk_0_dst_mdata <= s_shk_5_src_mdata;
                r_shk_0_dst_maddr <= s_shk_5_src_maddr; //
            end
            6: 
            begin
                r_shk_0_dst_valid <= s_shk_6_src_valid;
                r_shk_0_dst_msync <= s_shk_6_src_msync;
                r_shk_0_dst_mdata <= s_shk_6_src_mdata;
                r_shk_0_dst_maddr <= s_shk_6_src_maddr; //
            end
            7: 
            begin
                r_shk_0_dst_valid <= s_shk_7_src_valid;
                r_shk_0_dst_msync <= s_shk_7_src_msync;
                r_shk_0_dst_mdata <= s_shk_7_src_mdata;
                r_shk_0_dst_maddr <= s_shk_7_src_maddr; //
            end
            
        endcase
    end
end
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
 
## drc

              
## sim        
              
*/            