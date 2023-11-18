// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Sun Nov 19 00:15:06 2023
// Host        : fpgaPublish running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/fpga/u1_library/k2_smart_eye/smart_eye_upl_demo/spi.sim/sim_1/synth/func/xsim/tb_uart_func_synth.v
// Design      : design_x7_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_x7.hwdef" *) 
module design_x7
   (clk_in1_0,
    s_port_uart_0_mrx,
    s_port_uart_0_mtx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_x7_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  (* X_INTERFACE_INFO = "fpgaPublish:user:uart0:1.0 s_port_uart_0 mrx" *) output s_port_uart_0_mrx;
  (* X_INTERFACE_INFO = "fpgaPublish:user:uart0:1.0 s_port_uart_0 mtx" *) input s_port_uart_0_mtx;

  wire clk_in1_0;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire rst_clk_wiz_0_100M_peripheral_aresetn;
  wire s_port_uart_0_mrx;
  wire s_port_uart_0_mtx;
  wire [7:0]sim_to_shk_0_m_shk_sim_maddr;
  wire [7:0]sim_to_shk_0_m_shk_sim_mdata;
  wire sim_to_shk_0_m_shk_sim_msync;
  wire sim_to_shk_0_m_shk_sim_ready;
  wire [7:0]sim_to_shk_0_m_shk_sim_saddr;
  wire [7:0]sim_to_shk_0_m_shk_sim_sdata;
  wire sim_to_shk_0_m_shk_sim_ssync;
  wire sim_to_shk_0_m_shk_sim_valid;
  wire [7:0]sim_to_shk_1_m_shk_sim_maddr;
  wire [7:0]sim_to_shk_1_m_shk_sim_mdata;
  wire sim_to_shk_1_m_shk_sim_msync;
  wire sim_to_shk_1_m_shk_sim_ready;
  wire [7:0]sim_to_shk_1_m_shk_sim_saddr;
  wire [7:0]sim_to_shk_1_m_shk_sim_sdata;
  wire sim_to_shk_1_m_shk_sim_ssync;
  wire sim_to_shk_1_m_shk_sim_valid;
  wire NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED;
  wire [3:0]NLW_shk_to_uart_0_m_err_uart_info1_UNCONNECTED;
  wire [3:0]NLW_sim_to_shk_0_m_err_sim_info1_UNCONNECTED;
  wire [15:8]NLW_sim_to_shk_0_m_shk_sim_maddr_UNCONNECTED;
  wire [15:8]NLW_sim_to_shk_0_m_shk_sim_mdata_UNCONNECTED;
  wire [3:0]NLW_sim_to_shk_1_m_err_sim_info1_UNCONNECTED;
  wire [15:8]NLW_sim_to_shk_1_m_shk_sim_maddr_UNCONNECTED;
  wire [15:8]NLW_sim_to_shk_1_m_shk_sim_mdata_UNCONNECTED;

  (* IMPORTED_FROM = "/home/fpga/u1_library/k2_smart_eye/smart_eye_upl_demo/spi.gen/sources_1/bd/design_x7/ip/design_x7_clk_wiz_0_0/design_x7_clk_wiz_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  design_x7_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(1'b1));
  (* IMPORTED_FROM = "/home/fpga/u1_library/k2_smart_eye/smart_eye_upl_demo/spi.gen/sources_1/bd/design_x7/ip/design_x7_rst_clk_wiz_0_100M_0/design_x7_rst_clk_wiz_0_100M_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
  design_x7_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_rst_clk_wiz_0_100M_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(1'b1),
        .interconnect_aresetn(NLW_rst_clk_wiz_0_100M_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_rst_clk_wiz_0_100M_mb_reset_UNCONNECTED),
        .peripheral_aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .peripheral_reset(NLW_rst_clk_wiz_0_100M_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  (* X_CORE_INFO = "shk_to_uart,Vivado 2022.2" *) 
  design_x7_shk_to_uart_0_0 shk_to_uart_0
       (.i_sys_clk(clk_wiz_0_clk_out1),
        .i_sys_resetn(clk_wiz_0_locked),
        .m_err_uart_info1(NLW_shk_to_uart_0_m_err_uart_info1_UNCONNECTED[3:0]),
        .s_port_uart_mrx(s_port_uart_0_mrx),
        .s_port_uart_mtx(s_port_uart_0_mtx),
        .s_shk_rd_maddr(sim_to_shk_0_m_shk_sim_maddr),
        .s_shk_rd_mdata(sim_to_shk_0_m_shk_sim_mdata),
        .s_shk_rd_msync(sim_to_shk_0_m_shk_sim_msync),
        .s_shk_rd_ready(sim_to_shk_0_m_shk_sim_ready),
        .s_shk_rd_saddr(sim_to_shk_0_m_shk_sim_saddr),
        .s_shk_rd_sdata(sim_to_shk_0_m_shk_sim_sdata),
        .s_shk_rd_ssync(sim_to_shk_0_m_shk_sim_ssync),
        .s_shk_rd_valid(sim_to_shk_0_m_shk_sim_valid),
        .s_shk_wr_maddr(sim_to_shk_1_m_shk_sim_maddr),
        .s_shk_wr_mdata(sim_to_shk_1_m_shk_sim_mdata),
        .s_shk_wr_msync(sim_to_shk_1_m_shk_sim_msync),
        .s_shk_wr_ready(sim_to_shk_1_m_shk_sim_ready),
        .s_shk_wr_saddr(sim_to_shk_1_m_shk_sim_saddr),
        .s_shk_wr_sdata(sim_to_shk_1_m_shk_sim_sdata),
        .s_shk_wr_ssync(sim_to_shk_1_m_shk_sim_ssync),
        .s_shk_wr_valid(sim_to_shk_1_m_shk_sim_valid));
  (* IMPORTED_FROM = "/home/fpga/u1_library/k2_smart_eye/smart_eye_upl_demo/spi.gen/sources_1/bd/design_x7/ip/design_x7_sim_to_shk_0_0/design_x7_sim_to_shk_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "sim_to_shk,Vivado 2022.2" *) 
  design_x7_sim_to_shk_0_0 sim_to_shk_0
       (.i_sys_clk(clk_wiz_0_clk_out1),
        .i_sys_resetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .m_err_sim_info1(NLW_sim_to_shk_0_m_err_sim_info1_UNCONNECTED[3:0]),
        .m_shk_sim_maddr({NLW_sim_to_shk_0_m_shk_sim_maddr_UNCONNECTED[15:8],sim_to_shk_0_m_shk_sim_maddr}),
        .m_shk_sim_mdata({NLW_sim_to_shk_0_m_shk_sim_mdata_UNCONNECTED[15:8],sim_to_shk_0_m_shk_sim_mdata}),
        .m_shk_sim_msync(sim_to_shk_0_m_shk_sim_msync),
        .m_shk_sim_ready(sim_to_shk_0_m_shk_sim_ready),
        .m_shk_sim_saddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sim_to_shk_0_m_shk_sim_saddr}),
        .m_shk_sim_sdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sim_to_shk_0_m_shk_sim_sdata}),
        .m_shk_sim_ssync(sim_to_shk_0_m_shk_sim_ssync),
        .m_shk_sim_valid(sim_to_shk_0_m_shk_sim_valid));
  (* IMPORTED_FROM = "/home/fpga/u1_library/k2_smart_eye/smart_eye_upl_demo/spi.gen/sources_1/bd/design_x7/ip/design_x7_sim_to_shk_0_1/design_x7_sim_to_shk_0_1.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "sim_to_shk,Vivado 2022.2" *) 
  design_x7_sim_to_shk_0_1 sim_to_shk_1
       (.i_sys_clk(clk_wiz_0_clk_out1),
        .i_sys_resetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .m_err_sim_info1(NLW_sim_to_shk_1_m_err_sim_info1_UNCONNECTED[3:0]),
        .m_shk_sim_maddr({NLW_sim_to_shk_1_m_shk_sim_maddr_UNCONNECTED[15:8],sim_to_shk_1_m_shk_sim_maddr}),
        .m_shk_sim_mdata({NLW_sim_to_shk_1_m_shk_sim_mdata_UNCONNECTED[15:8],sim_to_shk_1_m_shk_sim_mdata}),
        .m_shk_sim_msync(sim_to_shk_1_m_shk_sim_msync),
        .m_shk_sim_ready(sim_to_shk_1_m_shk_sim_ready),
        .m_shk_sim_saddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sim_to_shk_1_m_shk_sim_saddr}),
        .m_shk_sim_sdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sim_to_shk_1_m_shk_sim_sdata}),
        .m_shk_sim_ssync(sim_to_shk_1_m_shk_sim_ssync),
        .m_shk_sim_valid(sim_to_shk_1_m_shk_sim_valid));
endmodule

module design_x7_clk_wiz_0_0
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire locked;
  wire reset;

  design_x7_clk_wiz_0_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .locked(locked),
        .reset(reset));
endmodule

