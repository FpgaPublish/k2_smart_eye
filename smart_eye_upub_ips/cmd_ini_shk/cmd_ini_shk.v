`timescale 1ns / 1ps
/*
           
 <details> 
           
```verilog
*/
// *******************************************************************************
// Company: Fpga Publish
// Engineer: FP 
// 
// Create Date: 2023/12/16 14:50:26
// Design Name: 
// Module Name: cmd_ini_shk
// Project Name: 
// Target Devices: ZYNQ7010 | XCZU2CG | Kintex7
// Tool Versions: 2021.1 || 2022.2
// Description: 
//         * 
// Dependencies: 
//         * 
// Revision: 0.01 
// Revision 0.01 - File Created
//          1.1  - add CHECK addr filter
// Additional Comments:
// 
// *******************************************************************************
module cmd_ini_shk #(
    //mode
    parameter MD_SIM_ABLE = 0,
    //number
    //check addr
    parameter NB_CHECK_ADDR = 16'h3012 , //1.1  - add CHECK addr filter
    //cmd input
    parameter WD_CMD_DATA = 32,
    parameter NB_CMD_ORDE = 32,
    //shake bus
    parameter WD_SHK0_DATA = 8 ,
    parameter WD_SHK0_ADDR = 32,
    //iic addr
    parameter NB_IIC_WR = 8'h20,
    parameter NB_IIC_RD = 8'h21,
    //shake bus
    parameter WD_SHKA_DATA = 32,
    parameter WD_SHKA_ADDR = 32,
    parameter NB_BCK_CODE = 32'h1331_0002,
    parameter SR_BCK_DATA = "camera set succed",
    parameter SR_BCK_ERR  = "camera set error" ,
    parameter NB_BCK_DATA = 5, //max 255
    //width
    parameter WD_ERR_INFO = 4
   )(
    //system signals
    input           i_sys_clk   ,  
    input           i_sys_resetn,  
    //cmd input
    input   [WD_CMD_DATA*NB_CMD_ORDE-1:0]  s_cmd_src_arry,
    input                                  s_cmd_src_updt,
    //shake cmd master
    output                       m_shk_0_cmd_valid,
    output                       m_shk_0_cmd_msync,
    output   [WD_SHK0_DATA-1:0]  m_shk_0_cmd_mdata,
    output   [WD_SHK0_DATA-1:0]  m_shk_0_cmd_mdat1,
    output   [WD_SHK0_ADDR-1:0]  m_shk_0_cmd_maddr,
    input                        m_shk_0_cmd_ready,
    input                        m_shk_0_cmd_ssync,
    input    [WD_SHK0_DATA-1:0]  m_shk_0_cmd_sdata,
    input    [WD_SHK0_ADDR-1:0]  m_shk_0_cmd_saddr, 
    //shake back cmd master
    output                       m_shk_a_bck_valid,
    output                       m_shk_a_bck_msync,
    output   [WD_SHKA_DATA-1:0]  m_shk_a_bck_mdata,
    output   [WD_SHKA_ADDR-1:0]  m_shk_a_bck_maddr,
    input                        m_shk_a_bck_ready,
    input                        m_shk_a_bck_ssync,
    input    [WD_SHKA_DATA-1:0]  m_shk_a_bck_sdata,
    input    [WD_SHKA_ADDR-1:0]  m_shk_a_bck_saddr, 
    
    //error info feedback
    output   [WD_ERR_INFO-1:0]  m_err_cmd_info1
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
localparam WD_CMD_ORDE = LOG2(NB_CMD_ORDE);
//========================================================
//localparam to converation and calculate
localparam WD_BYTE = 8; //byte == 8bit
localparam NB_SRC_DIV_DST = WD_SHKA_DATA / WD_BYTE;
localparam NB_BCK_BYTE    = NB_SRC_DIV_DST * NB_BCK_DATA;
//========================================================
//register and wire to time sequence and combine
// ----------------------------------------------------------
// cmd convert
wire [WD_CMD_DATA-1:0]  w_cmd_src_arry [0:NB_CMD_ORDE-1];
// ----------------------------------------------------------
// shk cmd ini
//write data
reg                     r_shk_0_cmd_valid;
reg                     r_shk_0_cmd_msync;
reg [WD_SHK0_DATA-1:0]  r_shk_0_cmd_mdata;
reg [WD_SHK0_DATA-1:0]  r_shk_0_cmd_mdat1;
reg [WD_SHK0_ADDR-1:0]  r_shk_0_cmd_maddr = 0; //not used

assign m_shk_0_cmd_valid = r_shk_0_cmd_valid;
assign m_shk_0_cmd_msync = r_shk_0_cmd_msync;
assign m_shk_0_cmd_mdata = r_shk_0_cmd_mdata;
assign m_shk_0_cmd_mdat1 = r_shk_0_cmd_mdat1;
assign m_shk_0_cmd_maddr = r_shk_0_cmd_maddr;
//read data
reg [WD_BYTE*2-1:0]    r_read_data_temp;
reg [WD_BYTE  -1:0]    r_read_data_numb;
reg                    r_check_iic_flag = 0; //0: normal 1: error
// ----------------------------------------------------------
// write times numb count
reg [WD_CMD_ORDE-1:0]   r_cmd_write_numb;
// ----------------------------------------------------------
// write back
reg                       r_shk_a_bck_valid;
reg                       r_shk_a_bck_valid_d1;
wire                      w_shk_a_bck_valid_pos;
reg                       r_shk_a_bck_valid_wait;
reg                       r_shk_a_bck_msync;
reg   [WD_BYTE    -1:0]   r_shk_a_bck_msync_cunt;
reg   [WD_SHKA_DATA-1:0]  r_shk_a_bck_mdata;
reg   [WD_SHKA_ADDR-1:0]  r_shk_a_bck_maddr;
//string 
wire  [NB_BCK_DATA*WD_SHKA_DATA-1:0] w_string_int;
wire  [NB_BCK_DATA*WD_SHKA_DATA-1:0] w_string_int_big;
wire  [WD_SHKA_DATA-1:0]   w_string_array [0:NB_BCK_DATA-1];
//connect
assign m_shk_a_bck_valid = r_shk_a_bck_valid;
assign m_shk_a_bck_msync = r_shk_a_bck_msync;
assign m_shk_a_bck_mdata = r_shk_a_bck_mdata;
assign m_shk_a_bck_maddr = NB_BCK_CODE;
//========================================================
//always and assign to drive logic and connect
/* end verilog
```
           
 </details> 
           
```mermaid
stateDiagram
IDLE     -->START    : update
START    -->WRITE_REQ: 1
WRITE_REQ-->WRITE_DAT: 1
WRITE_DAT-->ADDR_REQ : shk_0 ready
ADDR_REQ -->ADDR_DAT : 1
ADDR_DAT -->READ_REQ : shk_0 ready
READ_REQ -->READ_DAT : 1
READ_DAT -->CHECK_DAT: shk_0 ready
CHECK_DAT-->START    : cmd number not full
CHECK_DAT-->OVER     : cmd write full
OVER     -->IDLE     : 1
```
           
 <details> 
           
```verilog
*/
/* @begin state machine */
//state name
localparam IDLE         = 0;
localparam START        = 1;
localparam WRITE_REQ    = 2;
localparam WRITE_DAT    = 3;
localparam ADDR_REQ     = 8;
localparam ADDR_DAT     = 9;
localparam READ_REQ     = 4;
localparam READ_DAT     = 5;
localparam CHECH_DAT    = 6;
localparam OVER         = 7;
//state variable
reg [3:0] cstate = IDLE;
reg [7:0] r_dat_send_cnt = 0;
//state logic
always @(posedge i_sys_clk)
    if(!i_sys_resetn)
    begin
       cstate <= IDLE;
    end
    else
    begin
        case(cstate)
            IDLE : if(s_cmd_src_updt) //whether goto next state
                begin  
                    if(1) //which state to go
                    begin
                        cstate <= START;
                    end
                end
            START: if(1) //state change: cmd update
                begin
                    if(1) //state switch:
                    begin
                        cstate <= WRITE_REQ;
                    end
                end
            WRITE_REQ: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= WRITE_DAT;
                    end
                end
            WRITE_DAT: if(m_shk_0_cmd_ready) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= ADDR_REQ;
                    end
                end
            ADDR_REQ: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= ADDR_DAT;
                    end
                end
            ADDR_DAT: if(m_shk_0_cmd_ready) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= READ_REQ;
                    end
                end
            READ_REQ: if(1) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= READ_DAT;
                    end
                end
            READ_DAT: if(m_shk_0_cmd_ready) //state change:
                begin
                    if(1) //state switch:
                    begin
                        cstate <= CHECH_DAT;
                    end
                end
            CHECH_DAT: if(1)
                begin
                    if(r_cmd_write_numb == NB_CMD_ORDE  - 1'b1)
                    begin
                        cstate <= OVER;
                    end
                    else 
                    begin
                        cstate <= START;
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
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_dat_send_cnt <= 1'b0;
    end
    else if(cstate == WRITE_REQ || cstate == ADDR_REQ || cstate == READ_REQ)
    begin
        r_dat_send_cnt <= 1'b0;
    end
    else if(cstate == WRITE_DAT || cstate == ADDR_DAT || cstate == READ_DAT)
    begin
        r_dat_send_cnt <= (  r_dat_send_cnt[8-1]  ) ? r_dat_send_cnt :
                             r_dat_send_cnt + 1'b1;
    end
end
// ----------------------------------------------------------
// cmd convert
generate genvar i;
    for(i = 0; i < NB_CMD_ORDE; i = i + 1)
    begin:FOR_NB_CMD_ORDE
        assign w_cmd_src_arry[i] = s_cmd_src_arry[WD_CMD_DATA*(i+1)-1:WD_CMD_DATA*i];
    end
endgenerate
// ----------------------------------------------------------
// shk cmd 
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_shk_0_cmd_valid <= 1'b0;
    end
    else if(cstate == WRITE_REQ || cstate == ADDR_REQ || cstate == READ_REQ)
    begin
        r_shk_0_cmd_valid <= 1'b1;
    end
    else if(cstate == WRITE_DAT || cstate == ADDR_DAT || cstate == READ_DAT)
    begin
        r_shk_0_cmd_valid <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_shk_0_cmd_msync <= 1'b0;
    end
    else if(cstate == WRITE_DAT)
    begin
        if(r_dat_send_cnt < 2 + 2 + 1)  //send 2 byte data 
                                        //and 2 byte addr
                                        //and 1 head to write
        begin
            r_shk_0_cmd_msync <= 1'b1;
        end
        else 
        begin
            r_shk_0_cmd_msync <= 1'b0;
        end
    end
    else if(cstate == ADDR_DAT)
    begin
        if(r_dat_send_cnt < 2 + 1)  //send 2 byte addr 
                                    //and 1 head to write
        begin
            r_shk_0_cmd_msync <= 1'b1;
        end
        else 
        begin
            r_shk_0_cmd_msync <= 1'b0;
        end
    end
    else if(cstate == READ_DAT)
    begin
        if(r_dat_send_cnt <  1)  //and 1 head to write
        begin
            r_shk_0_cmd_msync <= 1'b1;
        end
        else 
        begin
            r_shk_0_cmd_msync <= 1'b0;
        end
    end
end
always@(posedge i_sys_clk)
begin
    if(1) //addr monitor
    begin
        r_shk_0_cmd_maddr <= w_cmd_src_arry[r_cmd_write_numb];
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_shk_0_cmd_mdata <= 1'b0;
    end
    else if(cstate == WRITE_DAT)
    begin
        case(r_dat_send_cnt)
            0: r_shk_0_cmd_mdata <= NB_IIC_WR;
            1: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*4-1:WD_BYTE*3];
            2: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*3-1:WD_BYTE*2];
            3: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*2-1:WD_BYTE*1];
            4: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*1-1:WD_BYTE*0];
        endcase
    end
    else if(cstate == ADDR_DAT)
    begin
        case(r_dat_send_cnt)
            0: r_shk_0_cmd_mdata <= NB_IIC_WR;
            1: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*4-1:WD_BYTE*3];
            2: r_shk_0_cmd_mdata <= w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*3-1:WD_BYTE*2];
        endcase
    end
    else if(cstate == READ_DAT)
    begin
        case(r_dat_send_cnt)
            0: r_shk_0_cmd_mdata <= NB_IIC_RD;
        endcase
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE || cstate == START) //state IDLE reset
    begin
        r_shk_0_cmd_mdat1 <= 1'b0;
    end
    else if(cstate == READ_REQ)
    begin
        r_shk_0_cmd_mdat1 <= 2'd2; //just read 2 byte data read
    end
