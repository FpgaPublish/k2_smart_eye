`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/10/08 21:42:19
// Design Name: 
// Module Name: bram_to_shk
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

/* end verilog
```
           
 </details> 
           
```mermaid
sequenceDiagram
MASTER info->>SLAVER info: s_info_wr_last
MASTER info->>MASTER bram: m_bram_src_en
MASTER bram->>MASTER shk: cstate write req
MASTER shk->>SLAVER shk: m_shk_dst_valid && m_shk_dst_msync    
SLAVER shk->>MASTER shk: m_shk_dst_ssync || m_shk_dst_ready
MASTER shk->>MASTER bram: cstate wrtie over
        
```
           
 <details> 
           
```verilog
*/
module bram_to_shk #(
    //mode
    parameter MD_SIM_ABLE = 0,
    //number
    parameter NB_BRAM_DELY  = 2,
    parameter NB_DDR_MAX    = 32'h4000_0000,
    parameter NB_DDR_INI1   = 32'h0200_0000,
    parameter NB_DDR_INI2   = 32'h0400_0000,
    parameter NB_DDR_INI3   = 32'h0600_0000,
    parameter NB_DDR_NUMB   = 3,
    parameter NB_DDR_ONC   = 4096,
    //shake bus
    parameter WD_SHK_DATA = 64,
    parameter WD_SHK_ADDR = 32,
    //width
    parameter WD_BRAM_ADDR = 8,
    parameter WD_BRAM_DATA = 8,
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk  ,  
    input           i_sys_resetn, 
    //info
    input           s_info_wr_last, 
    input           s_info_wr_fram,
    //bram matser
    output  [WD_BRAM_ADDR-1:0]  m_bram_src_addr,
    output                      m_bram_src_clk ,
    output  [WD_BRAM_DATA-1:0]  m_bram_src_din ,
    input   [WD_BRAM_DATA-1:0]  m_bram_src_dout,
    output                      m_bram_src_en  ,
    output                      m_bram_src_rst ,
    output                      m_bram_src_we  ,
    //shake master
    output                      m_shk_dst_valid,
    output                      m_shk_dst_msync,
    output   [WD_SHK_DATA-1:0]  m_shk_dst_mdata,
    output   [WD_SHK_ADDR-1:0]  m_shk_dst_maddr,
    input                       m_shk_dst_ready,
    input                       m_shk_dst_ssync,
    input    [WD_SHK_DATA-1:0]  m_shk_dst_sdata,
    input    [WD_SHK_ADDR-1:0]  m_shk_dst_saddr, 
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_bram_info1
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
localparam WD_BRAM_DELY = LOG2(NB_BRAM_DELY);
//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// info data
reg  r_info_wr_last;
wire w_info_wr_last_pos;
reg  r_info_wr_fram;
reg [2:0] r_frame_cnt;
wire w_info_wr_fram_pos;
// ----------------------------------------------------------
// read pre
reg [WD_BRAM_DELY-1:0] r_read_delay_cnt = 0;
// ----------------------------------------------------------
// bram master
reg [WD_BRAM_ADDR-1:0]  r_bram_src_addr = 0;
reg                     r_bram_src_clk  = 0;
reg [WD_BRAM_DATA-1:0]  r_bram_src_din  = 0;
reg [WD_BRAM_DATA-1:0]  r_bram_src_dout = 0;
reg                     r_bram_src_en   = 0;
reg                     r_bram_src_rst  = 0;
reg                     r_bram_src_we   = 0;
// ----------------------------------------------------------
// pre data match
reg [WD_BRAM_DATA-1:0]  r_match_data_fifo [0:NB_BRAM_DELY]; //last bit init
wire                    w_match_data_sync;
reg                     r_match_data_sync;
wire                    w_match_data_sync_neg;
reg  [NB_BRAM_DELY-1:0] r_match_data_sync_neg_dn;
wire                    w_match_data_sync_pos;
reg  [NB_BRAM_DELY-1:0] r_match_data_sync_pos_dn;
// ----------------------------------------------------------
// shk master
reg                    r_shk_dst_valid;
reg                    r_shk_dst_msync = 1; //only write
reg [WD_SHK_DATA-1:0]  r_shk_dst_mdata;
reg [WD_SHK_ADDR-1:0]  r_shk_dst_maddr = NB_DDR_INI1; //ddr init 
//========================================================
//always and assign to drive logic and connect
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_info_wr_last <= 1'b0; //
    end
    else if(1) //
    begin
        r_info_wr_last <= s_info_wr_last;  //
    end
end
assign w_info_wr_last_pos = s_info_wr_last && !r_info_wr_last;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_info_wr_fram <= 1'b0; //
    end
    else if(1) //
    begin
        r_info_wr_fram <= s_info_wr_fram;
    end
end
assign w_info_wr_fram_pos = s_info_wr_fram && !r_info_wr_fram;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_frame_cnt <= 1'b0; //
    end
    else if(w_info_wr_fram_pos) //
    begin
        r_frame_cnt <=  r_frame_cnt >= NB_DDR_NUMB - 1'b1 ? 1'b0 :
                        r_frame_cnt + 1'b1;  //
    end
end

/* end verilog
```