module design_x7_clk_wiz_0_0_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_in1_design_x7_clk_wiz_0_0;
  wire clk_out1;
  wire clk_out1_design_x7_clk_wiz_0_0;
  wire clkfbout_buf_design_x7_clk_wiz_0_0;
  wire clkfbout_design_x7_clk_wiz_0_0;
  wire locked;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_design_x7_clk_wiz_0_0),
        .O(clkfbout_buf_design_x7_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .CCIO_EN("TRUE"),
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_design_x7_clk_wiz_0_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_design_x7_clk_wiz_0_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(10.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_design_x7_clk_wiz_0_0),
        .CLKFBOUT(clkfbout_design_x7_clk_wiz_0_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_design_x7_clk_wiz_0_0),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_design_x7_clk_wiz_0_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_x7_rst_clk_wiz_0_100M_0,proc_sys_reset,{}" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_x7_rst_clk_wiz_0_100M_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET mb_reset:bus_struct_reset:interconnect_aresetn:peripheral_aresetn:peripheral_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input slowest_sync_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ext_reset, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ext_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aux_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aux_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aux_reset_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 dbg_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dbg_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input mb_debug_sys_rst;
  input dcm_locked;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mb_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mb_rst, POLARITY ACTIVE_HIGH, TYPE PROCESSOR, INSERT_VIP 0" *) output mb_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 bus_struct_reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bus_struct_reset, POLARITY ACTIVE_HIGH, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]bus_struct_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_high_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_high_rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 interconnect_low_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interconnect_low_rst, POLARITY ACTIVE_LOW, TYPE INTERCONNECT, INSERT_VIP 0" *) output [0:0]interconnect_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 peripheral_low_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME peripheral_low_rst, POLARITY ACTIVE_LOW, TYPE PERIPHERAL, INSERT_VIP 0" *) output [0:0]peripheral_aresetn;

  wire aux_reset_in;
  wire [0:0]bus_struct_reset;
  wire dcm_locked;
  wire ext_reset_in;
  wire [0:0]interconnect_aresetn;
  wire mb_debug_sys_rst;
  wire mb_reset;
  wire [0:0]peripheral_aresetn;
  wire [0:0]peripheral_reset;
  wire slowest_sync_clk;

  (* C_AUX_RESET_HIGH = "1'b0" *) 
  (* C_AUX_RST_WIDTH = "4" *) 
  (* C_EXT_RESET_HIGH = "1'b0" *) 
  (* C_EXT_RST_WIDTH = "4" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_NUM_BUS_RST = "1" *) 
  (* C_NUM_INTERCONNECT_ARESETN = "1" *) 
  (* C_NUM_PERP_ARESETN = "1" *) 
  (* C_NUM_PERP_RST = "1" *) 
  design_x7_rst_clk_wiz_0_100M_0_proc_sys_reset U0
       (.aux_reset_in(aux_reset_in),
        .bus_struct_reset(bus_struct_reset),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .mb_reset(mb_reset),
        .peripheral_aresetn(peripheral_aresetn),
        .peripheral_reset(peripheral_reset),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module design_x7_rst_clk_wiz_0_100M_0_cdc_sync
   (lpf_asr_reg,
    scndry_out,
    lpf_asr,
    p_1_in,
    p_2_in,
    asr_lpf,
    aux_reset_in,
    slowest_sync_clk);
  output lpf_asr_reg;
  output scndry_out;
  input lpf_asr;
  input p_1_in;
  input p_2_in;
  input [0:0]asr_lpf;
  input aux_reset_in;
  input slowest_sync_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire asr_d1;
  wire [0:0]asr_lpf;
  wire aux_reset_in;
  wire lpf_asr;
  wire lpf_asr_reg;
  wire p_1_in;
  wire p_2_in;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(asr_d1),
        .Q(Q),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1__0 
       (.I0(aux_reset_in),
        .O(asr_d1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAAAAA8)) 
    lpf_asr_i_1
       (.I0(lpf_asr),
        .I1(p_1_in),
        .I2(p_2_in),
        .I3(scndry_out),
        .I4(asr_lpf),
        .O(lpf_asr_reg));
endmodule

(* ORIG_REF_NAME = "cdc_sync" *) 
module design_x7_rst_clk_wiz_0_100M_0_cdc_sync_0
   (lpf_exr_reg,
    scndry_out,
    lpf_exr,
    p_1_in4_in,
    p_2_in3_in,
    exr_lpf,
    mb_debug_sys_rst,
    ext_reset_in,
    slowest_sync_clk);
  output lpf_exr_reg;
  output scndry_out;
  input lpf_exr;
  input p_1_in4_in;
  input p_2_in3_in;
  input [0:0]exr_lpf;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input slowest_sync_clk;

  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ;
  wire \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ;
  wire Q;
  wire exr_d1;
  wire [0:0]exr_lpf;
  wire ext_reset_in;
  wire lpf_exr;
  wire lpf_exr_reg;
  wire mb_debug_sys_rst;
  wire p_1_in4_in;
  wire p_2_in3_in;
  wire scndry_out;
  wire slowest_sync_clk;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(exr_d1),
        .Q(Q),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to_i_1 
       (.I0(mb_debug_sys_rst),
        .I1(ext_reset_in),
        .O(exr_d1));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Q),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d2 ),
        .Q(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.s_level_out_d3 ),
        .Q(scndry_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEAAAAAA8)) 
    lpf_exr_i_1
       (.I0(lpf_exr),
        .I1(p_1_in4_in),
        .I2(p_2_in3_in),
        .I3(scndry_out),
        .I4(exr_lpf),
        .O(lpf_exr_reg));
endmodule