end
//read data
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_read_data_temp <= 1'b0;
    end
    else if(cstate == READ_DAT)
    begin
        if(m_shk_0_cmd_ssync)
        begin
            case(r_read_data_numb)
                0: r_read_data_temp[WD_BYTE*2-1:WD_BYTE*1] <= m_shk_0_cmd_sdata;
                1: r_read_data_temp[WD_BYTE*1-1:WD_BYTE*0] <= m_shk_0_cmd_sdata;
            endcase
        end
        
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE || cstate == CHECH_DAT) //state IDLE reset
    begin
        r_read_data_numb <= 1'b0;
    end
    else if(cstate == READ_DAT)
    begin
        if(m_shk_0_cmd_ssync)
        begin
            r_read_data_numb <= r_read_data_numb[WD_BYTE-1] ? r_read_data_numb : 
                                r_read_data_numb + 1'b1;
        end
    end
end
always@(posedge i_sys_clk)
begin
    if(cstate == START) //state START reset, new cmd recv
    begin
        r_check_iic_flag <= 1'b0;
    end
    else if(cstate == CHECH_DAT)
    begin
        if(r_read_data_temp != w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*2-1:WD_BYTE*0]
            && NB_CHECK_ADDR == w_cmd_src_arry[r_cmd_write_numb][WD_BYTE*4-1:WD_BYTE*3])
        begin
            r_check_iic_flag <= 1'b1;
        end
    end