</details>

```mermaid
stateDiagram
IDLE-->START :valid
START-->READ_PRE: start read  
READ_PRE-->REQ_WR_DDR: r_read_delay_cnt full       
REQ_WR_DDR-->DDR_WR_SYN: request write
DDR_WR_SYN-->OVER: m_shk_dst_ready shake ok
OVER-->IDLE:  over write DDR
```
<details>

```verilog
*/
/* @begin state machine */
//state name
localparam IDLE         = 0;
localparam START        = 1;
localparam READ_PRE     = 2;
localparam REQ_WR_DDR   = 3;
localparam DDR_WR_SYN   = 4;
localparam OVER         = 5;
//state variable
reg [3:0] cstate = IDLE;

//state logic
always @(posedge i_sys_clk)
    if(!i_sys_resetn)
    begin
       cstate <= IDLE;
    end
    else if(w_info_wr_last_pos) //force start
    begin
        cstate <= START;
    end
    else
    begin 
        case(cstate)
            IDLE : if(s_info_wr_last) //whether goto next state
                begin  
                    if(1) //which state to go
                    begin
                        cstate <= START;
                    end
                end
            START: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= READ_PRE;
                    end
                end
            READ_PRE: if(r_read_delay_cnt == NB_BRAM_DELY - 1'b1) //state change: when BRAM data update ok
                begin
                    if(1) //state switch:
                    begin
                        cstate <= REQ_WR_DDR;
                    end
                end
            REQ_WR_DDR: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= DDR_WR_SYN;
                    end
                end
            DDR_WR_SYN: if(m_shk_dst_ready) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= OVER;
                    end
                end
            OVER: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= IDLE;
                    end
                end
            default: cstate <= IDLE;
        endcase
    end
/* @end state machine  */
// ----------------------------------------------------------
// read pre
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_read_delay_cnt <= 1'b0;
    end
    else if(cstate == READ_PRE)
    begin
        r_read_delay_cnt <= r_read_delay_cnt + 1'b1;
    end
end
// ----------------------------------------------------------
// bram master
// reg [WD_BRAM_ADDR-1:0]  r_bram_src_addr = 0;
// reg [WD_BRAM_DATA-1:0]  r_bram_src_dout = 0;
// reg                     r_bram_src_en   = 0;
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_bram_src_addr <= 1'b0;
    end
    else if(cstate == READ_PRE)
    begin
        r_bram_src_addr <= r_bram_src_addr + 1'b1;
    end
    else if(cstate == DDR_WR_SYN)
    begin
        if(m_shk_dst_ssync)
        begin
            r_bram_src_addr <= r_bram_src_addr + 1'b1;
        end
    end 
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_bram_src_en <= 1'b0;
    end
    else if(cstate == START)
    begin
        r_bram_src_en <= 1'b1;
    end
end

assign m_bram_src_clk  = i_sys_clk;
assign m_bram_src_addr = r_bram_src_addr;
assign m_bram_src_din  = r_bram_src_din ;
assign m_bram_src_en   = r_bram_src_en  ;
assign m_bram_src_rst  = r_bram_src_rst ;
assign m_bram_src_we   = r_bram_src_we  ;
// ----------------------------------------------------------
// pre data match
assign w_match_data_sync = cstate == READ_PRE || m_shk_dst_ssync;
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_match_data_sync <= 1'b0;
        r_match_data_sync_neg_dn <= 1'b0;
        r_match_data_sync_pos_dn <= 1'b0;
    end
    else 
    begin
        r_match_data_sync <= w_match_data_sync;
        r_match_data_sync_neg_dn <= {r_match_data_sync_neg_dn[NB_BRAM_DELY-2:0],w_match_data_sync_neg} ;
        r_match_data_sync_pos_dn <= {r_match_data_sync_pos_dn[NB_BRAM_DELY-2:0],w_match_data_sync_pos} ;
    end
end
assign w_match_data_sync_neg = !w_match_data_sync && r_match_data_sync;
assign w_match_data_sync_pos = w_match_data_sync && !r_match_data_sync;
generate genvar i;
    for(i = 0; i < NB_BRAM_DELY; i = i + 1)
    begin:FOR_NB_BRAM_DELY
        always@(posedge i_sys_clk)
        begin
            if(cstate == IDLE) //state IDLE reset
            begin
                r_match_data_fifo[i] <= 1'b0;
            end
            else if(i == 0) //neg edge must match data
            begin
                if(w_match_data_sync_neg)
                begin
                    r_match_data_fifo[i] <= m_bram_src_dout;
                end
                else if(w_match_data_sync_pos
                    ||  r_match_data_sync_pos_dn[NB_BRAM_DELY-2:0] != 0)
                begin
                    r_match_data_fifo[i] <= r_match_data_fifo[i+1];
                end
                else 
                begin
                    r_match_data_fifo[i] <= m_bram_src_dout;
                end
            end
            else if(r_match_data_sync_neg_dn[i-1])
            begin
                r_match_data_fifo[i] <= m_bram_src_dout;
            end
            else if(r_match_data_sync_pos_dn[i-1])
            begin
                r_match_data_fifo[i] <= r_match_data_fifo[i+1];
            end
        end
    end
endgenerate
// ----------------------------------------------------------
// shk master
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_shk_dst_valid <= 1'b0;
    end
    else if(cstate == REQ_WR_DDR) 
    begin
        r_shk_dst_valid <= 1'b1; 
    end
    else //pluse signal
    begin
        r_shk_dst_valid <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(w_info_wr_fram_pos) //state IDLE reset
    begin
        case(r_frame_cnt)
            0: r_shk_dst_maddr <= NB_DDR_INI1;
            1: r_shk_dst_maddr <= NB_DDR_INI2;
            2: r_shk_dst_maddr <= NB_DDR_INI3;
            default: r_shk_dst_maddr <= NB_DDR_INI1;
        endcase
    end
    else if(cstate == START)
    begin
        r_shk_dst_maddr <= (r_shk_dst_maddr < NB_DDR_MAX) ? r_shk_dst_maddr + NB_DDR_ONC : 
                            r_shk_dst_maddr;
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_shk_dst_mdata <= 1'b0;
    end
    else if(cstate == DDR_WR_SYN)
    begin
        r_shk_dst_mdata <= r_match_data_fifo[0];
    end
end
assign m_shk_dst_valid = r_shk_dst_valid;
assign m_shk_dst_msync = r_shk_dst_msync;
assign m_shk_dst_mdata = r_shk_dst_mdata;
assign m_shk_dst_maddr = r_shk_dst_maddr;
//========================================================
//module and task to build part of system

//========================================================
//expand and plug-in part with version 

//========================================================
//ila and vio to debug and monitor

endmodule