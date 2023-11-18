/******************************************************************************
// (c) Copyright 2019 - 2020 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
******************************************************************************/
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor             : Xilinx
// \   \   \/     Version            : 1.0
//  \   \         Application        : HBM2e
//  /   /         Filename           : hbm2e_pl_v1_0_0_mc_lcl_package.sv
// /___/   /\     Date Last Modified : $Date: 2020/11/16 $
// \   \  /  \    Date Created       : Nov 16 2020
//  \___\/\___\
//
// Device           : Versal
// Design Name      : hbm2e_pl_v1_0_0_mc_top_wrapper.sv
// Purpose          : 
// Reference        : 
// Revision History :
//*****************************************************************************

`ifndef LCL_DTYPE_DEF
	`define LCL_DTYPE_DEF
	package LCL_DTYPE;

	typedef	enum logic [3:0] {nop, rd, wr, act, pre, preall, gref, mrs} opcode; 

	typedef struct packed { 
		opcode		      cmd_op; //col_op: MRS,RD,WR &&  row_op:ACT,PRE,PREALL,GREF
		logic [14:0]	  row;  //can be 15bits 
		logic [4:0]	    col;  //For MRS we will use this as op4-0
		logic [4:0]	    bank;	// max 32 banks
		logic [1:0]     slot; //can be s_0/1/2/3
		logic           valid;//can be  0/1
		logic [7:5]     mr_msb; //MR op[7:5]
	  } arb_win_cmdS;

	typedef struct packed { 
	  logic	[17:0]		add_col;// column command address, includes both pos edge and neg edge
		logic	[13:0]		add_row;// row command address , includes both pos edge and neg edge
	  } phy_bus;
  

	typedef struct packed { 
	  opcode    cmd_type;
	  logic	[14:0]	row;
	  //logic	[5:0]	col;
	  logic	[4:0]	col;
	  logic	[3:0]	ba;
	  logic	[0:0]	sid;
	  `ifdef SHMC_VERIF_UID
		logic	[40-1:0]	uid;
	  `endif
	  //logic	[1:0]	cmd;
	   //logic			cmd_rdy;
	  //logic			cmd_rdy_ns;
	  logic	[31:0]	cmd_id;
	  logic	[4:0]	dbuf_addr;
	  logic	[4:0]	wr_resp_fifo_addr;
	  logic			cmd_en;
    } struct_lbus;
  

  `define NO_OF_CMDQ 4 
  `define WR_CMDQ_E 0
  `define WR_CMDQ_O 1
  `define RD_CMDQ_E 2
  `define RD_CMDQ_O 3
  `define WR_BUF_SIZE 32
  `define RD_BUF_SIZE 32
  `define WR_BUF_ADDR_WIDTH   5
  `define RD_BUF_ADDR_WIDTH   5
  `define AXI_WR_CMD_WIDTH  C_S_AXI_ID_WIDTH+C_S_AXI_ADDR_WIDTH+8+3+2+1+4+3+4+1
  `define AXI_RD_CMD_WIDTH  C_S_AXI_ID_WIDTH+C_S_AXI_ADDR_WIDTH+8+3+2+1+4+3+4+1
  //`define LBUS_CMD_BEAT     7:0
  //`define LBUS_CMD_AXI_ID   C_S_AXI_ID_WIDTH+8-1:8 
  //`define LBUS_CMD_PORT     C_S_AXI_ID_WIDTH+8

  `define LBUS_CMD_LAST     0
  `define LBUS_CMD_AXI_ID   C_S_AXI_ID_WIDTH:1 
  `define LBUS_CMD_PORT     C_S_AXI_ID_WIDTH+1

  `define DEF_CLOG2(x) \
      (x <= 2)   ? 1 : \
      (x <= 4)   ? 2 : \
      (x <= 8)   ? 3 : \
      (x <= 16)  ? 4 : \
      (x <= 32)  ? 5 : \
      (x <= 64)  ? 6 : \
      (x <= 128) ? 7 : \
      (x <= 256) ? 8 : \
      (x <= 512) ? 9 : \
      (x <= 1024) ? 10 : \
      (x <= 2048) ? 11 : \
      (x <= 4096) ? 12 : \
      (x <= 8192) ? 13 : \
      (x <= 16384) ? 14 : \
      (x <= 32768) ? 15 : \
      (x <= 65536) ? 16 : \
      (x <= 131072) ? 17 : \
      (x <= 262144) ? 18 : \
      (x <= 524288) ? 19 : \
      (x <= 1048576) ? 20 : \
      (x <= 2097152) ? 21 : \
      (x <= 4194304) ? 22 : \
      (x <= 8388608) ? 23 : \
      (x <= 16777216) ? 24 : \
      -1

  `define D_FLOP_RST(input_clk, input_sig, output_sig, input_rst, rst_value)    \
  always_ff @(posedge input_clk) begin  \
    if (input_rst) begin                                     \
      output_sig <= rst_value;                               \
    end else begin                                           \
      output_sig <= input_sig;                               \
    end                                                      \
  end

  `define ASSERT_DEFAULT_CLK aclk
  `define ASSERT_DEFAULT_RST aresetn

  `define ASSERT(__name, __prop,__print , __clk = `ASSERT_DEFAULT_CLK, __rst = `ASSERT_DEFAULT_RST)     \
        __name: assert property (@(posedge __clk) disable iff ((__rst) !== '0) (__prop))       \
        else begin                                                                             \
                $display ("%s FAIL",__print);                                                   \
        end
  
  `define COVER(__name, __prop,__print, __clk = `ASSERT_DEFAULT_CLK)     \
        __name: cover property (@(posedge __clk) (__prop))  ;      
                //$display ("");
                //$display ("%s PASS",__print);
      

	endpackage

	import LCL_DTYPE::*;
	//import LCL_DTYPE::opcode;
`endif