end
// ----------------------------------------------------------
// write times numb count
always@(posedge i_sys_clk)
begin
    if(cstate == IDLE) //state IDLE reset
    begin
        r_cmd_write_numb <= 1'b0;
    end
    else if(cstate == CHECH_DAT)
    begin
        r_cmd_write_numb <= r_cmd_write_numb + 1'b1;
    end
end
// ----------------------------------------------------------
// write back
wire w_sim_cmd_back = cstate == OVER;
wire w_run_cmd_back = cstate == OVER;
wire w_bck_cmd_flag = r_check_iic_flag;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_valid <= 1'b0; //
    end
    else if(MD_SIM_ABLE && w_sim_cmd_back) //sim mode: pre send valid to save sim time
    begin
        r_shk_a_bck_valid <= 1'b1;
    end
    else if(w_run_cmd_back) //
    begin
        r_shk_a_bck_valid <= 1'b1;  //
    end
    else if(m_shk_a_bck_ready)
    begin
        r_shk_a_bck_valid <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_valid_d1 <= 1'b0; //
    end
    else if(1) //
    begin
        r_shk_a_bck_valid_d1 <= r_shk_a_bck_valid;  //
    end
end
assign w_shk_a_bck_valid_pos = r_shk_a_bck_valid && !r_shk_a_bck_valid_d1;
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_valid_wait <= 1'b0; //
    end
    else if(w_shk_a_bck_valid_pos) //
    begin
        r_shk_a_bck_valid_wait <= 1'b1;  //
    end
    else if(r_shk_a_bck_msync)
    begin
        r_shk_a_bck_valid_wait <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_msync <= 1'b0; //
    end
    else if(r_shk_a_bck_valid_wait && m_shk_a_bck_ssync) //
    begin
        r_shk_a_bck_msync <= 1'b1;  //
    end
    else if(r_shk_a_bck_msync_cunt == NB_BCK_DATA) //include "/n"
    begin
        r_shk_a_bck_msync <= 1'b0;
    end