(* ORIG_REF_NAME = "lpf" *) 
module design_x7_rst_clk_wiz_0_100M_0_lpf
   (lpf_int,
    slowest_sync_clk,
    dcm_locked,
    mb_debug_sys_rst,
    ext_reset_in,
    aux_reset_in);
  output lpf_int;
  input slowest_sync_clk;
  input dcm_locked;
  input mb_debug_sys_rst;
  input ext_reset_in;
  input aux_reset_in;

  wire \ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ;
  wire \ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ;
  wire Q;
  wire [0:0]asr_lpf;
  wire aux_reset_in;
  wire dcm_locked;
  wire [0:0]exr_lpf;
  wire ext_reset_in;
  wire lpf_asr;
  wire lpf_exr;
  wire lpf_int;
  wire lpf_int0__0;
  wire mb_debug_sys_rst;
  wire p_1_in;
  wire p_1_in4_in;
  wire p_2_in;
  wire p_2_in3_in;
  wire p_3_in1_in;
  wire p_3_in6_in;
  wire slowest_sync_clk;

  design_x7_rst_clk_wiz_0_100M_0_cdc_sync \ACTIVE_LOW_AUX.ACT_LO_AUX 
       (.asr_lpf(asr_lpf),
        .aux_reset_in(aux_reset_in),
        .lpf_asr(lpf_asr),
        .lpf_asr_reg(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .p_1_in(p_1_in),
        .p_2_in(p_2_in),
        .scndry_out(p_3_in1_in),
        .slowest_sync_clk(slowest_sync_clk));
  design_x7_rst_clk_wiz_0_100M_0_cdc_sync_0 \ACTIVE_LOW_EXT.ACT_LO_EXT 
       (.exr_lpf(exr_lpf),
        .ext_reset_in(ext_reset_in),
        .lpf_exr(lpf_exr),
        .lpf_exr_reg(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .p_1_in4_in(p_1_in4_in),
        .p_2_in3_in(p_2_in3_in),
        .scndry_out(p_3_in6_in),
        .slowest_sync_clk(slowest_sync_clk));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[1].asr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in1_in),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[2].asr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \AUX_LPF[3].asr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(asr_lpf),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[1].exr_lpf_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_in6_in),
        .Q(p_2_in3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[2].exr_lpf_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_2_in3_in),
        .Q(p_1_in4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \EXT_LPF[3].exr_lpf_reg[3] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_1_in4_in),
        .Q(exr_lpf),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "SRL16" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* srl_name = "U0/\EXT_LPF/POR_SRL_I " *) 
  SRL16E #(
    .INIT(16'hFFFF)) 
    POR_SRL_I
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(slowest_sync_clk),
        .D(1'b0),
        .Q(Q));
  FDRE #(
    .INIT(1'b0)) 
    lpf_asr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_AUX.ACT_LO_AUX_n_0 ),
        .Q(lpf_asr),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_exr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\ACTIVE_LOW_EXT.ACT_LO_EXT_n_0 ),
        .Q(lpf_exr),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    lpf_int0
       (.I0(dcm_locked),
        .I1(lpf_exr),
        .I2(lpf_asr),
        .I3(Q),
        .O(lpf_int0__0));
  FDRE #(
    .INIT(1'b0)) 
    lpf_int_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(lpf_int0__0),
        .Q(lpf_int),
        .R(1'b0));
endmodule

(* C_AUX_RESET_HIGH = "1'b0" *) (* C_AUX_RST_WIDTH = "4" *) (* C_EXT_RESET_HIGH = "1'b0" *) 
(* C_EXT_RST_WIDTH = "4" *) (* C_FAMILY = "spartan7" *) (* C_NUM_BUS_RST = "1" *) 
(* C_NUM_INTERCONNECT_ARESETN = "1" *) (* C_NUM_PERP_ARESETN = "1" *) (* C_NUM_PERP_RST = "1" *) 
(* ORIG_REF_NAME = "proc_sys_reset" *) 
module design_x7_rst_clk_wiz_0_100M_0_proc_sys_reset
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;

  wire Bsr_out;
  wire MB_out;
  wire Pr_out;
  wire SEQ_n_3;
  wire SEQ_n_4;
  wire aux_reset_in;
  wire [0:0]bus_struct_reset;
  wire dcm_locked;
  wire ext_reset_in;
  wire [0:0]interconnect_aresetn;
  wire lpf_int;
  wire mb_debug_sys_rst;
  wire mb_reset;
  wire [0:0]peripheral_aresetn;
  wire [0:0]peripheral_reset;
  wire slowest_sync_clk;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(SEQ_n_3),
        .Q(interconnect_aresetn),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(SEQ_n_4),
        .Q(peripheral_aresetn),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \BSR_OUT_DFF[0].FDRE_BSR 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Bsr_out),
        .Q(bus_struct_reset),
        .R(1'b0));
  design_x7_rst_clk_wiz_0_100M_0_lpf EXT_LPF
       (.aux_reset_in(aux_reset_in),
        .dcm_locked(dcm_locked),
        .ext_reset_in(ext_reset_in),
        .lpf_int(lpf_int),
        .mb_debug_sys_rst(mb_debug_sys_rst),
        .slowest_sync_clk(slowest_sync_clk));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    FDRE_inst
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(MB_out),
        .Q(mb_reset),
        .R(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \PR_OUT_DFF[0].FDRE_PER 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Pr_out),
        .Q(peripheral_reset),
        .R(1'b0));
  design_x7_rst_clk_wiz_0_100M_0_sequence_psr SEQ
       (.Bsr_out(Bsr_out),
        .MB_out(MB_out),
        .Pr_out(Pr_out),
        .bsr_reg_0(SEQ_n_3),
        .lpf_int(lpf_int),
        .pr_reg_0(SEQ_n_4),
        .slowest_sync_clk(slowest_sync_clk));
endmodule

(* ORIG_REF_NAME = "sequence_psr" *) 
module design_x7_rst_clk_wiz_0_100M_0_sequence_psr
   (MB_out,
    Bsr_out,
    Pr_out,
    bsr_reg_0,
    pr_reg_0,
    lpf_int,
    slowest_sync_clk);
  output MB_out;
  output Bsr_out;
  output Pr_out;
  output bsr_reg_0;
  output pr_reg_0;
  input lpf_int;
  input slowest_sync_clk;

  wire Bsr_out;
  wire Core_i_1_n_0;
  wire MB_out;
  wire Pr_out;
  wire \bsr_dec_reg_n_0_[0] ;
  wire \bsr_dec_reg_n_0_[2] ;
  wire bsr_i_1_n_0;
  wire bsr_reg_0;
  wire \core_dec[0]_i_1_n_0 ;
  wire \core_dec[2]_i_1_n_0 ;
  wire \core_dec_reg_n_0_[0] ;
  wire \core_dec_reg_n_0_[1] ;
  wire from_sys_i_1_n_0;
  wire lpf_int;
  wire p_0_in;
  wire [2:0]p_3_out;
  wire [2:0]p_5_out;
  wire pr_dec0__0;
  wire \pr_dec_reg_n_0_[0] ;
  wire \pr_dec_reg_n_0_[2] ;
  wire pr_i_1_n_0;
  wire pr_reg_0;
  wire seq_clr;
  wire [5:0]seq_cnt;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N_i_1 
       (.I0(Bsr_out),
        .O(bsr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ACTIVE_LOW_PR_OUT_DFF[0].FDRE_PER_N_i_1 
       (.I0(Pr_out),
        .O(pr_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Core_i_1
       (.I0(MB_out),
        .I1(p_0_in),
        .O(Core_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    Core_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(Core_i_1_n_0),
        .Q(MB_out),
        .S(lpf_int));
  design_x7_rst_clk_wiz_0_100M_0_upcnt_n SEQ_COUNTER
       (.Q(seq_cnt),
        .seq_clr(seq_clr),
        .seq_cnt_en(seq_cnt_en),
        .slowest_sync_clk(slowest_sync_clk));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    \bsr_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[4]),
        .I2(seq_cnt[3]),
        .I3(seq_cnt[5]),
        .O(p_5_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bsr_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\bsr_dec_reg_n_0_[0] ),
        .O(p_5_out[2]));
  FDRE #(
    .INIT(1'b0)) 
    \bsr_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_5_out[0]),
        .Q(\bsr_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bsr_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_5_out[2]),
        .Q(\bsr_dec_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    bsr_i_1
       (.I0(Bsr_out),
        .I1(\bsr_dec_reg_n_0_[2] ),
        .O(bsr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    bsr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(bsr_i_1_n_0),
        .Q(Bsr_out),
        .S(lpf_int));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h9000)) 
    \core_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[4]),
        .I2(seq_cnt[3]),
        .I3(seq_cnt[5]),
        .O(\core_dec[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \core_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\core_dec_reg_n_0_[0] ),
        .O(\core_dec[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[0]_i_1_n_0 ),
        .Q(\core_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[1] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_dec0__0),
        .Q(\core_dec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \core_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(\core_dec[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    from_sys_i_1
       (.I0(MB_out),
        .I1(seq_cnt_en),
        .O(from_sys_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    from_sys_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(from_sys_i_1_n_0),
        .Q(seq_cnt_en),
        .S(lpf_int));
  LUT4 #(
    .INIT(16'h0018)) 
    pr_dec0
       (.I0(seq_cnt_en),
        .I1(seq_cnt[0]),
        .I2(seq_cnt[2]),
        .I3(seq_cnt[1]),
        .O(pr_dec0__0));
  LUT4 #(
    .INIT(16'h0480)) 
    \pr_dec[0]_i_1 
       (.I0(seq_cnt_en),
        .I1(seq_cnt[3]),
        .I2(seq_cnt[5]),
        .I3(seq_cnt[4]),
        .O(p_3_out[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \pr_dec[2]_i_1 
       (.I0(\core_dec_reg_n_0_[1] ),
        .I1(\pr_dec_reg_n_0_[0] ),
        .O(p_3_out[2]));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[0] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(\pr_dec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pr_dec_reg[2] 
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(p_3_out[2]),
        .Q(\pr_dec_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pr_i_1
       (.I0(Pr_out),
        .I1(\pr_dec_reg_n_0_[2] ),
        .O(pr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    pr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(pr_i_1_n_0),
        .Q(Pr_out),
        .S(lpf_int));
  FDRE #(
    .INIT(1'b0)) 
    seq_clr_reg
       (.C(slowest_sync_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(seq_clr),
        .R(lpf_int));
endmodule

(* ORIG_REF_NAME = "upcnt_n" *) 
module design_x7_rst_clk_wiz_0_100M_0_upcnt_n
   (Q,
    seq_clr,
    seq_cnt_en,
    slowest_sync_clk);
  output [5:0]Q;
  input seq_clr;
  input seq_cnt_en;
  input slowest_sync_clk;

  wire [5:0]Q;
  wire clear;
  wire [5:0]q_int0;
  wire seq_clr;
  wire seq_cnt_en;
  wire slowest_sync_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \q_int[0]_i_1 
       (.I0(Q[0]),
        .O(q_int0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \q_int[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(q_int0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \q_int[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(q_int0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \q_int[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(q_int0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \q_int[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(q_int0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \q_int[5]_i_1 
       (.I0(seq_clr),
        .O(clear));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \q_int[5]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(q_int0[5]));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[0] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[0]),
        .Q(Q[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[1] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[1]),
        .Q(Q[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[2] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[2]),
        .Q(Q[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[3] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[3]),
        .Q(Q[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[4] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[4]),
        .Q(Q[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b1)) 
    \q_int_reg[5] 
       (.C(slowest_sync_clk),
        .CE(seq_cnt_en),
        .D(q_int0[5]),
        .Q(Q[5]),
        .R(clear));
endmodule

(* X_CORE_INFO = "shk_to_uart,Vivado 2022.2" *) 
module design_x7_shk_to_uart_0_0
   (i_sys_clk,
    i_sys_resetn,
    s_shk_wr_valid,
    s_shk_wr_msync,
    s_shk_wr_mdata,
    s_shk_wr_maddr,
    s_shk_wr_ready,
    s_shk_wr_ssync,
    s_shk_wr_sdata,
    s_shk_wr_saddr,
    s_shk_rd_valid,
    s_shk_rd_msync,
    s_shk_rd_mdata,
    s_shk_rd_maddr,
    s_shk_rd_ready,
    s_shk_rd_ssync,
    s_shk_rd_sdata,
    s_shk_rd_saddr,
    s_port_uart_mtx,
    s_port_uart_mrx,
    m_err_uart_info1);
  input i_sys_clk;
  input i_sys_resetn;
  input s_shk_wr_valid;
  input s_shk_wr_msync;
  input [7:0]s_shk_wr_mdata;
  input [7:0]s_shk_wr_maddr;
  output s_shk_wr_ready;
  output s_shk_wr_ssync;
  output [7:0]s_shk_wr_sdata;
  output [7:0]s_shk_wr_saddr;
  input s_shk_rd_valid;
  input s_shk_rd_msync;
  input [7:0]s_shk_rd_mdata;
  input [7:0]s_shk_rd_maddr;
  output s_shk_rd_ready;
  output s_shk_rd_ssync;
  output [7:0]s_shk_rd_sdata;
  output [7:0]s_shk_rd_saddr;
  input s_port_uart_mtx;
  output s_port_uart_mrx;
  output [3:0]m_err_uart_info1;


endmodule

(* CHECK_LICENSE_TYPE = "design_x7_sim_to_shk_0_0,sim_to_shk,{}" *) (* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "sim_to_shk,Vivado 2022.2" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_x7_sim_to_shk_0_0
   (i_sys_clk,
    i_sys_resetn,
    m_shk_sim_valid,
    m_shk_sim_msync,
    m_shk_sim_mdata,
    m_shk_sim_maddr,
    m_shk_sim_ready,
    m_shk_sim_ssync,
    m_shk_sim_sdata,
    m_shk_sim_saddr,
    m_err_sim_info1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_sys_clk, ASSOCIATED_RESET i_sys_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_sys_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_sys_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_sys_resetn;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim valid" *) output m_shk_sim_valid;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim msync" *) output m_shk_sim_msync;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim mdata" *) output [15:0]m_shk_sim_mdata;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim maddr" *) output [15:0]m_shk_sim_maddr;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim ready" *) input m_shk_sim_ready;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim ssync" *) input m_shk_sim_ssync;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim sdata" *) input [15:0]m_shk_sim_sdata;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim saddr" *) input [15:0]m_shk_sim_saddr;
  output [3:0]m_err_sim_info1;

  wire \<const0> ;
  wire \<const1> ;
  wire i_sys_clk;
  wire i_sys_resetn;
  wire m_shk_sim_msync;
  wire m_shk_sim_valid;

  assign m_err_sim_info1[3] = \<const0> ;
  assign m_err_sim_info1[2] = \<const0> ;
  assign m_err_sim_info1[1] = \<const0> ;
  assign m_err_sim_info1[0] = \<const0> ;
  assign m_shk_sim_maddr[15] = \<const0> ;
  assign m_shk_sim_maddr[14] = \<const0> ;
  assign m_shk_sim_maddr[13] = \<const0> ;
  assign m_shk_sim_maddr[12] = \<const0> ;
  assign m_shk_sim_maddr[11] = \<const0> ;
  assign m_shk_sim_maddr[10] = \<const0> ;
  assign m_shk_sim_maddr[9] = \<const0> ;
  assign m_shk_sim_maddr[8] = \<const0> ;
  assign m_shk_sim_maddr[7] = \<const0> ;
  assign m_shk_sim_maddr[6] = \<const0> ;
  assign m_shk_sim_maddr[5] = \<const0> ;
  assign m_shk_sim_maddr[4] = \<const1> ;
  assign m_shk_sim_maddr[3] = \<const0> ;
  assign m_shk_sim_maddr[2] = \<const0> ;
  assign m_shk_sim_maddr[1] = \<const0> ;
  assign m_shk_sim_maddr[0] = \<const0> ;
  assign m_shk_sim_mdata[15] = \<const0> ;
  assign m_shk_sim_mdata[14] = \<const0> ;
  assign m_shk_sim_mdata[13] = \<const0> ;
  assign m_shk_sim_mdata[12] = \<const0> ;
  assign m_shk_sim_mdata[11] = \<const0> ;
  assign m_shk_sim_mdata[10] = \<const0> ;
  assign m_shk_sim_mdata[9] = \<const0> ;
  assign m_shk_sim_mdata[8] = \<const0> ;
  assign m_shk_sim_mdata[7] = \<const0> ;
  assign m_shk_sim_mdata[6] = \<const0> ;
  assign m_shk_sim_mdata[5] = \<const0> ;
  assign m_shk_sim_mdata[4] = \<const0> ;
  assign m_shk_sim_mdata[3] = \<const1> ;
  assign m_shk_sim_mdata[2] = \<const0> ;
  assign m_shk_sim_mdata[1] = \<const0> ;
  assign m_shk_sim_mdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_x7_sim_to_shk_0_0_sim_to_shk inst
       (.i_sys_clk(i_sys_clk),
        .i_sys_resetn(i_sys_resetn),
        .m_shk_sim_msync(m_shk_sim_msync),
        .m_shk_sim_valid(m_shk_sim_valid));
endmodule

(* ORIG_REF_NAME = "sim_to_shk" *) 
module design_x7_sim_to_shk_0_0_sim_to_shk
   (m_shk_sim_msync,
    m_shk_sim_valid,
    i_sys_clk,
    i_sys_resetn);
  output m_shk_sim_msync;
  output m_shk_sim_valid;
  input i_sys_clk;
  input i_sys_resetn;

  wire clear;
  wire i_sys_clk;
  wire i_sys_resetn;
  wire load;
  wire m_shk_sim_msync;
  wire m_shk_sim_msync_INST_0_i_1_n_0;
  wire m_shk_sim_msync_INST_0_i_2_n_0;
  wire m_shk_sim_valid;
  wire m_shk_sim_valid_INST_0_i_1_n_0;
  wire m_shk_sim_valid_INST_0_i_2_n_0;
  wire m_shk_sim_valid_INST_0_i_3_n_0;
  wire m_shk_sim_valid_INST_0_i_4_n_0;
  wire m_shk_sim_valid_INST_0_i_5_n_0;
  wire m_shk_sim_valid_INST_0_i_6_n_0;
  wire \r_delay_cunt[0]_i_3_n_0 ;
  wire \r_delay_cunt[0]_i_4_n_0 ;
  wire \r_delay_cunt[0]_i_5_n_0 ;
  wire \r_delay_cunt[0]_i_6_n_0 ;
  wire \r_delay_cunt[0]_i_7_n_0 ;
  wire \r_delay_cunt[12]_i_2_n_0 ;
  wire \r_delay_cunt[12]_i_3_n_0 ;
  wire \r_delay_cunt[12]_i_4_n_0 ;
  wire \r_delay_cunt[12]_i_5_n_0 ;
  wire \r_delay_cunt[16]_i_2_n_0 ;
  wire \r_delay_cunt[16]_i_3_n_0 ;
  wire \r_delay_cunt[16]_i_4_n_0 ;
  wire \r_delay_cunt[16]_i_5_n_0 ;
  wire \r_delay_cunt[20]_i_2_n_0 ;
  wire \r_delay_cunt[20]_i_3_n_0 ;
  wire \r_delay_cunt[20]_i_4_n_0 ;
  wire \r_delay_cunt[20]_i_5_n_0 ;
  wire \r_delay_cunt[24]_i_2_n_0 ;
  wire \r_delay_cunt[24]_i_3_n_0 ;
  wire \r_delay_cunt[24]_i_4_n_0 ;
  wire \r_delay_cunt[24]_i_5_n_0 ;
  wire \r_delay_cunt[28]_i_2_n_0 ;
  wire \r_delay_cunt[28]_i_3_n_0 ;
  wire \r_delay_cunt[28]_i_4_n_0 ;
  wire \r_delay_cunt[4]_i_2_n_0 ;
  wire \r_delay_cunt[4]_i_3_n_0 ;
  wire \r_delay_cunt[4]_i_4_n_0 ;
  wire \r_delay_cunt[4]_i_5_n_0 ;
  wire \r_delay_cunt[8]_i_2_n_0 ;
  wire \r_delay_cunt[8]_i_3_n_0 ;
  wire \r_delay_cunt[8]_i_4_n_0 ;
  wire \r_delay_cunt[8]_i_5_n_0 ;
  wire \r_delay_cunt_reg[0]_i_2_n_0 ;
  wire \r_delay_cunt_reg[0]_i_2_n_1 ;
  wire \r_delay_cunt_reg[0]_i_2_n_2 ;
  wire \r_delay_cunt_reg[0]_i_2_n_3 ;
  wire \r_delay_cunt_reg[0]_i_2_n_4 ;
  wire \r_delay_cunt_reg[0]_i_2_n_5 ;
  wire \r_delay_cunt_reg[0]_i_2_n_6 ;
  wire \r_delay_cunt_reg[0]_i_2_n_7 ;
  wire \r_delay_cunt_reg[12]_i_1_n_0 ;
  wire \r_delay_cunt_reg[12]_i_1_n_1 ;
  wire \r_delay_cunt_reg[12]_i_1_n_2 ;
  wire \r_delay_cunt_reg[12]_i_1_n_3 ;
  wire \r_delay_cunt_reg[12]_i_1_n_4 ;
  wire \r_delay_cunt_reg[12]_i_1_n_5 ;
  wire \r_delay_cunt_reg[12]_i_1_n_6 ;
  wire \r_delay_cunt_reg[12]_i_1_n_7 ;
  wire \r_delay_cunt_reg[16]_i_1_n_0 ;
  wire \r_delay_cunt_reg[16]_i_1_n_1 ;
  wire \r_delay_cunt_reg[16]_i_1_n_2 ;
  wire \r_delay_cunt_reg[16]_i_1_n_3 ;
  wire \r_delay_cunt_reg[16]_i_1_n_4 ;
  wire \r_delay_cunt_reg[16]_i_1_n_5 ;
  wire \r_delay_cunt_reg[16]_i_1_n_6 ;
  wire \r_delay_cunt_reg[16]_i_1_n_7 ;
  wire \r_delay_cunt_reg[20]_i_1_n_0 ;
  wire \r_delay_cunt_reg[20]_i_1_n_1 ;
  wire \r_delay_cunt_reg[20]_i_1_n_2 ;
  wire \r_delay_cunt_reg[20]_i_1_n_3 ;
  wire \r_delay_cunt_reg[20]_i_1_n_4 ;
  wire \r_delay_cunt_reg[20]_i_1_n_5 ;
  wire \r_delay_cunt_reg[20]_i_1_n_6 ;
  wire \r_delay_cunt_reg[20]_i_1_n_7 ;
  wire \r_delay_cunt_reg[24]_i_1_n_0 ;
  wire \r_delay_cunt_reg[24]_i_1_n_1 ;
  wire \r_delay_cunt_reg[24]_i_1_n_2 ;
  wire \r_delay_cunt_reg[24]_i_1_n_3 ;
  wire \r_delay_cunt_reg[24]_i_1_n_4 ;
  wire \r_delay_cunt_reg[24]_i_1_n_5 ;
  wire \r_delay_cunt_reg[24]_i_1_n_6 ;
  wire \r_delay_cunt_reg[24]_i_1_n_7 ;
  wire \r_delay_cunt_reg[28]_i_1_n_0 ;
  wire \r_delay_cunt_reg[28]_i_1_n_2 ;
  wire \r_delay_cunt_reg[28]_i_1_n_3 ;
  wire \r_delay_cunt_reg[28]_i_1_n_5 ;
  wire \r_delay_cunt_reg[28]_i_1_n_6 ;
  wire \r_delay_cunt_reg[28]_i_1_n_7 ;
  wire \r_delay_cunt_reg[4]_i_1_n_0 ;
  wire \r_delay_cunt_reg[4]_i_1_n_1 ;
  wire \r_delay_cunt_reg[4]_i_1_n_2 ;
  wire \r_delay_cunt_reg[4]_i_1_n_3 ;
  wire \r_delay_cunt_reg[4]_i_1_n_4 ;
  wire \r_delay_cunt_reg[4]_i_1_n_5 ;
  wire \r_delay_cunt_reg[4]_i_1_n_6 ;
  wire \r_delay_cunt_reg[4]_i_1_n_7 ;
  wire \r_delay_cunt_reg[8]_i_1_n_0 ;
  wire \r_delay_cunt_reg[8]_i_1_n_1 ;
  wire \r_delay_cunt_reg[8]_i_1_n_2 ;
  wire \r_delay_cunt_reg[8]_i_1_n_3 ;
  wire \r_delay_cunt_reg[8]_i_1_n_4 ;
  wire \r_delay_cunt_reg[8]_i_1_n_5 ;
  wire \r_delay_cunt_reg[8]_i_1_n_6 ;
  wire \r_delay_cunt_reg[8]_i_1_n_7 ;
  wire \r_delay_cunt_reg_n_0_[0] ;
  wire \r_delay_cunt_reg_n_0_[10] ;
  wire \r_delay_cunt_reg_n_0_[11] ;
  wire \r_delay_cunt_reg_n_0_[12] ;
  wire \r_delay_cunt_reg_n_0_[13] ;
  wire \r_delay_cunt_reg_n_0_[14] ;
  wire \r_delay_cunt_reg_n_0_[15] ;
  wire \r_delay_cunt_reg_n_0_[16] ;
  wire \r_delay_cunt_reg_n_0_[17] ;
  wire \r_delay_cunt_reg_n_0_[18] ;
  wire \r_delay_cunt_reg_n_0_[19] ;
  wire \r_delay_cunt_reg_n_0_[1] ;
  wire \r_delay_cunt_reg_n_0_[20] ;
  wire \r_delay_cunt_reg_n_0_[21] ;
  wire \r_delay_cunt_reg_n_0_[22] ;
  wire \r_delay_cunt_reg_n_0_[23] ;
  wire \r_delay_cunt_reg_n_0_[24] ;
  wire \r_delay_cunt_reg_n_0_[25] ;
  wire \r_delay_cunt_reg_n_0_[26] ;
  wire \r_delay_cunt_reg_n_0_[27] ;
  wire \r_delay_cunt_reg_n_0_[28] ;
  wire \r_delay_cunt_reg_n_0_[29] ;
  wire \r_delay_cunt_reg_n_0_[2] ;
  wire \r_delay_cunt_reg_n_0_[30] ;
  wire \r_delay_cunt_reg_n_0_[3] ;
  wire \r_delay_cunt_reg_n_0_[4] ;
  wire \r_delay_cunt_reg_n_0_[5] ;
  wire \r_delay_cunt_reg_n_0_[6] ;
  wire \r_delay_cunt_reg_n_0_[7] ;
  wire \r_delay_cunt_reg_n_0_[8] ;
  wire \r_delay_cunt_reg_n_0_[9] ;
  wire [2:2]\NLW_r_delay_cunt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_delay_cunt_reg[28]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_shk_sim_msync_INST_0
       (.I0(m_shk_sim_valid_INST_0_i_1_n_0),
        .I1(m_shk_sim_valid_INST_0_i_2_n_0),
        .I2(m_shk_sim_msync_INST_0_i_1_n_0),
        .I3(m_shk_sim_valid_INST_0_i_4_n_0),
        .I4(m_shk_sim_valid_INST_0_i_5_n_0),
        .I5(m_shk_sim_msync_INST_0_i_2_n_0),
        .O(m_shk_sim_msync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_msync_INST_0_i_1
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(\r_delay_cunt_reg_n_0_[19] ),
        .I2(\r_delay_cunt_reg_n_0_[22] ),
        .I3(\r_delay_cunt_reg_n_0_[21] ),
        .I4(\r_delay_cunt_reg_n_0_[0] ),
        .I5(\r_delay_cunt_reg_n_0_[18] ),
        .O(m_shk_sim_msync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    m_shk_sim_msync_INST_0_i_2
       (.I0(\r_delay_cunt_reg_n_0_[16] ),
        .I1(\r_delay_cunt_reg_n_0_[15] ),
        .I2(\r_delay_cunt_reg_n_0_[13] ),
        .I3(\r_delay_cunt_reg_n_0_[14] ),
        .I4(load),
        .I5(\r_delay_cunt_reg_n_0_[17] ),
        .O(m_shk_sim_msync_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_shk_sim_valid_INST_0
       (.I0(m_shk_sim_valid_INST_0_i_1_n_0),
        .I1(m_shk_sim_valid_INST_0_i_2_n_0),
        .I2(m_shk_sim_valid_INST_0_i_3_n_0),
        .I3(m_shk_sim_valid_INST_0_i_4_n_0),
        .I4(m_shk_sim_valid_INST_0_i_5_n_0),
        .I5(m_shk_sim_valid_INST_0_i_6_n_0),
        .O(m_shk_sim_valid));
  LUT2 #(
    .INIT(4'h1)) 
    m_shk_sim_valid_INST_0_i_1
       (.I0(\r_delay_cunt_reg_n_0_[30] ),
        .I1(\r_delay_cunt_reg_n_0_[29] ),
        .O(m_shk_sim_valid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_2
       (.I0(\r_delay_cunt_reg_n_0_[26] ),
        .I1(\r_delay_cunt_reg_n_0_[25] ),
        .I2(\r_delay_cunt_reg_n_0_[28] ),
        .I3(\r_delay_cunt_reg_n_0_[27] ),
        .I4(\r_delay_cunt_reg_n_0_[23] ),
        .I5(\r_delay_cunt_reg_n_0_[24] ),
        .O(m_shk_sim_valid_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    m_shk_sim_valid_INST_0_i_3
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(\r_delay_cunt_reg_n_0_[19] ),
        .I2(\r_delay_cunt_reg_n_0_[22] ),
        .I3(\r_delay_cunt_reg_n_0_[21] ),
        .I4(\r_delay_cunt_reg_n_0_[18] ),
        .I5(\r_delay_cunt_reg_n_0_[0] ),
        .O(m_shk_sim_valid_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_4
       (.I0(\r_delay_cunt_reg_n_0_[3] ),
        .I1(\r_delay_cunt_reg_n_0_[4] ),
        .I2(\r_delay_cunt_reg_n_0_[1] ),
        .I3(\r_delay_cunt_reg_n_0_[2] ),
        .I4(\r_delay_cunt_reg_n_0_[6] ),
        .I5(\r_delay_cunt_reg_n_0_[5] ),
        .O(m_shk_sim_valid_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_5
       (.I0(\r_delay_cunt_reg_n_0_[9] ),
        .I1(\r_delay_cunt_reg_n_0_[10] ),
        .I2(\r_delay_cunt_reg_n_0_[7] ),
        .I3(\r_delay_cunt_reg_n_0_[8] ),
        .I4(\r_delay_cunt_reg_n_0_[12] ),
        .I5(\r_delay_cunt_reg_n_0_[11] ),
        .O(m_shk_sim_valid_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_6
       (.I0(\r_delay_cunt_reg_n_0_[15] ),
        .I1(\r_delay_cunt_reg_n_0_[16] ),
        .I2(\r_delay_cunt_reg_n_0_[13] ),
        .I3(\r_delay_cunt_reg_n_0_[14] ),
        .I4(load),
        .I5(\r_delay_cunt_reg_n_0_[17] ),
        .O(m_shk_sim_valid_INST_0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_delay_cunt[0]_i_1 
       (.I0(i_sys_resetn),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \r_delay_cunt[0]_i_3 
       (.I0(load),
        .O(\r_delay_cunt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[3] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[2] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_6 
       (.I0(\r_delay_cunt_reg_n_0_[1] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_delay_cunt[0]_i_7 
       (.I0(\r_delay_cunt_reg_n_0_[0] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[15] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[14] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[13] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[12] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[19] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[18] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[17] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[16] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[23] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[22] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[21] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[27] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[26] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[25] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[24] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[30] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[29] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[28] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[7] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[6] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[5] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[4] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[11] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[10] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[9] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[8] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[0] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_delay_cunt_reg[0]_i_2_n_0 ,\r_delay_cunt_reg[0]_i_2_n_1 ,\r_delay_cunt_reg[0]_i_2_n_2 ,\r_delay_cunt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_delay_cunt[0]_i_3_n_0 }),
        .O({\r_delay_cunt_reg[0]_i_2_n_4 ,\r_delay_cunt_reg[0]_i_2_n_5 ,\r_delay_cunt_reg[0]_i_2_n_6 ,\r_delay_cunt_reg[0]_i_2_n_7 }),
        .S({\r_delay_cunt[0]_i_4_n_0 ,\r_delay_cunt[0]_i_5_n_0 ,\r_delay_cunt[0]_i_6_n_0 ,\r_delay_cunt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[10] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[11] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[12] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[12] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[12]_i_1 
       (.CI(\r_delay_cunt_reg[8]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[12]_i_1_n_0 ,\r_delay_cunt_reg[12]_i_1_n_1 ,\r_delay_cunt_reg[12]_i_1_n_2 ,\r_delay_cunt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[12]_i_1_n_4 ,\r_delay_cunt_reg[12]_i_1_n_5 ,\r_delay_cunt_reg[12]_i_1_n_6 ,\r_delay_cunt_reg[12]_i_1_n_7 }),
        .S({\r_delay_cunt[12]_i_2_n_0 ,\r_delay_cunt[12]_i_3_n_0 ,\r_delay_cunt[12]_i_4_n_0 ,\r_delay_cunt[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[13] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[14] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[15] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[16] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[16] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[16]_i_1 
       (.CI(\r_delay_cunt_reg[12]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[16]_i_1_n_0 ,\r_delay_cunt_reg[16]_i_1_n_1 ,\r_delay_cunt_reg[16]_i_1_n_2 ,\r_delay_cunt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[16]_i_1_n_4 ,\r_delay_cunt_reg[16]_i_1_n_5 ,\r_delay_cunt_reg[16]_i_1_n_6 ,\r_delay_cunt_reg[16]_i_1_n_7 }),
        .S({\r_delay_cunt[16]_i_2_n_0 ,\r_delay_cunt[16]_i_3_n_0 ,\r_delay_cunt[16]_i_4_n_0 ,\r_delay_cunt[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[17] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[18] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[19] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[1] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[20] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[20] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[20]_i_1 
       (.CI(\r_delay_cunt_reg[16]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[20]_i_1_n_0 ,\r_delay_cunt_reg[20]_i_1_n_1 ,\r_delay_cunt_reg[20]_i_1_n_2 ,\r_delay_cunt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[20]_i_1_n_4 ,\r_delay_cunt_reg[20]_i_1_n_5 ,\r_delay_cunt_reg[20]_i_1_n_6 ,\r_delay_cunt_reg[20]_i_1_n_7 }),
        .S({\r_delay_cunt[20]_i_2_n_0 ,\r_delay_cunt[20]_i_3_n_0 ,\r_delay_cunt[20]_i_4_n_0 ,\r_delay_cunt[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[21] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[22] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[23] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[24] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[24] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[24]_i_1 
       (.CI(\r_delay_cunt_reg[20]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[24]_i_1_n_0 ,\r_delay_cunt_reg[24]_i_1_n_1 ,\r_delay_cunt_reg[24]_i_1_n_2 ,\r_delay_cunt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[24]_i_1_n_4 ,\r_delay_cunt_reg[24]_i_1_n_5 ,\r_delay_cunt_reg[24]_i_1_n_6 ,\r_delay_cunt_reg[24]_i_1_n_7 }),
        .S({\r_delay_cunt[24]_i_2_n_0 ,\r_delay_cunt[24]_i_3_n_0 ,\r_delay_cunt[24]_i_4_n_0 ,\r_delay_cunt[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[25] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[26] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[27] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[28] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[28] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[28]_i_1 
       (.CI(\r_delay_cunt_reg[24]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[28]_i_1_n_0 ,\NLW_r_delay_cunt_reg[28]_i_1_CO_UNCONNECTED [2],\r_delay_cunt_reg[28]_i_1_n_2 ,\r_delay_cunt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_delay_cunt_reg[28]_i_1_O_UNCONNECTED [3],\r_delay_cunt_reg[28]_i_1_n_5 ,\r_delay_cunt_reg[28]_i_1_n_6 ,\r_delay_cunt_reg[28]_i_1_n_7 }),
        .S({1'b1,\r_delay_cunt[28]_i_2_n_0 ,\r_delay_cunt[28]_i_3_n_0 ,\r_delay_cunt[28]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[29] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[2] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[30] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[31] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_0 ),
        .Q(load),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[3] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[4] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[4]_i_1 
       (.CI(\r_delay_cunt_reg[0]_i_2_n_0 ),
        .CO({\r_delay_cunt_reg[4]_i_1_n_0 ,\r_delay_cunt_reg[4]_i_1_n_1 ,\r_delay_cunt_reg[4]_i_1_n_2 ,\r_delay_cunt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[4]_i_1_n_4 ,\r_delay_cunt_reg[4]_i_1_n_5 ,\r_delay_cunt_reg[4]_i_1_n_6 ,\r_delay_cunt_reg[4]_i_1_n_7 }),
        .S({\r_delay_cunt[4]_i_2_n_0 ,\r_delay_cunt[4]_i_3_n_0 ,\r_delay_cunt[4]_i_4_n_0 ,\r_delay_cunt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[5] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[6] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[7] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[8] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[8]_i_1 
       (.CI(\r_delay_cunt_reg[4]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[8]_i_1_n_0 ,\r_delay_cunt_reg[8]_i_1_n_1 ,\r_delay_cunt_reg[8]_i_1_n_2 ,\r_delay_cunt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[8]_i_1_n_4 ,\r_delay_cunt_reg[8]_i_1_n_5 ,\r_delay_cunt_reg[8]_i_1_n_6 ,\r_delay_cunt_reg[8]_i_1_n_7 }),
        .S({\r_delay_cunt[8]_i_2_n_0 ,\r_delay_cunt[8]_i_3_n_0 ,\r_delay_cunt[8]_i_4_n_0 ,\r_delay_cunt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[9] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[9] ),
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "design_x7_sim_to_shk_0_0,sim_to_shk,{}" *) (* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "sim_to_shk,Vivado 2022.2" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_x7_sim_to_shk_0_1
   (i_sys_clk,
    i_sys_resetn,
    m_shk_sim_valid,
    m_shk_sim_msync,
    m_shk_sim_mdata,
    m_shk_sim_maddr,
    m_shk_sim_ready,
    m_shk_sim_ssync,
    m_shk_sim_sdata,
    m_shk_sim_saddr,
    m_err_sim_info1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_sys_clk, ASSOCIATED_RESET i_sys_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_sys_resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_sys_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_sys_resetn;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim valid" *) output m_shk_sim_valid;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim msync" *) output m_shk_sim_msync;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim mdata" *) output [15:0]m_shk_sim_mdata;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim maddr" *) output [15:0]m_shk_sim_maddr;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim ready" *) input m_shk_sim_ready;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim ssync" *) input m_shk_sim_ssync;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim sdata" *) input [15:0]m_shk_sim_sdata;
  (* X_INTERFACE_INFO = "fpgaPublish:user:SHK:1.0 m_shk_sim saddr" *) input [15:0]m_shk_sim_saddr;
  output [3:0]m_err_sim_info1;

  wire \<const0> ;
  wire \<const1> ;
  wire i_sys_clk;
  wire i_sys_resetn;
  wire m_shk_sim_msync;
  wire m_shk_sim_valid;

  assign m_err_sim_info1[3] = \<const0> ;
  assign m_err_sim_info1[2] = \<const0> ;
  assign m_err_sim_info1[1] = \<const0> ;
  assign m_err_sim_info1[0] = \<const0> ;
  assign m_shk_sim_maddr[15] = \<const0> ;
  assign m_shk_sim_maddr[14] = \<const0> ;
  assign m_shk_sim_maddr[13] = \<const0> ;
  assign m_shk_sim_maddr[12] = \<const0> ;
  assign m_shk_sim_maddr[11] = \<const0> ;
  assign m_shk_sim_maddr[10] = \<const0> ;
  assign m_shk_sim_maddr[9] = \<const0> ;
  assign m_shk_sim_maddr[8] = \<const0> ;
  assign m_shk_sim_maddr[7] = \<const0> ;
  assign m_shk_sim_maddr[6] = \<const0> ;
  assign m_shk_sim_maddr[5] = \<const0> ;
  assign m_shk_sim_maddr[4] = \<const1> ;
  assign m_shk_sim_maddr[3] = \<const0> ;
  assign m_shk_sim_maddr[2] = \<const0> ;
  assign m_shk_sim_maddr[1] = \<const0> ;
  assign m_shk_sim_maddr[0] = \<const0> ;
  assign m_shk_sim_mdata[15] = \<const0> ;
  assign m_shk_sim_mdata[14] = \<const0> ;
  assign m_shk_sim_mdata[13] = \<const0> ;
  assign m_shk_sim_mdata[12] = \<const0> ;
  assign m_shk_sim_mdata[11] = \<const0> ;
  assign m_shk_sim_mdata[10] = \<const0> ;
  assign m_shk_sim_mdata[9] = \<const0> ;
  assign m_shk_sim_mdata[8] = \<const0> ;
  assign m_shk_sim_mdata[7] = \<const0> ;
  assign m_shk_sim_mdata[6] = \<const0> ;
  assign m_shk_sim_mdata[5] = \<const0> ;
  assign m_shk_sim_mdata[4] = \<const0> ;
  assign m_shk_sim_mdata[3] = \<const1> ;
  assign m_shk_sim_mdata[2] = \<const0> ;
  assign m_shk_sim_mdata[1] = \<const0> ;
  assign m_shk_sim_mdata[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_x7_sim_to_shk_0_1_sim_to_shk inst
       (.i_sys_clk(i_sys_clk),
        .i_sys_resetn(i_sys_resetn),
        .m_shk_sim_msync(m_shk_sim_msync),
        .m_shk_sim_valid(m_shk_sim_valid));
endmodule

(* ORIG_REF_NAME = "sim_to_shk" *) 
module design_x7_sim_to_shk_0_1_sim_to_shk
   (m_shk_sim_msync,
    m_shk_sim_valid,
    i_sys_clk,
    i_sys_resetn);
  output m_shk_sim_msync;
  output m_shk_sim_valid;
  input i_sys_clk;
  input i_sys_resetn;

  wire clear;
  wire i_sys_clk;
  wire i_sys_resetn;
  wire load;
  wire m_shk_sim_msync;
  wire m_shk_sim_msync_INST_0_i_1_n_0;
  wire m_shk_sim_msync_INST_0_i_2_n_0;
  wire m_shk_sim_valid;
  wire m_shk_sim_valid_INST_0_i_1_n_0;
  wire m_shk_sim_valid_INST_0_i_2_n_0;
  wire m_shk_sim_valid_INST_0_i_3_n_0;
  wire m_shk_sim_valid_INST_0_i_4_n_0;
  wire m_shk_sim_valid_INST_0_i_5_n_0;
  wire m_shk_sim_valid_INST_0_i_6_n_0;
  wire \r_delay_cunt[0]_i_3_n_0 ;
  wire \r_delay_cunt[0]_i_4_n_0 ;
  wire \r_delay_cunt[0]_i_5_n_0 ;
  wire \r_delay_cunt[0]_i_6_n_0 ;
  wire \r_delay_cunt[0]_i_7_n_0 ;
  wire \r_delay_cunt[12]_i_2_n_0 ;
  wire \r_delay_cunt[12]_i_3_n_0 ;
  wire \r_delay_cunt[12]_i_4_n_0 ;
  wire \r_delay_cunt[12]_i_5_n_0 ;
  wire \r_delay_cunt[16]_i_2_n_0 ;
  wire \r_delay_cunt[16]_i_3_n_0 ;
  wire \r_delay_cunt[16]_i_4_n_0 ;
  wire \r_delay_cunt[16]_i_5_n_0 ;
  wire \r_delay_cunt[20]_i_2_n_0 ;
  wire \r_delay_cunt[20]_i_3_n_0 ;
  wire \r_delay_cunt[20]_i_4_n_0 ;
  wire \r_delay_cunt[20]_i_5_n_0 ;
  wire \r_delay_cunt[24]_i_2_n_0 ;
  wire \r_delay_cunt[24]_i_3_n_0 ;
  wire \r_delay_cunt[24]_i_4_n_0 ;
  wire \r_delay_cunt[24]_i_5_n_0 ;
  wire \r_delay_cunt[28]_i_2_n_0 ;
  wire \r_delay_cunt[28]_i_3_n_0 ;
  wire \r_delay_cunt[28]_i_4_n_0 ;
  wire \r_delay_cunt[4]_i_2_n_0 ;
  wire \r_delay_cunt[4]_i_3_n_0 ;
  wire \r_delay_cunt[4]_i_4_n_0 ;
  wire \r_delay_cunt[4]_i_5_n_0 ;
  wire \r_delay_cunt[8]_i_2_n_0 ;
  wire \r_delay_cunt[8]_i_3_n_0 ;
  wire \r_delay_cunt[8]_i_4_n_0 ;
  wire \r_delay_cunt[8]_i_5_n_0 ;
  wire \r_delay_cunt_reg[0]_i_2_n_0 ;
  wire \r_delay_cunt_reg[0]_i_2_n_1 ;
  wire \r_delay_cunt_reg[0]_i_2_n_2 ;
  wire \r_delay_cunt_reg[0]_i_2_n_3 ;
  wire \r_delay_cunt_reg[0]_i_2_n_4 ;
  wire \r_delay_cunt_reg[0]_i_2_n_5 ;
  wire \r_delay_cunt_reg[0]_i_2_n_6 ;
  wire \r_delay_cunt_reg[0]_i_2_n_7 ;
  wire \r_delay_cunt_reg[12]_i_1_n_0 ;
  wire \r_delay_cunt_reg[12]_i_1_n_1 ;
  wire \r_delay_cunt_reg[12]_i_1_n_2 ;
  wire \r_delay_cunt_reg[12]_i_1_n_3 ;
  wire \r_delay_cunt_reg[12]_i_1_n_4 ;
  wire \r_delay_cunt_reg[12]_i_1_n_5 ;
  wire \r_delay_cunt_reg[12]_i_1_n_6 ;
  wire \r_delay_cunt_reg[12]_i_1_n_7 ;
  wire \r_delay_cunt_reg[16]_i_1_n_0 ;
  wire \r_delay_cunt_reg[16]_i_1_n_1 ;
  wire \r_delay_cunt_reg[16]_i_1_n_2 ;
  wire \r_delay_cunt_reg[16]_i_1_n_3 ;
  wire \r_delay_cunt_reg[16]_i_1_n_4 ;
  wire \r_delay_cunt_reg[16]_i_1_n_5 ;
  wire \r_delay_cunt_reg[16]_i_1_n_6 ;
  wire \r_delay_cunt_reg[16]_i_1_n_7 ;
  wire \r_delay_cunt_reg[20]_i_1_n_0 ;
  wire \r_delay_cunt_reg[20]_i_1_n_1 ;
  wire \r_delay_cunt_reg[20]_i_1_n_2 ;
  wire \r_delay_cunt_reg[20]_i_1_n_3 ;
  wire \r_delay_cunt_reg[20]_i_1_n_4 ;
  wire \r_delay_cunt_reg[20]_i_1_n_5 ;
  wire \r_delay_cunt_reg[20]_i_1_n_6 ;
  wire \r_delay_cunt_reg[20]_i_1_n_7 ;
  wire \r_delay_cunt_reg[24]_i_1_n_0 ;
  wire \r_delay_cunt_reg[24]_i_1_n_1 ;
  wire \r_delay_cunt_reg[24]_i_1_n_2 ;
  wire \r_delay_cunt_reg[24]_i_1_n_3 ;
  wire \r_delay_cunt_reg[24]_i_1_n_4 ;
  wire \r_delay_cunt_reg[24]_i_1_n_5 ;
  wire \r_delay_cunt_reg[24]_i_1_n_6 ;
  wire \r_delay_cunt_reg[24]_i_1_n_7 ;
  wire \r_delay_cunt_reg[28]_i_1_n_0 ;
  wire \r_delay_cunt_reg[28]_i_1_n_2 ;
  wire \r_delay_cunt_reg[28]_i_1_n_3 ;
  wire \r_delay_cunt_reg[28]_i_1_n_5 ;
  wire \r_delay_cunt_reg[28]_i_1_n_6 ;
  wire \r_delay_cunt_reg[28]_i_1_n_7 ;
  wire \r_delay_cunt_reg[4]_i_1_n_0 ;
  wire \r_delay_cunt_reg[4]_i_1_n_1 ;
  wire \r_delay_cunt_reg[4]_i_1_n_2 ;
  wire \r_delay_cunt_reg[4]_i_1_n_3 ;
  wire \r_delay_cunt_reg[4]_i_1_n_4 ;
  wire \r_delay_cunt_reg[4]_i_1_n_5 ;
  wire \r_delay_cunt_reg[4]_i_1_n_6 ;
  wire \r_delay_cunt_reg[4]_i_1_n_7 ;
  wire \r_delay_cunt_reg[8]_i_1_n_0 ;
  wire \r_delay_cunt_reg[8]_i_1_n_1 ;
  wire \r_delay_cunt_reg[8]_i_1_n_2 ;
  wire \r_delay_cunt_reg[8]_i_1_n_3 ;
  wire \r_delay_cunt_reg[8]_i_1_n_4 ;
  wire \r_delay_cunt_reg[8]_i_1_n_5 ;
  wire \r_delay_cunt_reg[8]_i_1_n_6 ;
  wire \r_delay_cunt_reg[8]_i_1_n_7 ;
  wire \r_delay_cunt_reg_n_0_[0] ;
  wire \r_delay_cunt_reg_n_0_[10] ;
  wire \r_delay_cunt_reg_n_0_[11] ;
  wire \r_delay_cunt_reg_n_0_[12] ;
  wire \r_delay_cunt_reg_n_0_[13] ;
  wire \r_delay_cunt_reg_n_0_[14] ;
  wire \r_delay_cunt_reg_n_0_[15] ;
  wire \r_delay_cunt_reg_n_0_[16] ;
  wire \r_delay_cunt_reg_n_0_[17] ;
  wire \r_delay_cunt_reg_n_0_[18] ;
  wire \r_delay_cunt_reg_n_0_[19] ;
  wire \r_delay_cunt_reg_n_0_[1] ;
  wire \r_delay_cunt_reg_n_0_[20] ;
  wire \r_delay_cunt_reg_n_0_[21] ;
  wire \r_delay_cunt_reg_n_0_[22] ;
  wire \r_delay_cunt_reg_n_0_[23] ;
  wire \r_delay_cunt_reg_n_0_[24] ;
  wire \r_delay_cunt_reg_n_0_[25] ;
  wire \r_delay_cunt_reg_n_0_[26] ;
  wire \r_delay_cunt_reg_n_0_[27] ;
  wire \r_delay_cunt_reg_n_0_[28] ;
  wire \r_delay_cunt_reg_n_0_[29] ;
  wire \r_delay_cunt_reg_n_0_[2] ;
  wire \r_delay_cunt_reg_n_0_[30] ;
  wire \r_delay_cunt_reg_n_0_[3] ;
  wire \r_delay_cunt_reg_n_0_[4] ;
  wire \r_delay_cunt_reg_n_0_[5] ;
  wire \r_delay_cunt_reg_n_0_[6] ;
  wire \r_delay_cunt_reg_n_0_[7] ;
  wire \r_delay_cunt_reg_n_0_[8] ;
  wire \r_delay_cunt_reg_n_0_[9] ;
  wire [2:2]\NLW_r_delay_cunt_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_delay_cunt_reg[28]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_shk_sim_msync_INST_0
       (.I0(m_shk_sim_valid_INST_0_i_1_n_0),
        .I1(m_shk_sim_valid_INST_0_i_2_n_0),
        .I2(m_shk_sim_msync_INST_0_i_1_n_0),
        .I3(m_shk_sim_valid_INST_0_i_4_n_0),
        .I4(m_shk_sim_valid_INST_0_i_5_n_0),
        .I5(m_shk_sim_msync_INST_0_i_2_n_0),
        .O(m_shk_sim_msync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_msync_INST_0_i_1
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(\r_delay_cunt_reg_n_0_[19] ),
        .I2(\r_delay_cunt_reg_n_0_[22] ),
        .I3(\r_delay_cunt_reg_n_0_[21] ),
        .I4(\r_delay_cunt_reg_n_0_[0] ),
        .I5(\r_delay_cunt_reg_n_0_[18] ),
        .O(m_shk_sim_msync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    m_shk_sim_msync_INST_0_i_2
       (.I0(\r_delay_cunt_reg_n_0_[16] ),
        .I1(\r_delay_cunt_reg_n_0_[15] ),
        .I2(\r_delay_cunt_reg_n_0_[13] ),
        .I3(\r_delay_cunt_reg_n_0_[14] ),
        .I4(load),
        .I5(\r_delay_cunt_reg_n_0_[17] ),
        .O(m_shk_sim_msync_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    m_shk_sim_valid_INST_0
       (.I0(m_shk_sim_valid_INST_0_i_1_n_0),
        .I1(m_shk_sim_valid_INST_0_i_2_n_0),
        .I2(m_shk_sim_valid_INST_0_i_3_n_0),
        .I3(m_shk_sim_valid_INST_0_i_4_n_0),
        .I4(m_shk_sim_valid_INST_0_i_5_n_0),
        .I5(m_shk_sim_valid_INST_0_i_6_n_0),
        .O(m_shk_sim_valid));
  LUT2 #(
    .INIT(4'h1)) 
    m_shk_sim_valid_INST_0_i_1
       (.I0(\r_delay_cunt_reg_n_0_[30] ),
        .I1(\r_delay_cunt_reg_n_0_[29] ),
        .O(m_shk_sim_valid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_2
       (.I0(\r_delay_cunt_reg_n_0_[26] ),
        .I1(\r_delay_cunt_reg_n_0_[25] ),
        .I2(\r_delay_cunt_reg_n_0_[28] ),
        .I3(\r_delay_cunt_reg_n_0_[27] ),
        .I4(\r_delay_cunt_reg_n_0_[23] ),
        .I5(\r_delay_cunt_reg_n_0_[24] ),
        .O(m_shk_sim_valid_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    m_shk_sim_valid_INST_0_i_3
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(\r_delay_cunt_reg_n_0_[19] ),
        .I2(\r_delay_cunt_reg_n_0_[22] ),
        .I3(\r_delay_cunt_reg_n_0_[21] ),
        .I4(\r_delay_cunt_reg_n_0_[18] ),
        .I5(\r_delay_cunt_reg_n_0_[0] ),
        .O(m_shk_sim_valid_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_4
       (.I0(\r_delay_cunt_reg_n_0_[3] ),
        .I1(\r_delay_cunt_reg_n_0_[4] ),
        .I2(\r_delay_cunt_reg_n_0_[1] ),
        .I3(\r_delay_cunt_reg_n_0_[2] ),
        .I4(\r_delay_cunt_reg_n_0_[6] ),
        .I5(\r_delay_cunt_reg_n_0_[5] ),
        .O(m_shk_sim_valid_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_5
       (.I0(\r_delay_cunt_reg_n_0_[9] ),
        .I1(\r_delay_cunt_reg_n_0_[10] ),
        .I2(\r_delay_cunt_reg_n_0_[7] ),
        .I3(\r_delay_cunt_reg_n_0_[8] ),
        .I4(\r_delay_cunt_reg_n_0_[12] ),
        .I5(\r_delay_cunt_reg_n_0_[11] ),
        .O(m_shk_sim_valid_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    m_shk_sim_valid_INST_0_i_6
       (.I0(\r_delay_cunt_reg_n_0_[15] ),
        .I1(\r_delay_cunt_reg_n_0_[16] ),
        .I2(\r_delay_cunt_reg_n_0_[13] ),
        .I3(\r_delay_cunt_reg_n_0_[14] ),
        .I4(load),
        .I5(\r_delay_cunt_reg_n_0_[17] ),
        .O(m_shk_sim_valid_INST_0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_delay_cunt[0]_i_1 
       (.I0(i_sys_resetn),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \r_delay_cunt[0]_i_3 
       (.I0(load),
        .O(\r_delay_cunt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[3] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[2] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[0]_i_6 
       (.I0(\r_delay_cunt_reg_n_0_[1] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r_delay_cunt[0]_i_7 
       (.I0(\r_delay_cunt_reg_n_0_[0] ),
        .I1(load),
        .O(\r_delay_cunt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[15] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[14] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[13] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[12]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[12] ),
        .I1(load),
        .O(\r_delay_cunt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[19] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[18] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[17] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[16]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[16] ),
        .I1(load),
        .O(\r_delay_cunt[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[23] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[22] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[21] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[20]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[20] ),
        .I1(load),
        .O(\r_delay_cunt[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[27] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[26] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[25] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[24]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[24] ),
        .I1(load),
        .O(\r_delay_cunt[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[30] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[29] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[28]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[28] ),
        .I1(load),
        .O(\r_delay_cunt[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[7] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[6] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[5] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[4]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[4] ),
        .I1(load),
        .O(\r_delay_cunt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_2 
       (.I0(\r_delay_cunt_reg_n_0_[11] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_3 
       (.I0(\r_delay_cunt_reg_n_0_[10] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_4 
       (.I0(\r_delay_cunt_reg_n_0_[9] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_delay_cunt[8]_i_5 
       (.I0(\r_delay_cunt_reg_n_0_[8] ),
        .I1(load),
        .O(\r_delay_cunt[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[0] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\r_delay_cunt_reg[0]_i_2_n_0 ,\r_delay_cunt_reg[0]_i_2_n_1 ,\r_delay_cunt_reg[0]_i_2_n_2 ,\r_delay_cunt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_delay_cunt[0]_i_3_n_0 }),
        .O({\r_delay_cunt_reg[0]_i_2_n_4 ,\r_delay_cunt_reg[0]_i_2_n_5 ,\r_delay_cunt_reg[0]_i_2_n_6 ,\r_delay_cunt_reg[0]_i_2_n_7 }),
        .S({\r_delay_cunt[0]_i_4_n_0 ,\r_delay_cunt[0]_i_5_n_0 ,\r_delay_cunt[0]_i_6_n_0 ,\r_delay_cunt[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[10] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[10] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[11] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[11] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[12] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[12] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[12]_i_1 
       (.CI(\r_delay_cunt_reg[8]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[12]_i_1_n_0 ,\r_delay_cunt_reg[12]_i_1_n_1 ,\r_delay_cunt_reg[12]_i_1_n_2 ,\r_delay_cunt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[12]_i_1_n_4 ,\r_delay_cunt_reg[12]_i_1_n_5 ,\r_delay_cunt_reg[12]_i_1_n_6 ,\r_delay_cunt_reg[12]_i_1_n_7 }),
        .S({\r_delay_cunt[12]_i_2_n_0 ,\r_delay_cunt[12]_i_3_n_0 ,\r_delay_cunt[12]_i_4_n_0 ,\r_delay_cunt[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[13] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[13] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[14] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[14] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[15] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[12]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[15] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[16] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[16] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[16]_i_1 
       (.CI(\r_delay_cunt_reg[12]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[16]_i_1_n_0 ,\r_delay_cunt_reg[16]_i_1_n_1 ,\r_delay_cunt_reg[16]_i_1_n_2 ,\r_delay_cunt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[16]_i_1_n_4 ,\r_delay_cunt_reg[16]_i_1_n_5 ,\r_delay_cunt_reg[16]_i_1_n_6 ,\r_delay_cunt_reg[16]_i_1_n_7 }),
        .S({\r_delay_cunt[16]_i_2_n_0 ,\r_delay_cunt[16]_i_3_n_0 ,\r_delay_cunt[16]_i_4_n_0 ,\r_delay_cunt[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[17] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[17] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[18] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[18] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[19] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[16]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[19] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[1] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[20] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[20] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[20]_i_1 
       (.CI(\r_delay_cunt_reg[16]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[20]_i_1_n_0 ,\r_delay_cunt_reg[20]_i_1_n_1 ,\r_delay_cunt_reg[20]_i_1_n_2 ,\r_delay_cunt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[20]_i_1_n_4 ,\r_delay_cunt_reg[20]_i_1_n_5 ,\r_delay_cunt_reg[20]_i_1_n_6 ,\r_delay_cunt_reg[20]_i_1_n_7 }),
        .S({\r_delay_cunt[20]_i_2_n_0 ,\r_delay_cunt[20]_i_3_n_0 ,\r_delay_cunt[20]_i_4_n_0 ,\r_delay_cunt[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[21] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[21] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[22] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[22] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[23] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[20]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[23] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[24] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[24] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[24]_i_1 
       (.CI(\r_delay_cunt_reg[20]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[24]_i_1_n_0 ,\r_delay_cunt_reg[24]_i_1_n_1 ,\r_delay_cunt_reg[24]_i_1_n_2 ,\r_delay_cunt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[24]_i_1_n_4 ,\r_delay_cunt_reg[24]_i_1_n_5 ,\r_delay_cunt_reg[24]_i_1_n_6 ,\r_delay_cunt_reg[24]_i_1_n_7 }),
        .S({\r_delay_cunt[24]_i_2_n_0 ,\r_delay_cunt[24]_i_3_n_0 ,\r_delay_cunt[24]_i_4_n_0 ,\r_delay_cunt[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[25] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[25] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[26] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[26] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[27] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[24]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[27] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[28] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[28] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[28]_i_1 
       (.CI(\r_delay_cunt_reg[24]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[28]_i_1_n_0 ,\NLW_r_delay_cunt_reg[28]_i_1_CO_UNCONNECTED [2],\r_delay_cunt_reg[28]_i_1_n_2 ,\r_delay_cunt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_delay_cunt_reg[28]_i_1_O_UNCONNECTED [3],\r_delay_cunt_reg[28]_i_1_n_5 ,\r_delay_cunt_reg[28]_i_1_n_6 ,\r_delay_cunt_reg[28]_i_1_n_7 }),
        .S({1'b1,\r_delay_cunt[28]_i_2_n_0 ,\r_delay_cunt[28]_i_3_n_0 ,\r_delay_cunt[28]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[29] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[29] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[2] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[30] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[30] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[31] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[28]_i_1_n_0 ),
        .Q(load),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[3] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[0]_i_2_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[3] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[4] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[4] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[4]_i_1 
       (.CI(\r_delay_cunt_reg[0]_i_2_n_0 ),
        .CO({\r_delay_cunt_reg[4]_i_1_n_0 ,\r_delay_cunt_reg[4]_i_1_n_1 ,\r_delay_cunt_reg[4]_i_1_n_2 ,\r_delay_cunt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[4]_i_1_n_4 ,\r_delay_cunt_reg[4]_i_1_n_5 ,\r_delay_cunt_reg[4]_i_1_n_6 ,\r_delay_cunt_reg[4]_i_1_n_7 }),
        .S({\r_delay_cunt[4]_i_2_n_0 ,\r_delay_cunt[4]_i_3_n_0 ,\r_delay_cunt[4]_i_4_n_0 ,\r_delay_cunt[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[5] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[5] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[6] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_5 ),
        .Q(\r_delay_cunt_reg_n_0_[6] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[7] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[4]_i_1_n_4 ),
        .Q(\r_delay_cunt_reg_n_0_[7] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[8] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_7 ),
        .Q(\r_delay_cunt_reg_n_0_[8] ),
        .R(clear));
  CARRY4 \r_delay_cunt_reg[8]_i_1 
       (.CI(\r_delay_cunt_reg[4]_i_1_n_0 ),
        .CO({\r_delay_cunt_reg[8]_i_1_n_0 ,\r_delay_cunt_reg[8]_i_1_n_1 ,\r_delay_cunt_reg[8]_i_1_n_2 ,\r_delay_cunt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_delay_cunt_reg[8]_i_1_n_4 ,\r_delay_cunt_reg[8]_i_1_n_5 ,\r_delay_cunt_reg[8]_i_1_n_6 ,\r_delay_cunt_reg[8]_i_1_n_7 }),
        .S({\r_delay_cunt[8]_i_2_n_0 ,\r_delay_cunt[8]_i_3_n_0 ,\r_delay_cunt[8]_i_4_n_0 ,\r_delay_cunt[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_delay_cunt_reg[9] 
       (.C(i_sys_clk),
        .CE(1'b1),
        .D(\r_delay_cunt_reg[8]_i_1_n_6 ),
        .Q(\r_delay_cunt_reg_n_0_[9] ),
        .R(clear));
endmodule

(* NotValidForBitStream *)
module design_x7_wrapper
   (clk_in1_0,
    s_port_uart_0_mrx,
    s_port_uart_0_mtx);
  input clk_in1_0;
  output s_port_uart_0_mrx;
  input s_port_uart_0_mtx;

  (* IBUF_LOW_PWR *) wire clk_in1_0;
  wire s_port_uart_0_mrx;
  wire s_port_uart_0_mrx_OBUF;
  wire s_port_uart_0_mtx;
  wire s_port_uart_0_mtx_IBUF;

  (* HW_HANDOFF = "design_x7.hwdef" *) 
  design_x7 design_x7_i
       (.clk_in1_0(clk_in1_0),
        .s_port_uart_0_mrx(s_port_uart_0_mrx_OBUF),
        .s_port_uart_0_mtx(s_port_uart_0_mtx_IBUF));
  OBUF s_port_uart_0_mrx_OBUF_inst
       (.I(s_port_uart_0_mrx_OBUF),
        .O(s_port_uart_0_mrx));
  IBUF #(
    .CCIO_EN("TRUE")) 
    s_port_uart_0_mtx_IBUF_inst
       (.I(s_port_uart_0_mtx),
        .O(s_port_uart_0_mtx_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
