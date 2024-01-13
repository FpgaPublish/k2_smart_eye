`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/01 23:58:30
// Design Name: 
// Module Name: cmd_rd_shk
// Project Name: 
// Target Devices: ZYNQ7010 | XCZU2CG | Kintex7
// Tool Versions: 2021.1 || 2022.2
// Description: 
//         * write a cmd from shk byte module
// Dependencies: 
//         * 
// Revision: 0.01 
// Revision 0.01 - File Created
//          0.02 - write back cmd info
//          0.03 - add init cmd value to start init
// Additional Comments:
// 
// *******************************************************************************

/* end verilog
```
# interface          
          
 </details> 
           
```mermaid
sequenceDiagram
SLAVER shk->>MASTER shk: ready with data from uart       
```
           
 <details> 
           
```verilog
*/

module cmd_rd_shk #(
    //mode
    parameter MD_SIM_ABLE = 0,
    parameter MD_CMD_START = 32'h1331_0001,
    //number
    parameter NB_PKG_SIZE = 244,
    parameter NB_PKG_HEAD = 3,
    //width
    parameter WD_SLEEP_SPAN = 28,
    //shake bus
    parameter WD_SHK_DATA = 8,
    parameter WD_SHK_ADDR = 8,
    //shk wr back
    parameter WD_BCK_DATA = 32,
    parameter WD_BCK_ADDR = 32,
    //string info 
    parameter SR_BCK_DATA = "wr cmd succed",
    parameter NB_BCK_DATA = 5, //max 255
    //cmd init value
    parameter NB_CMD_VAL0   = 32'h3000_0554,
    parameter NB_CMD_VAL1   = 32'h301A_00D9,
    parameter NB_CMD_VAL2   = 32'h0000_0000,
    parameter NB_CMD_VAL3   = 32'h301A_10D8,
    parameter NB_CMD_VAL4   = 32'h302C_0001,
    parameter NB_CMD_VAL5   = 32'h302A_0008,
    parameter NB_CMD_VAL6   = 32'h302E_0002,
    parameter NB_CMD_VAL7   = 32'h3030_002C,
    parameter NB_CMD_VAL8   = 32'h30B0_04A0,
    parameter NB_CMD_VAL9   = 32'h0000_0000,
    parameter NB_CMD_VAL10  = 32'h3002_0078,
    parameter NB_CMD_VAL11  = 32'h3004_0000,
    parameter NB_CMD_VAL12  = 32'h3006_0347,
    parameter NB_CMD_VAL13  = 32'h3008_04FF,
    parameter NB_CMD_VAL14  = 32'h300A_02EB,
    parameter NB_CMD_VAL15  = 32'h300C_0672,
    parameter NB_CMD_VAL16  = 32'h30A2_0001,
    parameter NB_CMD_VAL17  = 32'h30A6_0001,
    parameter NB_CMD_VAL18  = 32'h3040_8000,
    parameter NB_CMD_VAL19  = 32'h3028_0010,
    parameter NB_CMD_VAL20  = 32'h305E_0020,
    parameter NB_CMD_VAL21  = 32'h3012_03C0,
    parameter NB_CMD_VAL22  = 32'h3100_0001,
    parameter NB_CMD_VAL23  = 32'h301A_10DC,
    parameter NB_CMD_VAL24  = 0,
    parameter NB_CMD_VAL25  = 0,
    parameter NB_CMD_VAL26  = 0,
    parameter NB_CMD_VAL27  = 0,
    parameter NB_CMD_VAL28  = 0,
    parameter NB_CMD_VAL29  = 0,
    parameter NB_CMD_VAL30  = 0,
    parameter NB_CMD_VAL31  = 0,
    parameter NB_CMD_VAL32  = 0,
    parameter NB_CMD_VAL33  = 0,
    parameter NB_CMD_VAL34  = 0,
    parameter NB_CMD_VAL35  = 0,
    parameter NB_CMD_VAL36  = 0,
    parameter NB_CMD_VAL37  = 0,
    parameter NB_CMD_VAL38  = 0,
    parameter NB_CMD_VAL39  = 0,
    parameter NB_CMD_VAL40  = 0,
    parameter NB_CMD_VAL41  = 0,
    parameter NB_CMD_VAL42  = 0,
    parameter NB_CMD_VAL43  = 0,
    parameter NB_CMD_VAL44  = 0,
    parameter NB_CMD_VAL45  = 0,
    parameter NB_CMD_VAL46  = 0,
    parameter NB_CMD_VAL47  = 0,
    parameter NB_CMD_VAL48  = 0,
    parameter NB_CMD_VAL49  = 0,
    parameter NB_CMD_VAL50  = 0,
    parameter NB_CMD_VAL51  = 0,
    parameter NB_CMD_VAL52  = 0,
    parameter NB_CMD_VAL53  = 0,
    parameter NB_CMD_VAL54  = 0,
    parameter NB_CMD_VAL55  = 0,
    parameter NB_CMD_VAL56  = 0,
    parameter NB_CMD_VAL57  = 0,
    parameter NB_CMD_VAL58  = 0,
    parameter NB_CMD_VAL59  = 0,
    parameter NB_CMD_VAL60  = 0,
    parameter NB_CMD_VAL61  = 0,
    parameter NB_CMD_VAL62  = 0,
    parameter NB_CMD_VAL63  = 0,
    parameter NB_CMD_VAL64  = 0,
    parameter NB_CMD_VAL65  = 0,
    parameter NB_CMD_VAL66  = 0,
    parameter NB_CMD_VAL67  = 0,
    parameter NB_CMD_VAL68  = 0,
    parameter NB_CMD_VAL69  = 0,
    parameter NB_CMD_VAL70  = 0,
    parameter NB_CMD_VAL71  = 0,
    parameter NB_CMD_VAL72  = 0,
    parameter NB_CMD_VAL73  = 0,
    parameter NB_CMD_VAL74  = 0,
    parameter NB_CMD_VAL75  = 0,
    parameter NB_CMD_VAL76  = 0,
    parameter NB_CMD_VAL77  = 0,
    parameter NB_CMD_VAL78  = 0,
    parameter NB_CMD_VAL79  = 0,
    parameter NB_CMD_VAL80  = 0,
    parameter NB_CMD_VAL81  = 0,
    parameter NB_CMD_VAL82  = 0,
    parameter NB_CMD_VAL83  = 0,
    parameter NB_CMD_VAL84  = 0,
    parameter NB_CMD_VAL85  = 0,
    parameter NB_CMD_VAL86  = 0,
    parameter NB_CMD_VAL87  = 0,
    parameter NB_CMD_VAL88  = 0,
    parameter NB_CMD_VAL89  = 0,
    parameter NB_CMD_VAL90  = 0,
    parameter NB_CMD_VAL91  = 0,
    parameter NB_CMD_VAL92  = 0,
    parameter NB_CMD_VAL93  = 0,
    parameter NB_CMD_VAL94  = 0,
    parameter NB_CMD_VAL95  = 0,
    parameter NB_CMD_VAL96  = 0,
    parameter NB_CMD_VAL97  = 0,
    parameter NB_CMD_VAL98  = 0,
    parameter NB_CMD_VAL99  = 0,
    parameter NB_CMD_VAL100 = 0,
    parameter NB_CMD_VAL101 = 0,
    parameter NB_CMD_VAL102 = 0,
    parameter NB_CMD_VAL103 = 0,
    parameter NB_CMD_VAL104 = 0,
    parameter NB_CMD_VAL105 = 0,
    parameter NB_CMD_VAL106 = 0,
    parameter NB_CMD_VAL107 = 0,
    parameter NB_CMD_VAL108 = 0,
    parameter NB_CMD_VAL109 = 0,
    parameter NB_CMD_VAL110 = 0,
    parameter NB_CMD_VAL111 = 0,
    parameter NB_CMD_VAL112 = 0,
    parameter NB_CMD_VAL113 = 0,
    parameter NB_CMD_VAL114 = 0,
    parameter NB_CMD_VAL115 = 0,
    parameter NB_CMD_VAL116 = 0,
    parameter NB_CMD_VAL117 = 0,
    parameter NB_CMD_VAL118 = 0,
    parameter NB_CMD_VAL119 = 0,
    parameter NB_CMD_VAL120 = 0,
    parameter NB_CMD_VAL121 = 0,
    parameter NB_CMD_VAL122 = 0,
    parameter NB_CMD_VAL123 = 0,
    parameter NB_CMD_VAL124 = 0,
    parameter NB_CMD_VAL125 = 0,
    parameter NB_CMD_VAL126 = 0,
    parameter NB_CMD_VAL127 = 0,
    
    //cmd bus
    parameter NB_CMD_ORDE = 128,
    parameter WD_CMD_DATA = 32,
    parameter WD_BYTE     = 8,
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk  ,  
    input           i_sys_resetn,  
    
    //shake master src
    output                      m_shk_rd_valid,
    output                      m_shk_rd_msync,
    output   [WD_SHK_DATA-1:0]  m_shk_rd_mdata,
    output   [WD_SHK_ADDR-1:0]  m_shk_rd_maddr,
    input                       m_shk_rd_ready,
    input                       m_shk_rd_ssync,
    input    [WD_SHK_DATA-1:0]  m_shk_rd_sdata,
    input    [WD_SHK_ADDR-1:0]  m_shk_rd_saddr, 
    //cmd output 
    output   [WD_CMD_DATA*NB_CMD_ORDE-1:0]  m_cmd_dst_arry,
    output                                  m_cmd_dst_updt,
    //shk cmd reback
    //shake master src
    output                      m_shk_wr_valid,
    output                      m_shk_wr_msync,
    output   [WD_BCK_DATA-1:0]  m_shk_wr_mdata,
    output   [WD_BCK_ADDR-1:0]  m_shk_wr_maddr,
    input                       m_shk_wr_ready,
    input                       m_shk_wr_ssync,
    input    [WD_BCK_DATA-1:0]  m_shk_wr_sdata,
    input    [WD_BCK_ADDR-1:0]  m_shk_wr_saddr, 
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_cmd_info1
);
//========================================================
//function to math and logic

//========================================================
//localparam to converation and calculate
localparam NB_CMD_BYTE = WD_CMD_DATA / WD_SHK_DATA;
function automatic integer LOG2(input integer N);
begin
    N = N - 1;
    for(LOG2 = 0; N > 0; LOG2 = LOG2 + 1)
    begin
        N = N >> 1;
    end
end 
endfunction
localparam WD_CMD_BYTE = LOG2(NB_CMD_BYTE);
localparam NB_SRC_DIV_DST = WD_BCK_DATA / WD_SHK_DATA;
localparam NB_BCK_BYTE    = NB_SRC_DIV_DST * NB_BCK_DATA;
//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// sleep span
reg [WD_SLEEP_SPAN-1:0] r_sleep_cmt;
wire                    w_sleep_flag; //span time not recv uart data
// ----------------------------------------------------------
// src read shk
reg                     r_shk_rd_ready;
wire                    w_shk_rd_ready_pos;
reg                     r_shk_rd_ready_pos_d1; //make data match addr
reg [WD_SHK_DATA*NB_CMD_BYTE-1:0]   r_shk_rd_sdata_fifo;
reg [WD_CMD_BYTE-1:0]               r_shk_rd_sdata_byte;
reg [WD_CMD_DATA-1:0]               r_shk_rd_sdata_addr;
reg                                 r_shk_rd_sdata_able;
//decode data
reg [WD_CMD_DATA-1:0]               r_shk_rd_sdata_len;
reg [WD_CMD_DATA-1:0]               r_shk_rd_sdata_xor;
// ----------------------------------------------------------
// dst data
reg [WD_CMD_DATA-1:0]r_cmd_dst_fifo [0:NB_CMD_ORDE-1];
reg                  r_cmd_dst_updt;
// ----------------------------------------------------------
// write back
reg                       r_shk_wr_valid;
reg                       r_shk_wr_valid_d1;
wire                      w_shk_wr_valid_pos;
reg                       r_shk_wr_valid_flg;
reg                       r_shk_wr_msync;
reg   [WD_BYTE    -1:0]   r_shk_wr_msync_cunt;
reg   [WD_BCK_DATA-1:0]   r_shk_wr_mdata;
reg   [WD_BCK_ADDR-1:0]   r_shk_wr_maddr;
//string 
wire  [NB_BCK_DATA*WD_BCK_DATA-1:0] w_string_int;
wire  [NB_BCK_DATA*WD_BCK_DATA-1:0] w_string_int_big;

wire  [WD_BCK_DATA-1:0]   w_string_array [0:NB_BCK_DATA-1];
//========================================================
//always and assign to drive logic and connect
// ----------------------------------------------------------
// src shk
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_rd_ready <= 1'b0; //
        r_shk_rd_ready_pos_d1 <= 1'b0;
    end
    else if(1) //
    begin
        r_shk_rd_ready <= m_shk_rd_ready;  //
        r_shk_rd_ready_pos_d1 <= w_shk_rd_ready_pos;
    end
end
assign w_shk_rd_ready_pos = m_shk_rd_ready && !r_shk_rd_ready;
//temp data
generate genvar i;
    //public width calculate
    `define WSD  WD_SHK_DATA*(i+1)-1:WD_SHK_DATA*i
    `define WSD1 WD_SHK_DATA*(i+2)-1:WD_SHK_DATA*(i+1)
    
    for(i = 0; i < NB_CMD_BYTE; i = i + 1)
    begin:FOR_NB_CMD_BYTE
        always@(posedge i_sys_clk)
            begin
                if(!i_sys_resetn) //system reset
                begin
                    r_shk_rd_sdata_fifo[`WSD] <= 1'b0; //
                end
                else if(w_shk_rd_ready_pos) //
                begin
                    if(i == NB_CMD_BYTE - 1)
                    begin
                        r_shk_rd_sdata_fifo[`WSD] <= m_shk_rd_sdata;//
                    end
                    else 
                    begin
                        r_shk_rd_sdata_fifo[`WSD] <= r_shk_rd_sdata_fifo[`WSD1];
                    end
                end
            end
    end
endgenerate
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_rd_sdata_able <= 1'b0; //
    end
    else if(w_sleep_flag) 
    begin
        r_shk_rd_sdata_able <= 1'b0; //
    end
    else if(r_shk_rd_sdata_fifo == MD_CMD_START 
        &&  r_shk_rd_sdata_addr == 0) //
    begin
        r_shk_rd_sdata_able <= 1'b1;  //
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_rd_sdata_byte <= 1'b0; //
    end
    else if(r_shk_rd_sdata_able) //
    begin
        if(w_shk_rd_ready_pos)
        begin
            r_shk_rd_sdata_byte <=  //r_shk_rd_sdata_byte == NB_CMD_BYTE - 1'b1 ? 1'b0 : //NB_CMD_BYTE must be 2^n
                                    r_shk_rd_sdata_byte + 1'b1; //
        end
    end
    else 
    begin
        r_shk_rd_sdata_byte <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_rd_sdata_addr <= 1'b0; //
    end
    else if(!r_shk_rd_sdata_able)
    begin
        r_shk_rd_sdata_addr <= 1'b0;
    end
    else if(r_shk_rd_sdata_able) //
    begin
        if(r_shk_rd_sdata_byte == NB_CMD_BYTE - 1'b1 
        && w_shk_rd_ready_pos)
        begin
            r_shk_rd_sdata_addr <=  r_shk_rd_sdata_addr + 1'b1; //
        end
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_rd_sdata_len <= 1'b0; //
        r_shk_rd_sdata_xor <= 1'b0;
    end
    else if(r_shk_rd_ready_pos_d1
        &&  r_shk_rd_sdata_byte == 0
        &&  r_shk_rd_sdata_able) //
    begin
        case(r_shk_rd_sdata_addr) //depkg
            1:              r_shk_rd_sdata_len <= r_shk_rd_sdata_fifo;
            NB_PKG_SIZE-1:  r_shk_rd_sdata_xor <= r_shk_rd_sdata_fifo;
        endcase
    end
end
// ----------------------------------------------------------
// sleep span
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_sleep_cmt <= 1'b0; //
    end
    else if(w_shk_rd_ready_pos)
    begin
        r_sleep_cmt <= 1'b0;
    end
    else if(!r_sleep_cmt[WD_SLEEP_SPAN-1]) //
    begin
        r_sleep_cmt <= r_sleep_cmt + 1'b1;  //
    end
end
assign w_sleep_flag = r_sleep_cmt[WD_SLEEP_SPAN-1];
// ----------------------------------------------------------
// dst
generate genvar j;
    for(j = 0; j < NB_CMD_ORDE; j = j + 1)
    begin:FOR_NB_CMD_ORDE
        always@(posedge i_sys_clk)
        begin
            if(!i_sys_resetn) //system reset
            begin
                //r_cmd_dst_fifo[j] <= 1'b0; //init value set
                case(j)
                0  : r_cmd_dst_fifo[j] <= NB_CMD_VAL0 ; 
                1  : r_cmd_dst_fifo[j] <= NB_CMD_VAL1 ; 
                2  : r_cmd_dst_fifo[j] <= NB_CMD_VAL2 ; 
                3  : r_cmd_dst_fifo[j] <= NB_CMD_VAL3 ; 
                4  : r_cmd_dst_fifo[j] <= NB_CMD_VAL4 ; 
                5  : r_cmd_dst_fifo[j] <= NB_CMD_VAL5 ; 
                6  : r_cmd_dst_fifo[j] <= NB_CMD_VAL6 ; 
                7  : r_cmd_dst_fifo[j] <= NB_CMD_VAL7 ; 
                8  : r_cmd_dst_fifo[j] <= NB_CMD_VAL8 ; 
                9  : r_cmd_dst_fifo[j] <= NB_CMD_VAL9 ; 
                10 : r_cmd_dst_fifo[j] <= NB_CMD_VAL10; 
                11 : r_cmd_dst_fifo[j] <= NB_CMD_VAL11; 
                12 : r_cmd_dst_fifo[j] <= NB_CMD_VAL12; 
                13 : r_cmd_dst_fifo[j] <= NB_CMD_VAL13; 
                14 : r_cmd_dst_fifo[j] <= NB_CMD_VAL14; 
                15 : r_cmd_dst_fifo[j] <= NB_CMD_VAL15; 
                16 : r_cmd_dst_fifo[j] <= NB_CMD_VAL16; 
                17 : r_cmd_dst_fifo[j] <= NB_CMD_VAL17; 
                18 : r_cmd_dst_fifo[j] <= NB_CMD_VAL18; 
                19 : r_cmd_dst_fifo[j] <= NB_CMD_VAL19; 
                20 : r_cmd_dst_fifo[j] <= NB_CMD_VAL20; 
                21 : r_cmd_dst_fifo[j] <= NB_CMD_VAL21; 
                22 : r_cmd_dst_fifo[j] <= NB_CMD_VAL22; 
                23 : r_cmd_dst_fifo[j] <= NB_CMD_VAL23; 
                24 : r_cmd_dst_fifo[j] <= NB_CMD_VAL24; 
                25 : r_cmd_dst_fifo[j] <= NB_CMD_VAL25; 
                26 : r_cmd_dst_fifo[j] <= NB_CMD_VAL26; 
                27 : r_cmd_dst_fifo[j] <= NB_CMD_VAL27; 
                28 : r_cmd_dst_fifo[j] <= NB_CMD_VAL28; 
                29 : r_cmd_dst_fifo[j] <= NB_CMD_VAL29; 
                30 : r_cmd_dst_fifo[j] <= NB_CMD_VAL30; 
                31 : r_cmd_dst_fifo[j] <= NB_CMD_VAL31; 
                32 : r_cmd_dst_fifo[j] <= NB_CMD_VAL32; 
                33 : r_cmd_dst_fifo[j] <= NB_CMD_VAL33; 
                34 : r_cmd_dst_fifo[j] <= NB_CMD_VAL34; 
                35 : r_cmd_dst_fifo[j] <= NB_CMD_VAL35; 
                36 : r_cmd_dst_fifo[j] <= NB_CMD_VAL36; 
                37 : r_cmd_dst_fifo[j] <= NB_CMD_VAL37; 
                38 : r_cmd_dst_fifo[j] <= NB_CMD_VAL38; 
                39 : r_cmd_dst_fifo[j] <= NB_CMD_VAL39; 
                40 : r_cmd_dst_fifo[j] <= NB_CMD_VAL40; 
                41 : r_cmd_dst_fifo[j] <= NB_CMD_VAL41; 
                42 : r_cmd_dst_fifo[j] <= NB_CMD_VAL42; 
                43 : r_cmd_dst_fifo[j] <= NB_CMD_VAL43; 
                44 : r_cmd_dst_fifo[j] <= NB_CMD_VAL44; 
                45 : r_cmd_dst_fifo[j] <= NB_CMD_VAL45; 
                46 : r_cmd_dst_fifo[j] <= NB_CMD_VAL46; 
                47 : r_cmd_dst_fifo[j] <= NB_CMD_VAL47; 
                48 : r_cmd_dst_fifo[j] <= NB_CMD_VAL48; 
                49 : r_cmd_dst_fifo[j] <= NB_CMD_VAL49; 
                50 : r_cmd_dst_fifo[j] <= NB_CMD_VAL50; 
                51 : r_cmd_dst_fifo[j] <= NB_CMD_VAL51; 
                52 : r_cmd_dst_fifo[j] <= NB_CMD_VAL52; 
                53 : r_cmd_dst_fifo[j] <= NB_CMD_VAL53; 
                54 : r_cmd_dst_fifo[j] <= NB_CMD_VAL54; 
                55 : r_cmd_dst_fifo[j] <= NB_CMD_VAL55; 
                56 : r_cmd_dst_fifo[j] <= NB_CMD_VAL56; 
                57 : r_cmd_dst_fifo[j] <= NB_CMD_VAL57; 
                58 : r_cmd_dst_fifo[j] <= NB_CMD_VAL58; 
                59 : r_cmd_dst_fifo[j] <= NB_CMD_VAL59; 
                60 : r_cmd_dst_fifo[j] <= NB_CMD_VAL60; 
                61 : r_cmd_dst_fifo[j] <= NB_CMD_VAL61; 
                62 : r_cmd_dst_fifo[j] <= NB_CMD_VAL62; 
                63 : r_cmd_dst_fifo[j] <= NB_CMD_VAL63; 
                64 : r_cmd_dst_fifo[j] <= NB_CMD_VAL64; 
                65 : r_cmd_dst_fifo[j] <= NB_CMD_VAL65; 
                66 : r_cmd_dst_fifo[j] <= NB_CMD_VAL66; 
                67 : r_cmd_dst_fifo[j] <= NB_CMD_VAL67; 
                68 : r_cmd_dst_fifo[j] <= NB_CMD_VAL68; 
                69 : r_cmd_dst_fifo[j] <= NB_CMD_VAL69; 
                70 : r_cmd_dst_fifo[j] <= NB_CMD_VAL70; 
                71 : r_cmd_dst_fifo[j] <= NB_CMD_VAL71; 
                72 : r_cmd_dst_fifo[j] <= NB_CMD_VAL72; 
                73 : r_cmd_dst_fifo[j] <= NB_CMD_VAL73; 
                74 : r_cmd_dst_fifo[j] <= NB_CMD_VAL74; 
                75 : r_cmd_dst_fifo[j] <= NB_CMD_VAL75; 
                76 : r_cmd_dst_fifo[j] <= NB_CMD_VAL76; 
                77 : r_cmd_dst_fifo[j] <= NB_CMD_VAL77; 
                78 : r_cmd_dst_fifo[j] <= NB_CMD_VAL78; 
                79 : r_cmd_dst_fifo[j] <= NB_CMD_VAL79; 
                80 : r_cmd_dst_fifo[j] <= NB_CMD_VAL80; 
                81 : r_cmd_dst_fifo[j] <= NB_CMD_VAL81; 
                82 : r_cmd_dst_fifo[j] <= NB_CMD_VAL82; 
                83 : r_cmd_dst_fifo[j] <= NB_CMD_VAL83; 
                84 : r_cmd_dst_fifo[j] <= NB_CMD_VAL84; 
                85 : r_cmd_dst_fifo[j] <= NB_CMD_VAL85; 
                86 : r_cmd_dst_fifo[j] <= NB_CMD_VAL86; 
                87 : r_cmd_dst_fifo[j] <= NB_CMD_VAL87; 
                88 : r_cmd_dst_fifo[j] <= NB_CMD_VAL88; 
                89 : r_cmd_dst_fifo[j] <= NB_CMD_VAL89; 
                90 : r_cmd_dst_fifo[j] <= NB_CMD_VAL90; 
                91 : r_cmd_dst_fifo[j] <= NB_CMD_VAL91; 
                92 : r_cmd_dst_fifo[j] <= NB_CMD_VAL92; 
                93 : r_cmd_dst_fifo[j] <= NB_CMD_VAL93; 
                94 : r_cmd_dst_fifo[j] <= NB_CMD_VAL94; 
                95 : r_cmd_dst_fifo[j] <= NB_CMD_VAL95; 
                96 : r_cmd_dst_fifo[j] <= NB_CMD_VAL96; 
                97 : r_cmd_dst_fifo[j] <= NB_CMD_VAL97; 
                98 : r_cmd_dst_fifo[j] <= NB_CMD_VAL98; 
                99 : r_cmd_dst_fifo[j] <= NB_CMD_VAL99; 
                100: r_cmd_dst_fifo[j] <= NB_CMD_VAL100;
                101: r_cmd_dst_fifo[j] <= NB_CMD_VAL101;
                102: r_cmd_dst_fifo[j] <= NB_CMD_VAL102;
                103: r_cmd_dst_fifo[j] <= NB_CMD_VAL103;
                104: r_cmd_dst_fifo[j] <= NB_CMD_VAL104;
                105: r_cmd_dst_fifo[j] <= NB_CMD_VAL105;
                106: r_cmd_dst_fifo[j] <= NB_CMD_VAL106;
                107: r_cmd_dst_fifo[j] <= NB_CMD_VAL107;
                108: r_cmd_dst_fifo[j] <= NB_CMD_VAL108;
                109: r_cmd_dst_fifo[j] <= NB_CMD_VAL109;
                110: r_cmd_dst_fifo[j] <= NB_CMD_VAL110;
                111: r_cmd_dst_fifo[j] <= NB_CMD_VAL111;
                112: r_cmd_dst_fifo[j] <= NB_CMD_VAL112;
                113: r_cmd_dst_fifo[j] <= NB_CMD_VAL113;
                114: r_cmd_dst_fifo[j] <= NB_CMD_VAL114;
                115: r_cmd_dst_fifo[j] <= NB_CMD_VAL115;
                116: r_cmd_dst_fifo[j] <= NB_CMD_VAL116;
                117: r_cmd_dst_fifo[j] <= NB_CMD_VAL117;
                118: r_cmd_dst_fifo[j] <= NB_CMD_VAL118;
                119: r_cmd_dst_fifo[j] <= NB_CMD_VAL119;
                120: r_cmd_dst_fifo[j] <= NB_CMD_VAL120;
                121: r_cmd_dst_fifo[j] <= NB_CMD_VAL121;
                122: r_cmd_dst_fifo[j] <= NB_CMD_VAL122;
                123: r_cmd_dst_fifo[j] <= NB_CMD_VAL123;
                124: r_cmd_dst_fifo[j] <= NB_CMD_VAL124;
                125: r_cmd_dst_fifo[j] <= NB_CMD_VAL125;
                126: r_cmd_dst_fifo[j] <= NB_CMD_VAL126;
                127: r_cmd_dst_fifo[j] <= NB_CMD_VAL127;
                endcase
            end
            else if(r_shk_rd_ready_pos_d1
                &&  r_shk_rd_sdata_byte == 0
                &&  r_shk_rd_sdata_able) //
            begin
                if(j + NB_PKG_HEAD == r_shk_rd_sdata_addr)
                begin
                    r_cmd_dst_fifo[j] <= r_shk_rd_sdata_fifo; //
                end
            end
        end
        assign m_cmd_dst_arry[WD_CMD_DATA*(j+1)-1:WD_CMD_DATA*j] = r_cmd_dst_fifo[j];
        
    end
endgenerate
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_cmd_dst_updt <= 1'b0; //
    end
    else if(1) //
    begin
        r_cmd_dst_updt <=  r_shk_rd_sdata_able; //
    end
end
assign m_cmd_dst_updt =  MD_SIM_ABLE ? r_shk_rd_sdata_able && !r_cmd_dst_updt : 
                         !r_shk_rd_sdata_able && r_cmd_dst_updt; //after able cmd and sleep start to update
// ----------------------------------------------------------
// write back
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_valid <= 1'b0; //
    end
    // else if(MD_SIM_ABLE && r_shk_rd_sdata_able && !r_cmd_dst_updt) //sim mode: pre send valid to save sim time
    // begin
    //     r_shk_wr_valid <= 1'b1;
    // end
    else if(m_cmd_dst_updt) //
    begin
        r_shk_wr_valid <= 1'b1;  //
    end
    else if(m_shk_wr_ready)
    begin
        r_shk_wr_valid <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_valid_flg <= 1'b0; //
    end
    else if(m_cmd_dst_updt && !r_shk_wr_valid) //first cmd
    begin 
        r_shk_wr_valid_flg <= 1'b1;  //
    end
    else if(r_shk_wr_msync)
    begin
        r_shk_wr_valid_flg <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_valid_d1 <= 1'b0; //
    end
    else if(1) //
    begin
        r_shk_wr_valid_d1 <= r_shk_wr_valid;  //
    end
end
assign w_shk_wr_valid_pos = r_shk_wr_valid && !r_shk_wr_valid_d1;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_msync <= 1'b0; //
    end
    else if(r_shk_wr_valid_flg && m_shk_wr_ssync) //first sync allow
    begin
        r_shk_wr_msync <= 1'b1;  //
    end
    else if(r_shk_wr_msync_cunt == NB_BCK_DATA) //include "/n"
    begin
        r_shk_wr_msync <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_msync_cunt <= 1'b0; //
    end
    else if(!r_shk_wr_msync) //
    begin
        r_shk_wr_msync_cunt <= 1'b0;  //
    end
    else 
    begin
        r_shk_wr_msync_cunt <= r_shk_wr_msync_cunt  + 1'b1;
    end
end

always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_wr_mdata <= 1'b0; //
    end
    else if(r_shk_wr_msync_cunt == NB_BCK_DATA - 1'b1) //
    begin
        r_shk_wr_mdata <= "\n\t\t\t";  //
    end
    else if(r_shk_wr_msync_cunt == NB_BCK_DATA)
    begin
        r_shk_wr_mdata <= 'hffffffff;
    end
    else if(!r_shk_wr_msync)
    begin
        r_shk_wr_mdata <= w_string_array[0];
    end
    else 
    begin
        r_shk_wr_mdata <= w_string_array[r_shk_wr_msync_cunt+1];
    end
end
assign w_string_int = SR_BCK_DATA; //little format
generate genvar m;
    for(m = 0; m < NB_BCK_BYTE; m = m + 1)
    begin:FOR_NB_BCK_BYTE
        assign w_string_int_big[WD_BYTE*(m+1)-1:WD_BYTE*m] = w_string_int[WD_BYTE*(NB_BCK_BYTE-m)-1:WD_BYTE*(NB_BCK_BYTE-m-1)];
    end
endgenerate
generate genvar k;
    for(k = 0; k < NB_BCK_DATA; k = k + 1)
    begin:FOR_NB_BCK_DATA
        assign w_string_array[k] = w_string_int_big[WD_BCK_DATA*(k+1)-1:WD_BCK_DATA*k]; //big format
    end
endgenerate
assign m_shk_wr_valid = r_shk_wr_valid;
assign m_shk_wr_msync = r_shk_wr_msync;
assign m_shk_wr_mdata = r_shk_wr_mdata;
assign m_shk_wr_maddr = MD_CMD_START;
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