end
always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_msync_cunt <= 1'b0; //
    end
    else if(!r_shk_a_bck_msync) //
    begin
        r_shk_a_bck_msync_cunt <= 1'b0;  //
    end
    else 
    begin
        r_shk_a_bck_msync_cunt <= r_shk_a_bck_msync_cunt  + 1'b1;
    end
end

always@(posedge i_sys_clk)
begin
    if(!i_sys_resetn) //system reset
    begin
        r_shk_a_bck_mdata <= 1'b0; //
    end
    else if(r_shk_a_bck_msync_cunt == NB_BCK_DATA - 1'b1) //
    begin
        r_shk_a_bck_mdata <= "\n\t\t\t";  //
    end
    else if(r_shk_a_bck_msync_cunt == NB_BCK_DATA)
    begin
        r_shk_a_bck_mdata <= 'hffffffff;
    end
    else if(!r_shk_a_bck_msync)
    begin
        r_shk_a_bck_mdata <= w_string_array[0];
    end
    else 
    begin
        r_shk_a_bck_mdata <= w_string_array[r_shk_a_bck_msync_cunt+1];
    end
end
assign w_string_int = (w_bck_cmd_flag ) ? SR_BCK_ERR : SR_BCK_DATA; //little format
generate genvar m;
    for(m = 0; m < NB_BCK_BYTE; m = m + 1)
    begin:FOR_NB_BCK_BYTE
        assign w_string_int_big[WD_BYTE*(m+1)-1:WD_BYTE*m] = w_string_int[WD_BYTE*(NB_BCK_BYTE-m)-1:WD_BYTE*(NB_BCK_BYTE-1-m)];
    end
endgenerate
generate genvar k;
    for(k = 0; k < NB_BCK_DATA; k = k + 1)
    begin:FOR_NB_BCK_DATA2
        assign w_string_array[k] = w_string_int_big[WD_SHKA_DATA*(k+1)-1:WD_SHKA_DATA*k]; //big format
    end
endgenerate

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