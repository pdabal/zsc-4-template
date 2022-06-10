// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Mon Jun  6 14:28:06 2022
// Host        : Laptop-G5-5590 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Projekty/LabZSC/WEL21ET1S4/pawel_dabal/Lab-1/ProjektVivado/Neo430First/Neo430First.gen/sources_1/bd/SystemTop/SystemTop_sim_netlist.v
// Design      : SystemTop
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* hw_handoff = "SystemTop.hwdef" *) 
(* NotValidForBitStream *)
module SystemTop
   (clk_i,
    led_o,
    rst_n_i,
    seg_module_o,
    seg_segment_o,
    sw_i,
    uart_rxd_i,
    uart_txd_o);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK_I, CLK_DOMAIN SystemTop_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_i;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.LED_O DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.LED_O, LAYERED_METADATA undef" *) output [15:0]led_o;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RST_N_I RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RST_N_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input [0:0]rst_n_i;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.SEG_MODULE_O DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.SEG_MODULE_O, LAYERED_METADATA undef" *) output [3:0]seg_module_o;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.SEG_SEGMENT_O DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.SEG_SEGMENT_O, LAYERED_METADATA undef" *) output [7:0]seg_segment_o;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.SW_I DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.SW_I, LAYERED_METADATA undef" *) input [15:0]sw_i;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.UART_RXD_I DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.UART_RXD_I, LAYERED_METADATA undef" *) input uart_rxd_i;
  (* x_interface_info = "xilinx.com:signal:data:1.0 DATA.UART_TXD_O DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME DATA.UART_TXD_O, LAYERED_METADATA undef" *) output uart_txd_o;

  wire \<const1> ;
  wire [0:0]Din;
  wire clk_i;
  wire [15:0]led_o;
  wire [15:0]neo430_top_0_gpio_o_0;
  wire neo430_top_0_n_22;
  wire [0:0]rst_n_i;
  wire [3:0]seg_module_o;
  wire [6:0]\^seg_segment_o ;
  wire [15:0]sw_i;
  wire uart_rxd_i;
  wire uart_txd_o;
  wire util_vector_logic_0_Res;
  wire xlslice_0_Dout;
  wire xlslice_1_Dout;
  wire xlslice_2_Dout;
  wire NLW_neo430_top_0_spi_mosi_o_UNCONNECTED;
  wire NLW_neo430_top_0_spi_sclk_o_UNCONNECTED;
  wire NLW_neo430_top_0_twi_scl_io_UNCONNECTED;
  wire NLW_neo430_top_0_twi_sda_io_UNCONNECTED;
  wire NLW_neo430_top_0_wb_cyc_o_UNCONNECTED;
  wire NLW_neo430_top_0_wb_stb_o_UNCONNECTED;
  wire NLW_neo430_top_0_wb_we_o_UNCONNECTED;
  wire [7:0]NLW_neo430_top_0_ext_ack_o_UNCONNECTED;
  wire [2:1]NLW_neo430_top_0_freq_gen_o_UNCONNECTED;
  wire [3:1]NLW_neo430_top_0_pwm_o_UNCONNECTED;
  wire [5:0]NLW_neo430_top_0_spi_cs_o_UNCONNECTED;
  wire [31:0]NLW_neo430_top_0_wb_adr_o_UNCONNECTED;
  wire [31:0]NLW_neo430_top_0_wb_dat_o_UNCONNECTED;
  wire [3:0]NLW_neo430_top_0_wb_sel_o_UNCONNECTED;
  wire [7:7]NLW_seven_seg_driver_0_seg_segment_o_UNCONNECTED;

  assign seg_segment_o[7] = \<const1> ;
  assign seg_segment_o[6:0] = \^seg_segment_o [6:0];
  VCC VCC
       (.P(\<const1> ));
  (* CHECK_LICENSE_TYPE = "SystemTop_led_dimmer_0_0,led_dimmer,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "led_dimmer,Vivado 2021.2" *) 
  SystemTop_led_dimmer_0_0 led_dimmer_0
       (.led_i(neo430_top_0_gpio_o_0),
        .led_o(led_o),
        .pwm_i(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "SystemTop_neo430_top_0_0,neo430_top,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "neo430_top,Vivado 2021.2" *) 
  SystemTop_neo430_top_0_0 neo430_top_0
       (.clk_i(clk_i),
        .ext_ack_o(NLW_neo430_top_0_ext_ack_o_UNCONNECTED[7:0]),
        .ext_irq_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .freq_gen_o({NLW_neo430_top_0_freq_gen_o_UNCONNECTED[2:1],neo430_top_0_n_22}),
        .gpio_i(sw_i),
        .gpio_o(neo430_top_0_gpio_o_0),
        .pwm_o({NLW_neo430_top_0_pwm_o_UNCONNECTED[3:1],Din}),
        .rst_i(util_vector_logic_0_Res),
        .spi_cs_o(NLW_neo430_top_0_spi_cs_o_UNCONNECTED[5:0]),
        .spi_miso_i(1'b0),
        .spi_mosi_o(NLW_neo430_top_0_spi_mosi_o_UNCONNECTED),
        .spi_sclk_o(NLW_neo430_top_0_spi_sclk_o_UNCONNECTED),
        .twi_scl_io(NLW_neo430_top_0_twi_scl_io_UNCONNECTED),
        .twi_sda_io(NLW_neo430_top_0_twi_sda_io_UNCONNECTED),
        .uart_rxd_i(uart_rxd_i),
        .uart_txd_o(uart_txd_o),
        .wb_ack_i(1'b0),
        .wb_adr_o(NLW_neo430_top_0_wb_adr_o_UNCONNECTED[31:0]),
        .wb_cyc_o(NLW_neo430_top_0_wb_cyc_o_UNCONNECTED),
        .wb_dat_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wb_dat_o(NLW_neo430_top_0_wb_dat_o_UNCONNECTED[31:0]),
        .wb_sel_o(NLW_neo430_top_0_wb_sel_o_UNCONNECTED[3:0]),
        .wb_stb_o(NLW_neo430_top_0_wb_stb_o_UNCONNECTED),
        .wb_we_o(NLW_neo430_top_0_wb_we_o_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "SystemTop_seven_seg_driver_0_0,seven_seg_driver,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* ip_definition_source = "module_ref" *) 
  (* x_core_info = "seven_seg_driver,Vivado 2021.2" *) 
  SystemTop_seven_seg_driver_0_0 seven_seg_driver_0
       (.bcd_vector_i(neo430_top_0_gpio_o_0),
        .clk_i(xlslice_2_Dout),
        .en_i(xlslice_1_Dout),
        .rst_i(rst_n_i),
        .seg_module_o(seg_module_o),
        .seg_segment_o({NLW_seven_seg_driver_0_seg_segment_o_UNCONNECTED[7],\^seg_segment_o }));
  (* CHECK_LICENSE_TYPE = "SystemTop_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
  SystemTop_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_n_i),
        .Res(util_vector_logic_0_Res));
  (* CHECK_LICENSE_TYPE = "SystemTop_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
  SystemTop_xlslice_0_0 xlslice_0
       (.Din({1'b0,1'b0,1'b0,Din}),
        .Dout(xlslice_0_Dout));
  (* CHECK_LICENSE_TYPE = "SystemTop_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
  SystemTop_xlslice_1_0 xlslice_1
       (.Din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sw_i[0]}),
        .Dout(xlslice_1_Dout));
  (* CHECK_LICENSE_TYPE = "SystemTop_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
  SystemTop_xlslice_2_0 xlslice_2
       (.Din({1'b0,1'b0,neo430_top_0_n_22}),
        .Dout(xlslice_2_Dout));
endmodule

(* ORIG_REF_NAME = "counter_up" *) 
module SystemTop_counter_up
   (D,
    en_i,
    clk_i,
    rst_i,
    Q,
    \register_sr_reg[5] ,
    \register_sr_reg[5]_0 ,
    \register_sr_reg[5]_1 );
  output [6:0]D;
  input en_i;
  input clk_i;
  input rst_i;
  input [3:0]Q;
  input [3:0]\register_sr_reg[5] ;
  input [3:0]\register_sr_reg[5]_0 ;
  input [3:0]\register_sr_reg[5]_1 ;

  wire [6:0]D;
  wire [3:0]Q;
  wire clk_i;
  wire [1:0]counter_sr;
  wire \counter_sr[1]_i_1_n_0 ;
  wire en_i;
  wire [0:0]p_0_in;
  wire \register_sr[6]_i_2_n_0 ;
  wire \register_sr[6]_i_3_n_0 ;
  wire \register_sr[6]_i_4_n_0 ;
  wire \register_sr[6]_i_5_n_0 ;
  wire [3:0]\register_sr_reg[5] ;
  wire [3:0]\register_sr_reg[5]_0 ;
  wire [3:0]\register_sr_reg[5]_1 ;
  wire rst_i;

  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_sr[0]_i_1 
       (.I0(counter_sr[0]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter_sr[1]_i_1 
       (.I0(counter_sr[1]),
        .I1(counter_sr[0]),
        .O(\counter_sr[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(p_0_in),
        .Q(counter_sr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(\counter_sr[1]_i_1_n_0 ),
        .Q(counter_sr[1]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h209C)) 
    \register_sr[0]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_3_n_0 ),
        .I2(\register_sr[6]_i_4_n_0 ),
        .I3(\register_sr[6]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \register_sr[1]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_3_n_0 ),
        .I2(\register_sr[6]_i_2_n_0 ),
        .I3(\register_sr[6]_i_4_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \register_sr[2]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_4_n_0 ),
        .I2(\register_sr[6]_i_2_n_0 ),
        .I3(\register_sr[6]_i_3_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \register_sr[3]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_3_n_0 ),
        .I2(\register_sr[6]_i_4_n_0 ),
        .I3(\register_sr[6]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \register_sr[4]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_2_n_0 ),
        .I2(\register_sr[6]_i_3_n_0 ),
        .I3(\register_sr[6]_i_4_n_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h5918)) 
    \register_sr[5]_i_1 
       (.I0(\register_sr[6]_i_5_n_0 ),
        .I1(\register_sr[6]_i_3_n_0 ),
        .I2(\register_sr[6]_i_2_n_0 ),
        .I3(\register_sr[6]_i_4_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h0091)) 
    \register_sr[6]_i_1 
       (.I0(\register_sr[6]_i_2_n_0 ),
        .I1(\register_sr[6]_i_3_n_0 ),
        .I2(\register_sr[6]_i_4_n_0 ),
        .I3(\register_sr[6]_i_5_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \register_sr[6]_i_2 
       (.I0(Q[1]),
        .I1(\register_sr_reg[5] [1]),
        .I2(\register_sr_reg[5]_0 [1]),
        .I3(counter_sr[0]),
        .I4(counter_sr[1]),
        .I5(\register_sr_reg[5]_1 [1]),
        .O(\register_sr[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \register_sr[6]_i_3 
       (.I0(Q[2]),
        .I1(\register_sr_reg[5] [2]),
        .I2(\register_sr_reg[5]_0 [2]),
        .I3(counter_sr[0]),
        .I4(counter_sr[1]),
        .I5(\register_sr_reg[5]_1 [2]),
        .O(\register_sr[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \register_sr[6]_i_4 
       (.I0(Q[0]),
        .I1(\register_sr_reg[5] [0]),
        .I2(\register_sr_reg[5]_0 [0]),
        .I3(counter_sr[0]),
        .I4(counter_sr[1]),
        .I5(\register_sr_reg[5]_1 [0]),
        .O(\register_sr[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \register_sr[6]_i_5 
       (.I0(Q[3]),
        .I1(\register_sr_reg[5] [3]),
        .I2(\register_sr_reg[5]_0 [3]),
        .I3(counter_sr[0]),
        .I4(counter_sr[1]),
        .I5(\register_sr_reg[5]_1 [3]),
        .O(\register_sr[6]_i_5_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_led_dimmer_0_0,led_dimmer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "led_dimmer,Vivado 2021.2" *) 
module SystemTop_led_dimmer_0_0
   (led_i,
    led_o,
    pwm_i);
  input [15:0]led_i;
  output [15:0]led_o;
  input pwm_i;

  wire [15:0]led_i;
  wire [15:0]led_o;
  wire pwm_i;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[0]_INST_0 
       (.I0(led_i[0]),
        .I1(pwm_i),
        .O(led_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[10]_INST_0 
       (.I0(led_i[10]),
        .I1(pwm_i),
        .O(led_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[11]_INST_0 
       (.I0(led_i[11]),
        .I1(pwm_i),
        .O(led_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[12]_INST_0 
       (.I0(led_i[12]),
        .I1(pwm_i),
        .O(led_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[13]_INST_0 
       (.I0(led_i[13]),
        .I1(pwm_i),
        .O(led_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[14]_INST_0 
       (.I0(led_i[14]),
        .I1(pwm_i),
        .O(led_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[15]_INST_0 
       (.I0(led_i[15]),
        .I1(pwm_i),
        .O(led_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[1]_INST_0 
       (.I0(led_i[1]),
        .I1(pwm_i),
        .O(led_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[2]_INST_0 
       (.I0(led_i[2]),
        .I1(pwm_i),
        .O(led_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[3]_INST_0 
       (.I0(led_i[3]),
        .I1(pwm_i),
        .O(led_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[4]_INST_0 
       (.I0(led_i[4]),
        .I1(pwm_i),
        .O(led_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[5]_INST_0 
       (.I0(led_i[5]),
        .I1(pwm_i),
        .O(led_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[6]_INST_0 
       (.I0(led_i[6]),
        .I1(pwm_i),
        .O(led_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[7]_INST_0 
       (.I0(led_i[7]),
        .I1(pwm_i),
        .O(led_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[8]_INST_0 
       (.I0(led_i[8]),
        .I1(pwm_i),
        .O(led_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \led_o[9]_INST_0 
       (.I0(led_i[9]),
        .I1(pwm_i),
        .O(led_o[9]));
endmodule

(* ORIG_REF_NAME = "neo430_addr_gen" *) 
module SystemTop_neo430_addr_gen
   (addr_add,
    Q,
    reg_i,
    S,
    reg_file_reg_0_15_4_4_i_1,
    reg_file_reg_0_15_8_8_i_1,
    reg_file_reg_0_15_12_12_i_1,
    \mem_addr_reg_reg[3]_0 ,
    \mem_addr_reg_reg[7]_0 ,
    DI,
    \mem_addr_reg_reg[11]_0 ,
    \mem_addr_reg_reg[15]_0 ,
    \mem_addr_reg_reg[15]_1 ,
    \mem_addr_reg_reg[0]_0 ,
    clk_i);
  output [15:0]addr_add;
  output [15:0]Q;
  input [14:0]reg_i;
  input [3:0]S;
  input [3:0]reg_file_reg_0_15_4_4_i_1;
  input [3:0]reg_file_reg_0_15_8_8_i_1;
  input [3:0]reg_file_reg_0_15_12_12_i_1;
  input [3:0]\mem_addr_reg_reg[3]_0 ;
  input [3:0]\mem_addr_reg_reg[7]_0 ;
  input [1:0]DI;
  input [3:0]\mem_addr_reg_reg[11]_0 ;
  input [1:0]\mem_addr_reg_reg[15]_0 ;
  input [3:0]\mem_addr_reg_reg[15]_1 ;
  input [0:0]\mem_addr_reg_reg[0]_0 ;
  input clk_i;

  wire [1:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire \_inferred__1/i__carry__0_n_0 ;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry__0_n_4 ;
  wire \_inferred__1/i__carry__0_n_5 ;
  wire \_inferred__1/i__carry__0_n_6 ;
  wire \_inferred__1/i__carry__0_n_7 ;
  wire \_inferred__1/i__carry__1_n_0 ;
  wire \_inferred__1/i__carry__1_n_1 ;
  wire \_inferred__1/i__carry__1_n_2 ;
  wire \_inferred__1/i__carry__1_n_3 ;
  wire \_inferred__1/i__carry__1_n_4 ;
  wire \_inferred__1/i__carry__1_n_5 ;
  wire \_inferred__1/i__carry__1_n_6 ;
  wire \_inferred__1/i__carry__1_n_7 ;
  wire \_inferred__1/i__carry__2_n_1 ;
  wire \_inferred__1/i__carry__2_n_2 ;
  wire \_inferred__1/i__carry__2_n_3 ;
  wire \_inferred__1/i__carry__2_n_4 ;
  wire \_inferred__1/i__carry__2_n_5 ;
  wire \_inferred__1/i__carry__2_n_6 ;
  wire \_inferred__1/i__carry__2_n_7 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire \_inferred__1/i__carry_n_4 ;
  wire \_inferred__1/i__carry_n_5 ;
  wire \_inferred__1/i__carry_n_6 ;
  wire \_inferred__1/i__carry_n_7 ;
  wire [15:0]addr_add;
  wire clk_i;
  wire mem_addr_reg0_carry__0_n_0;
  wire mem_addr_reg0_carry__0_n_1;
  wire mem_addr_reg0_carry__0_n_2;
  wire mem_addr_reg0_carry__0_n_3;
  wire mem_addr_reg0_carry__1_n_0;
  wire mem_addr_reg0_carry__1_n_1;
  wire mem_addr_reg0_carry__1_n_2;
  wire mem_addr_reg0_carry__1_n_3;
  wire mem_addr_reg0_carry__2_n_1;
  wire mem_addr_reg0_carry__2_n_2;
  wire mem_addr_reg0_carry__2_n_3;
  wire mem_addr_reg0_carry_n_0;
  wire mem_addr_reg0_carry_n_1;
  wire mem_addr_reg0_carry_n_2;
  wire mem_addr_reg0_carry_n_3;
  wire [0:0]\mem_addr_reg_reg[0]_0 ;
  wire [3:0]\mem_addr_reg_reg[11]_0 ;
  wire [1:0]\mem_addr_reg_reg[15]_0 ;
  wire [3:0]\mem_addr_reg_reg[15]_1 ;
  wire [3:0]\mem_addr_reg_reg[3]_0 ;
  wire [3:0]\mem_addr_reg_reg[7]_0 ;
  wire [3:0]reg_file_reg_0_15_12_12_i_1;
  wire [3:0]reg_file_reg_0_15_4_4_i_1;
  wire [3:0]reg_file_reg_0_15_8_8_i_1;
  wire [14:0]reg_i;
  wire [3:3]\NLW__inferred__1/i__carry__2_CO_UNCONNECTED ;
  wire [3:3]NLW_mem_addr_reg0_carry__2_CO_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(reg_i[3:0]),
        .O({\_inferred__1/i__carry_n_4 ,\_inferred__1/i__carry_n_5 ,\_inferred__1/i__carry_n_6 ,\_inferred__1/i__carry_n_7 }),
        .S(\mem_addr_reg_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\_inferred__1/i__carry__0_n_0 ,\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(reg_i[7:4]),
        .O({\_inferred__1/i__carry__0_n_4 ,\_inferred__1/i__carry__0_n_5 ,\_inferred__1/i__carry__0_n_6 ,\_inferred__1/i__carry__0_n_7 }),
        .S(\mem_addr_reg_reg[7]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__1 
       (.CI(\_inferred__1/i__carry__0_n_0 ),
        .CO({\_inferred__1/i__carry__1_n_0 ,\_inferred__1/i__carry__1_n_1 ,\_inferred__1/i__carry__1_n_2 ,\_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,reg_i[9:8]}),
        .O({\_inferred__1/i__carry__1_n_4 ,\_inferred__1/i__carry__1_n_5 ,\_inferred__1/i__carry__1_n_6 ,\_inferred__1/i__carry__1_n_7 }),
        .S(\mem_addr_reg_reg[11]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__1/i__carry__2 
       (.CI(\_inferred__1/i__carry__1_n_0 ),
        .CO({\NLW__inferred__1/i__carry__2_CO_UNCONNECTED [3],\_inferred__1/i__carry__2_n_1 ,\_inferred__1/i__carry__2_n_2 ,\_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,reg_i[14],\mem_addr_reg_reg[15]_0 }),
        .O({\_inferred__1/i__carry__2_n_4 ,\_inferred__1/i__carry__2_n_5 ,\_inferred__1/i__carry__2_n_6 ,\_inferred__1/i__carry__2_n_7 }),
        .S(\mem_addr_reg_reg[15]_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_addr_reg0_carry
       (.CI(1'b0),
        .CO({mem_addr_reg0_carry_n_0,mem_addr_reg0_carry_n_1,mem_addr_reg0_carry_n_2,mem_addr_reg0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(reg_i[3:0]),
        .O(addr_add[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_addr_reg0_carry__0
       (.CI(mem_addr_reg0_carry_n_0),
        .CO({mem_addr_reg0_carry__0_n_0,mem_addr_reg0_carry__0_n_1,mem_addr_reg0_carry__0_n_2,mem_addr_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(reg_i[7:4]),
        .O(addr_add[7:4]),
        .S(reg_file_reg_0_15_4_4_i_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_addr_reg0_carry__1
       (.CI(mem_addr_reg0_carry__0_n_0),
        .CO({mem_addr_reg0_carry__1_n_0,mem_addr_reg0_carry__1_n_1,mem_addr_reg0_carry__1_n_2,mem_addr_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(reg_i[11:8]),
        .O(addr_add[11:8]),
        .S(reg_file_reg_0_15_8_8_i_1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mem_addr_reg0_carry__2
       (.CI(mem_addr_reg0_carry__1_n_0),
        .CO({NLW_mem_addr_reg0_carry__2_CO_UNCONNECTED[3],mem_addr_reg0_carry__2_n_1,mem_addr_reg0_carry__2_n_2,mem_addr_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,reg_i[14:12]}),
        .O(addr_add[15:12]),
        .S(reg_file_reg_0_15_12_12_i_1));
  FDRE \mem_addr_reg_reg[0] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry_n_7 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[10] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__1_n_5 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[11] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__1_n_4 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[12] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__2_n_7 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[13] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__2_n_6 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[14] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__2_n_5 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[15] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__2_n_4 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[1] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry_n_6 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[2] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry_n_5 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[3] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry_n_4 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[4] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__0_n_7 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[5] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__0_n_6 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[6] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__0_n_5 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[7] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__0_n_4 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[8] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__1_n_7 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \mem_addr_reg_reg[9] 
       (.C(clk_i),
        .CE(\mem_addr_reg_reg[0]_0 ),
        .D(\_inferred__1/i__carry__1_n_6 ),
        .Q(Q[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neo430_alu" *) 
module SystemTop_neo430_alu
   (O,
    Q,
    \op_b_ff_reg[15]_0 ,
    \op_b_ff_reg[15]_1 ,
    \op_a_ff_reg[7]_0 ,
    \op_a_ff_reg[15]_0 ,
    \op_b_ff_reg[11]_0 ,
    \op_a_ff_reg[7]_1 ,
    \op_a_ff_reg[7]_2 ,
    \op_a_ff_reg[9]_0 ,
    \op_a_ff_reg[2]_0 ,
    \op_a_ff_reg[11]_0 ,
    \op_a_ff_reg[4]_0 ,
    \op_a_ff_reg[13]_0 ,
    \op_a_ff_reg[6]_0 ,
    \op_a_ff_reg[7]_3 ,
    \op_a_ff_reg[1]_0 ,
    \op_a_ff_reg[0]_0 ,
    \op_a_ff_reg[1]_1 ,
    \ctrl_reg[18] ,
    \ctrl_reg[18]_0 ,
    CO,
    S,
    reg_file_reg_0_15_12_12_i_5_0,
    op_a_v1,
    \sreg[8]_i_4 ,
    ctrl_bus,
    D,
    clk_i,
    reg_file_reg_0_15_0_0_i_3);
  output [3:0]O;
  output [15:0]Q;
  output [3:0]\op_b_ff_reg[15]_0 ;
  output [0:0]\op_b_ff_reg[15]_1 ;
  output \op_a_ff_reg[7]_0 ;
  output [15:0]\op_a_ff_reg[15]_0 ;
  output \op_b_ff_reg[11]_0 ;
  output \op_a_ff_reg[7]_1 ;
  output \op_a_ff_reg[7]_2 ;
  output \op_a_ff_reg[9]_0 ;
  output \op_a_ff_reg[2]_0 ;
  output \op_a_ff_reg[11]_0 ;
  output \op_a_ff_reg[4]_0 ;
  output \op_a_ff_reg[13]_0 ;
  output \op_a_ff_reg[6]_0 ;
  output \op_a_ff_reg[7]_3 ;
  output \op_a_ff_reg[1]_0 ;
  output \op_a_ff_reg[0]_0 ;
  output \op_a_ff_reg[1]_1 ;
  output [3:0]\ctrl_reg[18] ;
  output [2:0]\ctrl_reg[18]_0 ;
  input [0:0]CO;
  input [0:0]S;
  input [5:0]reg_file_reg_0_15_12_12_i_5_0;
  input op_a_v1;
  input [0:0]\sreg[8]_i_4 ;
  input [0:0]ctrl_bus;
  input [15:0]D;
  input clk_i;
  input [0:0]reg_file_reg_0_15_0_0_i_3;

  wire [0:0]CO;
  wire [15:0]D;
  wire [3:0]O;
  wire [15:0]Q;
  wire [0:0]S;
  wire clk_i;
  wire [0:0]ctrl_bus;
  wire [3:0]\ctrl_reg[18] ;
  wire [2:0]\ctrl_reg[18]_0 ;
  wire \op_a_ff_reg[0]_0 ;
  wire \op_a_ff_reg[11]_0 ;
  wire \op_a_ff_reg[13]_0 ;
  wire [15:0]\op_a_ff_reg[15]_0 ;
  wire \op_a_ff_reg[1]_0 ;
  wire \op_a_ff_reg[1]_1 ;
  wire \op_a_ff_reg[2]_0 ;
  wire \op_a_ff_reg[4]_0 ;
  wire \op_a_ff_reg[6]_0 ;
  wire \op_a_ff_reg[7]_0 ;
  wire \op_a_ff_reg[7]_1 ;
  wire \op_a_ff_reg[7]_2 ;
  wire \op_a_ff_reg[7]_3 ;
  wire \op_a_ff_reg[9]_0 ;
  wire op_a_v1;
  wire \op_b_ff_reg[11]_0 ;
  wire [3:0]\op_b_ff_reg[15]_0 ;
  wire [0:0]\op_b_ff_reg[15]_1 ;
  wire [0:0]reg_file_reg_0_15_0_0_i_3;
  wire reg_file_reg_0_15_12_12_i_10_n_0;
  wire [5:0]reg_file_reg_0_15_12_12_i_5_0;
  wire reg_file_reg_0_15_12_12_i_5_n_0;
  wire reg_file_reg_0_15_12_12_i_5_n_1;
  wire reg_file_reg_0_15_12_12_i_5_n_2;
  wire reg_file_reg_0_15_12_12_i_5_n_3;
  wire reg_file_reg_0_15_12_12_i_8_n_0;
  wire reg_file_reg_0_15_12_12_i_9_n_0;
  wire reg_file_reg_0_15_8_8_i_10_n_0;
  wire reg_file_reg_0_15_8_8_i_5_n_0;
  wire reg_file_reg_0_15_8_8_i_5_n_1;
  wire reg_file_reg_0_15_8_8_i_5_n_2;
  wire reg_file_reg_0_15_8_8_i_5_n_3;
  wire reg_file_reg_0_15_8_8_i_7_n_0;
  wire reg_file_reg_0_15_8_8_i_8_n_0;
  wire reg_file_reg_0_15_8_8_i_9_n_0;
  wire [0:0]\sreg[8]_i_4 ;
  wire \sreg[8]_i_9_n_0 ;
  wire [3:1]\NLW_sreg_reg[0]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_sreg_reg[0]_i_7_O_UNCONNECTED ;

  FDRE \op_a_ff_reg[0] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[0]),
        .Q(\op_a_ff_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \op_a_ff_reg[10] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[10]),
        .Q(\op_a_ff_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \op_a_ff_reg[11] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[11]),
        .Q(\op_a_ff_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \op_a_ff_reg[12] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[12]),
        .Q(\op_a_ff_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \op_a_ff_reg[13] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[13]),
        .Q(\op_a_ff_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \op_a_ff_reg[14] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[14]),
        .Q(\op_a_ff_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \op_a_ff_reg[15] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[15]),
        .Q(\op_a_ff_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \op_a_ff_reg[1] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[1]),
        .Q(\op_a_ff_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \op_a_ff_reg[2] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[2]),
        .Q(\op_a_ff_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \op_a_ff_reg[3] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[3]),
        .Q(\op_a_ff_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \op_a_ff_reg[4] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[4]),
        .Q(\op_a_ff_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \op_a_ff_reg[5] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[5]),
        .Q(\op_a_ff_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \op_a_ff_reg[6] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[6]),
        .Q(\op_a_ff_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \op_a_ff_reg[7] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[7]),
        .Q(\op_a_ff_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \op_a_ff_reg[8] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[8]),
        .Q(\op_a_ff_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \op_a_ff_reg[9] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[0]),
        .D(D[9]),
        .Q(\op_a_ff_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \op_b_ff_reg[0] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \op_b_ff_reg[10] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \op_b_ff_reg[11] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \op_b_ff_reg[12] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \op_b_ff_reg[13] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \op_b_ff_reg[14] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \op_b_ff_reg[15] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \op_b_ff_reg[1] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \op_b_ff_reg[2] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \op_b_ff_reg[3] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \op_b_ff_reg[4] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \op_b_ff_reg[5] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \op_b_ff_reg[6] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \op_b_ff_reg[7] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \op_b_ff_reg[8] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \op_b_ff_reg[9] 
       (.C(clk_i),
        .CE(reg_file_reg_0_15_12_12_i_5_0[1]),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_0_0_i_10
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [3]),
        .I5(Q[3]),
        .O(\ctrl_reg[18] [3]));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_0_0_i_11
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [2]),
        .I5(Q[2]),
        .O(\ctrl_reg[18] [2]));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_0_0_i_12
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [1]),
        .I5(Q[1]),
        .O(\ctrl_reg[18] [1]));
  LUT6 #(
    .INIT(64'hAAAA9AAA9AAAAAAA)) 
    reg_file_reg_0_15_0_0_i_13
       (.I0(\op_a_ff_reg[15]_0 [0]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I4(reg_file_reg_0_15_0_0_i_3),
        .I5(reg_file_reg_0_15_12_12_i_5_0[2]),
        .O(\ctrl_reg[18] [0]));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    reg_file_reg_0_15_0_0_i_14
       (.I0(\op_a_ff_reg[15]_0 [1]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I2(\op_a_ff_reg[15]_0 [8]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I4(\op_a_ff_reg[15]_0 [0]),
        .I5(reg_file_reg_0_15_12_12_i_5_0[4]),
        .O(\op_a_ff_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    reg_file_reg_0_15_0_0_i_4
       (.I0(\op_a_ff_reg[15]_0 [0]),
        .I1(Q[0]),
        .O(\op_a_ff_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hB24A)) 
    reg_file_reg_0_15_11_11_i_3
       (.I0(Q[11]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I2(\op_a_ff_reg[15]_0 [11]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .O(\op_b_ff_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_12_12_i_10
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [12]),
        .I5(Q[12]),
        .O(reg_file_reg_0_15_12_12_i_10_n_0));
  CARRY4 reg_file_reg_0_15_12_12_i_5
       (.CI(reg_file_reg_0_15_8_8_i_5_n_0),
        .CO({reg_file_reg_0_15_12_12_i_5_n_0,reg_file_reg_0_15_12_12_i_5_n_1,reg_file_reg_0_15_12_12_i_5_n_2,reg_file_reg_0_15_12_12_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(\op_b_ff_reg[15]_0 ),
        .S({S,reg_file_reg_0_15_12_12_i_8_n_0,reg_file_reg_0_15_12_12_i_9_n_0,reg_file_reg_0_15_12_12_i_10_n_0}));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_12_12_i_8
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [14]),
        .I5(Q[14]),
        .O(reg_file_reg_0_15_12_12_i_8_n_0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_12_12_i_9
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [13]),
        .I5(Q[13]),
        .O(reg_file_reg_0_15_12_12_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    reg_file_reg_0_15_1_1_i_3
       (.I0(\op_a_ff_reg[15]_0 [1]),
        .I1(Q[1]),
        .O(\op_a_ff_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFCCFCCEFECEFEC)) 
    reg_file_reg_0_15_1_1_i_6
       (.I0(\op_a_ff_reg[15]_0 [9]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I3(\op_a_ff_reg[15]_0 [2]),
        .I4(\op_a_ff_reg[15]_0 [1]),
        .I5(reg_file_reg_0_15_12_12_i_5_0[3]),
        .O(\op_a_ff_reg[9]_0 ));
  LUT6 #(
    .INIT(64'hEFECEFECFFFCCFCC)) 
    reg_file_reg_0_15_2_2_i_6
       (.I0(\op_a_ff_reg[15]_0 [2]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I3(\op_a_ff_reg[15]_0 [3]),
        .I4(\op_a_ff_reg[15]_0 [10]),
        .I5(reg_file_reg_0_15_12_12_i_5_0[3]),
        .O(\op_a_ff_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFCCFCCEFECEFEC)) 
    reg_file_reg_0_15_3_3_i_6
       (.I0(\op_a_ff_reg[15]_0 [11]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I3(\op_a_ff_reg[15]_0 [4]),
        .I4(\op_a_ff_reg[15]_0 [3]),
        .I5(reg_file_reg_0_15_12_12_i_5_0[3]),
        .O(\op_a_ff_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFCFFFFFA0C0)) 
    reg_file_reg_0_15_4_4_i_6
       (.I0(\op_a_ff_reg[15]_0 [4]),
        .I1(\op_a_ff_reg[15]_0 [12]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I4(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I5(\op_a_ff_reg[15]_0 [5]),
        .O(\op_a_ff_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hFFFFCAFFFFFFCA00)) 
    reg_file_reg_0_15_5_5_i_6
       (.I0(\op_a_ff_reg[15]_0 [13]),
        .I1(\op_a_ff_reg[15]_0 [5]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I5(\op_a_ff_reg[15]_0 [6]),
        .O(\op_a_ff_reg[13]_0 ));
  LUT6 #(
    .INIT(64'hFFFFAFCFFFFFA0C0)) 
    reg_file_reg_0_15_6_6_i_6
       (.I0(\op_a_ff_reg[15]_0 [6]),
        .I1(\op_a_ff_reg[15]_0 [14]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I4(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I5(\op_a_ff_reg[15]_0 [7]),
        .O(\op_a_ff_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_7_7_i_10
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [4]),
        .I5(Q[4]),
        .O(\ctrl_reg[18]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    reg_file_reg_0_15_7_7_i_4
       (.I0(\op_a_ff_reg[15]_0 [7]),
        .I1(Q[7]),
        .O(\op_a_ff_reg[7]_3 ));
  LUT4 #(
    .INIT(16'h8E64)) 
    reg_file_reg_0_15_7_7_i_5
       (.I0(\op_a_ff_reg[15]_0 [7]),
        .I1(Q[7]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .O(\op_a_ff_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_7_7_i_8
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [6]),
        .I5(Q[6]),
        .O(\ctrl_reg[18]_0 [2]));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_7_7_i_9
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [5]),
        .I5(Q[5]),
        .O(\ctrl_reg[18]_0 [1]));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_8_8_i_10
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [8]),
        .I5(CO),
        .O(reg_file_reg_0_15_8_8_i_10_n_0));
  CARRY4 reg_file_reg_0_15_8_8_i_5
       (.CI(1'b0),
        .CO({reg_file_reg_0_15_8_8_i_5_n_0,reg_file_reg_0_15_8_8_i_5_n_1,reg_file_reg_0_15_8_8_i_5_n_2,reg_file_reg_0_15_8_8_i_5_n_3}),
        .CYINIT(Q[8]),
        .DI({Q[11:9],CO}),
        .O(O),
        .S({reg_file_reg_0_15_8_8_i_7_n_0,reg_file_reg_0_15_8_8_i_8_n_0,reg_file_reg_0_15_8_8_i_9_n_0,reg_file_reg_0_15_8_8_i_10_n_0}));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_8_8_i_7
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [11]),
        .I5(Q[11]),
        .O(reg_file_reg_0_15_8_8_i_7_n_0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_8_8_i_8
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [10]),
        .I5(Q[10]),
        .O(reg_file_reg_0_15_8_8_i_8_n_0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_8_8_i_9
       (.I0(reg_file_reg_0_15_12_12_i_5_0[5]),
        .I1(reg_file_reg_0_15_12_12_i_5_0[4]),
        .I2(reg_file_reg_0_15_12_12_i_5_0[3]),
        .I3(reg_file_reg_0_15_12_12_i_5_0[2]),
        .I4(\op_a_ff_reg[15]_0 [9]),
        .I5(Q[9]),
        .O(reg_file_reg_0_15_8_8_i_9_n_0));
  LUT6 #(
    .INIT(64'h0690FFFF06900000)) 
    \sreg[8]_i_6 
       (.I0(\op_a_ff_reg[15]_0 [7]),
        .I1(op_a_v1),
        .I2(Q[7]),
        .I3(\sreg[8]_i_4 ),
        .I4(ctrl_bus),
        .I5(\sreg[8]_i_9_n_0 ),
        .O(\op_a_ff_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8F808080)) 
    \sreg[8]_i_7 
       (.I0(\op_a_ff_reg[15]_0 [7]),
        .I1(Q[7]),
        .I2(ctrl_bus),
        .I3(\op_a_ff_reg[15]_0 [15]),
        .I4(Q[15]),
        .O(\op_a_ff_reg[7]_2 ));
  LUT4 #(
    .INIT(16'h0690)) 
    \sreg[8]_i_9 
       (.I0(\op_a_ff_reg[15]_0 [15]),
        .I1(op_a_v1),
        .I2(Q[15]),
        .I3(\op_b_ff_reg[15]_0 [3]),
        .O(\sreg[8]_i_9_n_0 ));
  CARRY4 \sreg_reg[0]_i_7 
       (.CI(reg_file_reg_0_15_12_12_i_5_n_0),
        .CO({\NLW_sreg_reg[0]_i_7_CO_UNCONNECTED [3:1],\op_b_ff_reg[15]_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sreg_reg[0]_i_7_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "neo430_boot_rom" *) 
module SystemTop_neo430_boot_rom
   (rden,
    DOADO,
    rden_reg_0,
    rdata_reg__0_0,
    rdata_reg__0_1,
    rden_reg_1,
    rden_reg_2,
    clk_i,
    rdata_reg__0_2,
    ADDRARDADDR,
    timer_rdata,
    uart_rdata,
    \ir_reg[14] ,
    rden_0,
    rden_1,
    rdata_reg);
  output rden;
  output [11:0]DOADO;
  output rden_reg_0;
  output rdata_reg__0_0;
  output rdata_reg__0_1;
  output rden_reg_1;
  input rden_reg_2;
  input clk_i;
  input rdata_reg__0_2;
  input [9:0]ADDRARDADDR;
  input [1:0]timer_rdata;
  input [1:0]uart_rdata;
  input [1:0]\ir_reg[14] ;
  input rden_0;
  input rden_1;
  input [0:0]rdata_reg;

  wire [9:0]ADDRARDADDR;
  wire [11:0]DOADO;
  wire clk_i;
  wire [1:0]\ir_reg[14] ;
  wire [0:0]rdata_reg;
  wire [15:12]rdata_reg_0;
  wire rdata_reg__0_0;
  wire rdata_reg__0_1;
  wire rdata_reg__0_2;
  wire rden;
  wire rden_0;
  wire rden_1;
  wire rden_reg_0;
  wire rden_reg_1;
  wire rden_reg_2;
  wire [1:0]timer_rdata;
  wire [1:0]uart_rdata;
  wire [15:0]NLW_rdata_reg__0_DOBDO_UNCONNECTED;
  wire [1:0]NLW_rdata_reg__0_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_rdata_reg__0_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF888)) 
    \ir[14]_i_3 
       (.I0(rdata_reg_0[14]),
        .I1(rden),
        .I2(\ir_reg[14] [1]),
        .I3(rden_0),
        .O(rdata_reg__0_0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \ir[15]_i_4 
       (.I0(rden),
        .I1(rdata_reg_0[15]),
        .I2(timer_rdata[1]),
        .I3(uart_rdata[1]),
        .O(rden_reg_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "rdata" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h413BF6AC12B0435CC0045392120B120C120D120E120F3DE2FFFA5211BFFE4031),
    .INIT_01(256'h4A4CF5D812B0F72E403C4C4A4130F5D812B0F6F8403C1300413F413E413D413C),
    .INIT_02(256'h128A0005407CF690403AFFA4D392120AF04C4030F6A612B0435C4302F62A12B0),
    .INIT_03(256'h128A009E407CF690403AFFA4D392120A4130413A4A4CF68812B04C0A128A434C),
    .INIT_04(256'h407C4130F68812B0F69012B0FFA4D3924130413A4A4CF68812B04C0A128A434C),
    .INIT_05(256'h40304300400040323BFD930C4D2CFFA0403DF5D812B0F735403CF09012B000B9),
    .INIT_06(256'hF6B812B000004D8100004C8E000A411E4F084E094C0A832112081209120AF0BC),
    .INIT_07(256'h436E8231120AF6D64030532100004C89F6F212B00010407E412D4A0C00004C88),
    .INIT_08(256'h0003407CF690403AFFA4D392F0C212B00006503E410E522F410F00004E81510E),
    .INIT_09(256'h4A4CF68812B04C0A128A434C128A0002411C128A0004411C128A0006411C128A),
    .INIT_0A(256'h12894C4A1289F5C64039200B934E4D074C08120712081209120A4130413A5231),
    .INIT_0B(256'h40301289630D470D531C480C4C4A1289F0FA4039F6D44030F6BC12B04A4C4C4D),
    .INIT_0C(256'h93050100F035FFF242154C4600068031120412051206120712081209120AF160),
    .INIT_0D(256'h426D434C464EF1464037128DF742403C200F9306F5D8403DF03412B0435C2403),
    .INIT_0E(256'h4C0A1287426D436C464EF1B44030F755403CF1A44030436C2407CAFE903C1287),
    .INIT_0F(256'h4D0C5C0E4C0E430D4A0C100AC312281D9A0FFFF6421F4C041287426D426C464E),
    .INIT_10(256'h9F0A100FC312200C00049981200F000298814349434800044C8100024E816D0C),
    .INIT_11(256'h4F81622D490D0006503C480C464EF1A44030426CF1A44030427C241E94052819),
    .INIT_12(256'h4030531A0000438C5A0C4A0CF20E4030412F6309532800004C88EC0512870000),
    .INIT_13(256'h4E81510E436E4E4982311209120AF6CE403000065031F5D812B0F760403CF21E),
    .INIT_14(256'hF690403AFFA4D392F09012B00006407CF0C212B00006503E410E522F410F0000),
    .INIT_15(256'h403AF68812B0128A490C128A0002411C128A0004411C128A0006411C128A436C),
    .INIT_16(256'h12B04E0C4E074D084C0A120712081209120AF6D84030523123FD934C128AF050),
    .INIT_17(256'h120AF6D440301289630D480D531C4A0C474E1289480D4A0C4C4EF2724039F6B8),
    .INIT_18(256'hF09012B00006407CF0C212B00006503E410E522F410F00004E81510E436E8231),
    .INIT_19(256'h128A0002411C128A0004411C128A0006411C128A00D8407CF690403AFFA4D392),
    .INIT_1A(256'h12051206120712081209120A4130413A523123FD934C128AF050403AF68812B0),
    .INIT_1B(256'hF03412B02002934CF07012B0F2FE12B0426D434C1288F763403CF5D840381204),
    .INIT_1C(256'h950949044349128A426D436C450EFFF64215128A426D434CCAFE403EF2CE403A),
    .INIT_1D(256'h503C460C43074906EE04492EF6CE40301288F760403C128A426D426C440E2809),
    .INIT_1E(256'h4032F6C612B012051206120712081209120AF39E40305329128A622D470D0006),
    .INIT_1F(256'h435CFFA84382FF884382FFEE4382FFE84382FFE04382FF904382FFEC4382C000),
    .INIT_20(256'h4382F66012B0436CF5D212B0F53212B0434D4B00403CC000F00A40B2F6A612B0),
    .INIT_21(256'hF6B212B0C0044382FFB000FF40B2FFB44C82533C5C0C5C0C482CFFFE4038FFB0),
    .INIT_22(256'h1289FFF4421C128AF795403C1289FFF0421CF6464039128AF767403CF5D8403A),
    .INIT_23(256'hF7B0403C1289FFF6421C128AF7A7403C1289FFFC421C1289482C128AF79E403C),
    .INIT_24(256'hF7C2403CF09012B000AB407C1289FFF2421C128AF7B9403C1289FFFA421C128A),
    .INIT_25(256'h12B0128AF7EA403CF18212B0435C20080010903C4E2CFFA2403DC004403E128A),
    .INIT_26(256'h128AF7EC403CF3544035F5B24036F5C640371288F02A403837F1930C4D2CF09E),
    .INIT_27(256'h200300689079F4DA4030F0004030200400729079128AF7EA403C12864C491287),
    .INIT_28(256'h40301285200300709079F4DA4030F18212B0434C200500759079F4DA40301288),
    .INIT_29(256'h4C0EFFFE421BFFFC421A1209120AF4DA4030128AF7F4403C27CB00659079F4DA),
    .INIT_2A(256'h00FF407D00034079434A2C199E0A201B9B0928049F0B4F09434C6D0F4D0F5C0E),
    .INIT_2B(256'h1000D03DDC0D5D0D5D0D5D0D5D0D5D0D5D0D5D0D5A0D4A0DFFA0438228179C0D),
    .INIT_2C(256'hF6E412B0490D2008926A2402936AF54A4030531C7F0B8E0AF6D84030FFA04D82),
    .INIT_2D(256'h3BFD930D4E2DFFA0403E00FFF03CF5A04030100CC312F55C403000FFF03A535A),
    .INIT_2E(256'h120712081209120A4130FFA2421C413037FD930C4D2CFFA2403D4130FFA24C82),
    .INIT_2F(256'h4A4C1288474C2002000A903AF6D440302002930A496A000D4077F5B240384C09),
    .INIT_30(256'h507C4130F5B212B00030503C28059C4D0009407D000FF07CF5EA403053191288),
    .INIT_31(256'h494C128AF608403AF6E412B0426D490C4C491209120AF618403000FFF03C0057),
    .INIT_32(256'hF6D84030128A494C128AF62A403AF6E412B0427D4C091209120AF6D84030128A),
    .INIT_33(256'hD03C5C0C5C0C5C0C5C0C5C0C5C0C5C0C5C0C5C0C0000438DFFA4403D00FFF03C),
    .INIT_34(256'h930C4E2CFFA4403E00004C8DFFA6403D4130FFA4FFC0F0B2413000004C8D0040),
    .INIT_35(256'h4D4C4C4E4130108C41304303D2324130FFACEC824130FFAC4C8241304D2C3BFD),
    .INIT_36(256'h533D4130413A4139413841374136413541344130FFB8470040B24130DE0C108E),
    .INIT_37(256'h3A680A3A73444D43413023FA930E100C100DC312533E413023FB930D100CC312),
    .INIT_38(256'h7250203A700A64616F6C7055203A750A74726174736552203A720A706C654820),
    .INIT_39(256'h0A2E2E2E676E69746F6F42005F5252450A070065747563657845203A650A676F),
    .INIT_3A(256'h002E2E2E676E6964616F4C002E2E2E4558454E494220676E697469617741000A),
    .INIT_3B(256'h3A564C420A0A726564616F6C746F6F42203033344F454E0A0A002E2E2E004B4F),
    .INIT_3C(256'h430A007830203A5253550A007830203A5657480A303230322033312079614D20),
    .INIT_3D(256'h30203A5359530A007830203A4D41520A007830203A4D4F520A007830203A4B4C),
    .INIT_3E(256'h6F742079656B207373657250202E7334206E6920746F6F626F7475410A0A0078),
    .INIT_3F(256'h0000000000444D432064614200203E3A444D430A000A000A0A2E74726F626120),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    rdata_reg__0
       (.ADDRARDADDR({ADDRARDADDR,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({rdata_reg_0,DOADO}),
        .DOBDO(NLW_rdata_reg__0_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_rdata_reg__0_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_rdata_reg__0_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(rdata_reg__0_2),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  FDRE rden_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(rden_reg_2),
        .Q(rden),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[3]_i_8 
       (.I0(rdata_reg_0[13]),
        .I1(rden),
        .I2(timer_rdata[0]),
        .I3(uart_rdata[0]),
        .O(rdata_reg__0_1));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \src[3]_i_9 
       (.I0(rden),
        .I1(rdata_reg_0[12]),
        .I2(rden_1),
        .I3(rdata_reg),
        .I4(\ir_reg[14] [0]),
        .I5(rden_0),
        .O(rden_reg_1));
endmodule

(* ORIG_REF_NAME = "neo430_control" *) 
module SystemTop_neo430_control
   (\ctrl_reg[19]_0 ,
    S,
    \ctrl_reg[21]_0 ,
    \ctrl_reg[23]_0 ,
    \ctrl_reg[12]_0 ,
    \mem_addr_reg_reg[1] ,
    \ctrl_reg[9]_0 ,
    \ctrl_reg[8]_0 ,
    D,
    \ctrl_reg[25]_0 ,
    \ctrl_reg[25]_1 ,
    \ctrl_reg[25]_2 ,
    \ctrl_reg[28]_0 ,
    \ctrl_reg[21]_1 ,
    \ctrl_reg[23]_1 ,
    \ctrl_reg[3]_0 ,
    \ctrl_reg[1]_0 ,
    \ctrl_reg[1]_1 ,
    DI,
    \mem_addr_reg_reg[11] ,
    \ctrl_reg[26]_0 ,
    \ctrl_reg[22]_0 ,
    \ctrl_reg[23]_2 ,
    \ctrl_reg[22]_1 ,
    \FSM_sequential_state_reg[3]_0 ,
    E,
    dio_swap_reg,
    \mem_addr_reg_reg[2] ,
    \mem_addr_reg_reg[2]_0 ,
    \din_reg[15] ,
    \pwm_ch_reg[1][7] ,
    \mem_addr_reg_reg[2]_1 ,
    \mem_addr_reg_reg[2]_2 ,
    \mem_addr_reg_reg[2]_3 ,
    cnt_reg_15_sp_1,
    cnt_reg_14_sp_1,
    cnt_reg_13_sp_1,
    cnt_reg_12_sp_1,
    cnt_reg_11_sp_1,
    cnt_reg_10_sp_1,
    cnt_reg_9_sp_1,
    cnt_reg_8_sp_1,
    cnt_reg_7_sp_1,
    \ctrl_reg[6]_0 ,
    \ctrl_reg[5]_0 ,
    \ctrl_reg[4]_0 ,
    \ctrl_reg[3]_1 ,
    \ctrl_reg[2]_0 ,
    \ctrl_reg[1]_2 ,
    \ctrl_reg[0]_0 ,
    \mem_addr_reg_reg[1]_0 ,
    \mem_addr_reg_reg[1]_1 ,
    \ctrl_reg[27]_0 ,
    \ctrl_reg[27]_1 ,
    \ctrl_reg[27]_2 ,
    \ctrl_reg[28]_1 ,
    \mem_addr_reg_reg[15] ,
    reg_i,
    dio_swap_reg_0,
    \mem_addr_reg_reg[11]_0 ,
    \ctrl_reg[28]_2 ,
    \op_b_ff_reg[7] ,
    CO,
    dio_swap_reg_1,
    in_data,
    \ctrl_reg[1]_3 ,
    op_a_v1,
    \irq_buf_reg[1]_0 ,
    \ctrl_reg[7]_0 ,
    \ctrl_reg[12]_1 ,
    \ctrl_reg[25]_3 ,
    uart_tx_busy0,
    \cpu_bus[addr] ,
    \ctrl_reg[28]_3 ,
    SR,
    \ctrl_reg[28]_4 ,
    \ctrl_reg[25]_4 ,
    acc_en,
    acc_en_0,
    \cpu_bus[wr_en] ,
    dio_swap0,
    clk_i,
    sreg,
    reg_file_reg_0_15_7_7_i_11_0,
    Q,
    \op_b_ff_reg[1] ,
    \uart_tx_sreg_reg[7] ,
    mem_addr_reg0_carry,
    \op_b_ff_reg[5] ,
    data_o0,
    \op_b_ff_reg[6] ,
    \mem_addr_reg_reg[7] ,
    \op_b_ff_reg[9] ,
    \op_b_ff_reg[7]_0 ,
    imem_file_ram_l_reg_3,
    \op_b_ff_reg[12] ,
    mem_addr_reg0_carry__2,
    \am_reg[3]_0 ,
    \ctrl_reg[17]_0 ,
    \uart_tx_sreg_reg[1] ,
    \uart_tx_sreg_reg[6] ,
    \uart_tx_sreg_reg[1]_0 ,
    \uart_tx_sreg_reg[7]_0 ,
    \data_o_reg[15] ,
    \data_o_reg[15]_0 ,
    p_1_in,
    \data_o_reg[15]_1 ,
    \data_o_reg[7] ,
    cnt_reg,
    \data_o_reg[6] ,
    \op_b_ff_reg[15] ,
    mem_data_i,
    \ctrl_reg[17]_1 ,
    \op_b_ff_reg[4] ,
    \sam_reg[1]_0 ,
    \op_b_ff_reg[14] ,
    \op_b_ff_reg[4]_0 ,
    \op_b_ff_reg[3] ,
    \mem_addr_reg_reg[11]_1 ,
    i__carry__1_i_5_0,
    i__carry__1_i_5_1,
    \op_b_ff_reg[0] ,
    \op_b_ff_reg[0]_0 ,
    reg_file_reg_0_15_0_0_i_2_0,
    reg_file_reg_0_15_4_4_i_5_0,
    addr_add,
    \irq_buf_reg[1]_1 ,
    \ctrl_reg[7]_1 ,
    \ctrl_reg[7]_2 ,
    O,
    reg_file_reg_0_15_15_15_i_2_0,
    \sreg_reg[8] ,
    \sreg_reg[8]_0 ,
    \FSM_sequential_state_reg[0]_0 ,
    \sreg_reg[0] ,
    \uart_tx_sreg_reg[7]_1 ,
    \FSM_sequential_state_reg[0]_1 ,
    \op_b_ff_reg[2] ,
    \op_b_ff_reg[8] ,
    \op_b_ff_reg[10] ,
    \op_b_ff_reg[11] ,
    \op_b_ff_reg[13] ,
    imem_up_en,
    bw_ff,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \FSM_sequential_state_reg[3]_2 ,
    \FSM_sequential_state_reg[3]_3 ,
    \FSM_sequential_state_reg[4]_0 ,
    \ctrl_reg[17]_2 ,
    \ctrl_reg[15]_0 ,
    \ctrl_reg[16]_0 ,
    \ctrl_reg[8]_1 ,
    \irq_buf_reg[1]_2 ,
    irq_fire_ff,
    p_2_in3_in,
    irq_o,
    \uart_tx_sreg_reg[1]_1 ,
    reg_file_reg_0_15_0_0_i_2_1,
    \uart_tx_sreg_reg[2] ,
    reg_file_reg_0_15_1_1_i_2_0,
    reg_file_reg_0_15_2_2_i_2_0,
    reg_file_reg_0_15_3_3_i_2_0,
    reg_file_reg_0_15_4_4_i_2_0,
    reg_file_reg_0_15_5_5_i_2_0,
    reg_file_reg_0_15_6_6_i_2_0,
    \uart_tx_sreg_reg[4] ,
    \FSM_sequential_state_reg[4]_1 ,
    \am_reg[0]_0 ,
    \src_reg[3]_0 );
  output [9:0]\ctrl_reg[19]_0 ;
  output [0:0]S;
  output [3:0]\ctrl_reg[21]_0 ;
  output [3:0]\ctrl_reg[23]_0 ;
  output \ctrl_reg[12]_0 ;
  output \mem_addr_reg_reg[1] ;
  output \ctrl_reg[9]_0 ;
  output \ctrl_reg[8]_0 ;
  output [10:0]D;
  output \ctrl_reg[25]_0 ;
  output \ctrl_reg[25]_1 ;
  output \ctrl_reg[25]_2 ;
  output \ctrl_reg[28]_0 ;
  output [3:0]\ctrl_reg[21]_1 ;
  output [3:0]\ctrl_reg[23]_1 ;
  output \ctrl_reg[3]_0 ;
  output [3:0]\ctrl_reg[1]_0 ;
  output [3:0]\ctrl_reg[1]_1 ;
  output [1:0]DI;
  output \mem_addr_reg_reg[11] ;
  output [4:0]\ctrl_reg[26]_0 ;
  output [3:0]\ctrl_reg[22]_0 ;
  output [3:0]\ctrl_reg[23]_2 ;
  output [1:0]\ctrl_reg[22]_1 ;
  output [1:0]\FSM_sequential_state_reg[3]_0 ;
  output [0:0]E;
  output [6:0]dio_swap_reg;
  output [0:0]\mem_addr_reg_reg[2] ;
  output [0:0]\mem_addr_reg_reg[2]_0 ;
  output [15:0]\din_reg[15] ;
  output [15:0]\pwm_ch_reg[1][7] ;
  output [0:0]\mem_addr_reg_reg[2]_1 ;
  output \mem_addr_reg_reg[2]_2 ;
  output [0:0]\mem_addr_reg_reg[2]_3 ;
  output cnt_reg_15_sp_1;
  output cnt_reg_14_sp_1;
  output cnt_reg_13_sp_1;
  output cnt_reg_12_sp_1;
  output cnt_reg_11_sp_1;
  output cnt_reg_10_sp_1;
  output cnt_reg_9_sp_1;
  output cnt_reg_8_sp_1;
  output cnt_reg_7_sp_1;
  output \ctrl_reg[6]_0 ;
  output \ctrl_reg[5]_0 ;
  output \ctrl_reg[4]_0 ;
  output \ctrl_reg[3]_1 ;
  output \ctrl_reg[2]_0 ;
  output \ctrl_reg[1]_2 ;
  output \ctrl_reg[0]_0 ;
  output [0:0]\mem_addr_reg_reg[1]_0 ;
  output [0:0]\mem_addr_reg_reg[1]_1 ;
  output [0:0]\ctrl_reg[27]_0 ;
  output [0:0]\ctrl_reg[27]_1 ;
  output [0:0]\ctrl_reg[27]_2 ;
  output \ctrl_reg[28]_1 ;
  output \mem_addr_reg_reg[15] ;
  output [14:0]reg_i;
  output [15:0]dio_swap_reg_0;
  output \mem_addr_reg_reg[11]_0 ;
  output \ctrl_reg[28]_2 ;
  output [0:0]\op_b_ff_reg[7] ;
  output [0:0]CO;
  output [15:0]dio_swap_reg_1;
  output [15:0]in_data;
  output [4:0]\ctrl_reg[1]_3 ;
  output op_a_v1;
  output [0:0]\irq_buf_reg[1]_0 ;
  output [0:0]\ctrl_reg[7]_0 ;
  output [0:0]\ctrl_reg[12]_1 ;
  output \ctrl_reg[25]_3 ;
  output uart_tx_busy0;
  output [11:0]\cpu_bus[addr] ;
  output \ctrl_reg[28]_3 ;
  output [0:0]SR;
  output [0:0]\ctrl_reg[28]_4 ;
  output [0:0]\ctrl_reg[25]_4 ;
  output acc_en;
  output acc_en_0;
  output [1:0]\cpu_bus[wr_en] ;
  output dio_swap0;
  input clk_i;
  input [3:0]sreg;
  input [15:0]reg_file_reg_0_15_7_7_i_11_0;
  input [15:0]Q;
  input \op_b_ff_reg[1] ;
  input [2:0]\uart_tx_sreg_reg[7] ;
  input mem_addr_reg0_carry;
  input \op_b_ff_reg[5] ;
  input [15:0]data_o0;
  input \op_b_ff_reg[6] ;
  input \mem_addr_reg_reg[7] ;
  input \op_b_ff_reg[9] ;
  input \op_b_ff_reg[7]_0 ;
  input [15:0]imem_file_ram_l_reg_3;
  input \op_b_ff_reg[12] ;
  input mem_addr_reg0_carry__2;
  input [3:0]\am_reg[3]_0 ;
  input \ctrl_reg[17]_0 ;
  input \uart_tx_sreg_reg[1] ;
  input [5:0]\uart_tx_sreg_reg[6] ;
  input \uart_tx_sreg_reg[1]_0 ;
  input \uart_tx_sreg_reg[7]_0 ;
  input [15:0]\data_o_reg[15] ;
  input [15:0]\data_o_reg[15]_0 ;
  input [15:0]p_1_in;
  input [7:0]\data_o_reg[15]_1 ;
  input [7:0]\data_o_reg[7] ;
  input [15:0]cnt_reg;
  input [6:0]\data_o_reg[6] ;
  input \op_b_ff_reg[15] ;
  input [15:0]mem_data_i;
  input \ctrl_reg[17]_1 ;
  input \op_b_ff_reg[4] ;
  input \sam_reg[1]_0 ;
  input \op_b_ff_reg[14] ;
  input \op_b_ff_reg[4]_0 ;
  input \op_b_ff_reg[3] ;
  input \mem_addr_reg_reg[11]_1 ;
  input i__carry__1_i_5_0;
  input i__carry__1_i_5_1;
  input \op_b_ff_reg[0] ;
  input \op_b_ff_reg[0]_0 ;
  input [3:0]reg_file_reg_0_15_0_0_i_2_0;
  input [2:0]reg_file_reg_0_15_4_4_i_5_0;
  input [15:0]addr_add;
  input [1:0]\irq_buf_reg[1]_1 ;
  input \ctrl_reg[7]_1 ;
  input \ctrl_reg[7]_2 ;
  input [3:0]O;
  input [3:0]reg_file_reg_0_15_15_15_i_2_0;
  input \sreg_reg[8] ;
  input \sreg_reg[8]_0 ;
  input \FSM_sequential_state_reg[0]_0 ;
  input [0:0]\sreg_reg[0] ;
  input \uart_tx_sreg_reg[7]_1 ;
  input \FSM_sequential_state_reg[0]_1 ;
  input \op_b_ff_reg[2] ;
  input \op_b_ff_reg[8] ;
  input \op_b_ff_reg[10] ;
  input \op_b_ff_reg[11] ;
  input \op_b_ff_reg[13] ;
  input imem_up_en;
  input bw_ff;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input \FSM_sequential_state_reg[3]_2 ;
  input \FSM_sequential_state_reg[3]_3 ;
  input \FSM_sequential_state_reg[4]_0 ;
  input \ctrl_reg[17]_2 ;
  input \ctrl_reg[15]_0 ;
  input \ctrl_reg[16]_0 ;
  input \ctrl_reg[8]_1 ;
  input \irq_buf_reg[1]_2 ;
  input irq_fire_ff;
  input p_2_in3_in;
  input irq_o;
  input \uart_tx_sreg_reg[1]_1 ;
  input reg_file_reg_0_15_0_0_i_2_1;
  input \uart_tx_sreg_reg[2] ;
  input reg_file_reg_0_15_1_1_i_2_0;
  input reg_file_reg_0_15_2_2_i_2_0;
  input reg_file_reg_0_15_3_3_i_2_0;
  input reg_file_reg_0_15_4_4_i_2_0;
  input reg_file_reg_0_15_5_5_i_2_0;
  input reg_file_reg_0_15_6_6_i_2_0;
  input \uart_tx_sreg_reg[4] ;
  input \FSM_sequential_state_reg[4]_1 ;
  input [0:0]\am_reg[0]_0 ;
  input [3:0]\src_reg[3]_0 ;

  wire [0:0]CO;
  wire [10:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_10_n_0 ;
  wire \FSM_sequential_state[0]_i_11_n_0 ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[0]_i_9_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state[4]_i_11_n_0 ;
  wire \FSM_sequential_state[4]_i_12_n_0 ;
  wire \FSM_sequential_state[4]_i_1_n_0 ;
  wire \FSM_sequential_state[4]_i_2_n_0 ;
  wire \FSM_sequential_state[4]_i_4_n_0 ;
  wire \FSM_sequential_state[4]_i_5_n_0 ;
  wire \FSM_sequential_state[4]_i_7_n_0 ;
  wire \FSM_sequential_state[4]_i_8_n_0 ;
  wire \FSM_sequential_state[4]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[0]_1 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [1:0]\FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire \FSM_sequential_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[3]_3 ;
  wire \FSM_sequential_state_reg[4]_0 ;
  wire \FSM_sequential_state_reg[4]_1 ;
  wire [3:0]O;
  wire [15:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire acc_en;
  wire acc_en_0;
  wire [15:0]addr_add;
  wire [0:0]\am_reg[0]_0 ;
  wire [3:0]\am_reg[3]_0 ;
  wire \am_reg_n_0_[0] ;
  wire bw_ff;
  wire clk_i;
  wire [15:0]cnt_reg;
  wire cnt_reg_10_sn_1;
  wire cnt_reg_11_sn_1;
  wire cnt_reg_12_sn_1;
  wire cnt_reg_13_sn_1;
  wire cnt_reg_14_sn_1;
  wire cnt_reg_15_sn_1;
  wire cnt_reg_7_sn_1;
  wire cnt_reg_8_sn_1;
  wire cnt_reg_9_sn_1;
  wire [11:0]\cpu_bus[addr] ;
  wire \cpu_bus[rd_en] ;
  wire [1:0]\cpu_bus[wr_en] ;
  wire \ctrl[0]_i_1_n_0 ;
  wire \ctrl[11]_i_1_n_0 ;
  wire \ctrl[11]_i_2_n_0 ;
  wire \ctrl[12]_i_1_n_0 ;
  wire \ctrl[12]_i_2_n_0 ;
  wire \ctrl[13]_i_1_n_0 ;
  wire \ctrl[13]_i_2_n_0 ;
  wire \ctrl[13]_i_3_n_0 ;
  wire \ctrl[13]_i_4_n_0 ;
  wire \ctrl[13]_i_5_n_0 ;
  wire \ctrl[14]_i_1_n_0 ;
  wire \ctrl[14]_i_2__0_n_0 ;
  wire \ctrl[14]_i_2_n_0 ;
  wire \ctrl[14]_i_3_n_0 ;
  wire \ctrl[14]_i_4_n_0 ;
  wire \ctrl[14]_i_5_n_0 ;
  wire \ctrl[14]_i_6_n_0 ;
  wire \ctrl[14]_i_7_n_0 ;
  wire \ctrl[14]_i_8_n_0 ;
  wire \ctrl[15]_i_1_n_0 ;
  wire \ctrl[15]_i_2_n_0 ;
  wire \ctrl[16]_i_1_n_0 ;
  wire \ctrl[16]_i_2_n_0 ;
  wire \ctrl[17]_i_1_n_0 ;
  wire \ctrl[17]_i_2_n_0 ;
  wire \ctrl[17]_i_3_n_0 ;
  wire \ctrl[17]_i_5_n_0 ;
  wire \ctrl[18]_i_1_n_0 ;
  wire \ctrl[18]_i_2_n_0 ;
  wire \ctrl[18]_i_3_n_0 ;
  wire \ctrl[18]_i_4_n_0 ;
  wire \ctrl[18]_i_5_n_0 ;
  wire \ctrl[18]_i_6_n_0 ;
  wire \ctrl[18]_i_7_n_0 ;
  wire \ctrl[19]_i_1_n_0 ;
  wire \ctrl[19]_i_2_n_0 ;
  wire \ctrl[19]_i_3_n_0 ;
  wire \ctrl[1]_i_2_n_0 ;
  wire \ctrl[1]_i_3_n_0 ;
  wire \ctrl[1]_i_4_n_0 ;
  wire \ctrl[20]_i_1_n_0 ;
  wire \ctrl[21]_i_1_n_0 ;
  wire \ctrl[21]_i_2_n_0 ;
  wire \ctrl[21]_i_3_n_0 ;
  wire \ctrl[21]_i_4_n_0 ;
  wire \ctrl[22]_i_1_n_0 ;
  wire \ctrl[23]_i_1_n_0 ;
  wire \ctrl[24]_i_1_n_0 ;
  wire \ctrl[25]_i_1_n_0 ;
  wire \ctrl[26]_i_1_n_0 ;
  wire \ctrl[26]_i_2_n_0 ;
  wire \ctrl[26]_i_3_n_0 ;
  wire \ctrl[27]_i_1_n_0 ;
  wire \ctrl[27]_i_2_n_0 ;
  wire \ctrl[28]_i_1_n_0 ;
  wire \ctrl[28]_i_2_n_0 ;
  wire \ctrl[28]_i_3_n_0 ;
  wire \ctrl[28]_i_4_n_0 ;
  wire \ctrl[28]_i_5_n_0 ;
  wire \ctrl[2]_i_1_n_0 ;
  wire \ctrl[2]_i_2_n_0 ;
  wire \ctrl[2]_i_3_n_0 ;
  wire \ctrl[2]_i_4_n_0 ;
  wire \ctrl[2]_i_5_n_0 ;
  wire \ctrl[3]_i_1_n_0 ;
  wire \ctrl[4]_i_1_n_0 ;
  wire \ctrl[4]_i_2_n_0 ;
  wire \ctrl[4]_i_3_n_0 ;
  wire \ctrl[5]_i_1_n_0 ;
  wire \ctrl[5]_i_2_n_0 ;
  wire \ctrl[6]_i_1_n_0 ;
  wire \ctrl[7]_i_1_n_0 ;
  wire \ctrl[7]_i_2_n_0 ;
  wire \ctrl[7]_i_3_n_0 ;
  wire \ctrl[8]_i_10_n_0 ;
  wire \ctrl[8]_i_1_n_0 ;
  wire \ctrl[8]_i_2_n_0 ;
  wire \ctrl[8]_i_4_n_0 ;
  wire \ctrl[8]_i_5_n_0 ;
  wire \ctrl[8]_i_6_n_0 ;
  wire \ctrl[8]_i_7_n_0 ;
  wire \ctrl[8]_i_9_n_0 ;
  wire \ctrl[9]_i_1_n_0 ;
  wire [27:27]ctrl_bus;
  wire \ctrl_reg[0]_0 ;
  wire \ctrl_reg[12]_0 ;
  wire [0:0]\ctrl_reg[12]_1 ;
  wire \ctrl_reg[15]_0 ;
  wire \ctrl_reg[16]_0 ;
  wire \ctrl_reg[17]_0 ;
  wire \ctrl_reg[17]_1 ;
  wire \ctrl_reg[17]_2 ;
  wire [9:0]\ctrl_reg[19]_0 ;
  wire [3:0]\ctrl_reg[1]_0 ;
  wire [3:0]\ctrl_reg[1]_1 ;
  wire \ctrl_reg[1]_2 ;
  wire [4:0]\ctrl_reg[1]_3 ;
  wire \ctrl_reg[1]_i_1_n_0 ;
  wire [3:0]\ctrl_reg[21]_0 ;
  wire [3:0]\ctrl_reg[21]_1 ;
  wire [3:0]\ctrl_reg[22]_0 ;
  wire [1:0]\ctrl_reg[22]_1 ;
  wire [3:0]\ctrl_reg[23]_0 ;
  wire [3:0]\ctrl_reg[23]_1 ;
  wire [3:0]\ctrl_reg[23]_2 ;
  wire \ctrl_reg[25]_0 ;
  wire \ctrl_reg[25]_1 ;
  wire \ctrl_reg[25]_2 ;
  wire \ctrl_reg[25]_3 ;
  wire [0:0]\ctrl_reg[25]_4 ;
  wire [4:0]\ctrl_reg[26]_0 ;
  wire [0:0]\ctrl_reg[27]_0 ;
  wire [0:0]\ctrl_reg[27]_1 ;
  wire [0:0]\ctrl_reg[27]_2 ;
  wire \ctrl_reg[28]_0 ;
  wire \ctrl_reg[28]_1 ;
  wire \ctrl_reg[28]_2 ;
  wire \ctrl_reg[28]_3 ;
  wire [0:0]\ctrl_reg[28]_4 ;
  wire \ctrl_reg[2]_0 ;
  wire \ctrl_reg[3]_0 ;
  wire \ctrl_reg[3]_1 ;
  wire \ctrl_reg[4]_0 ;
  wire \ctrl_reg[5]_0 ;
  wire \ctrl_reg[6]_0 ;
  wire [0:0]\ctrl_reg[7]_0 ;
  wire \ctrl_reg[7]_1 ;
  wire \ctrl_reg[7]_2 ;
  wire \ctrl_reg[8]_0 ;
  wire \ctrl_reg[8]_1 ;
  wire \ctrl_reg[9]_0 ;
  wire \ctrl_reg_n_0_[0] ;
  wire \ctrl_reg_n_0_[11] ;
  wire \ctrl_reg_n_0_[12] ;
  wire \ctrl_reg_n_0_[20] ;
  wire \ctrl_reg_n_0_[21] ;
  wire \ctrl_reg_n_0_[22] ;
  wire \ctrl_reg_n_0_[23] ;
  wire \ctrl_reg_n_0_[24] ;
  wire \ctrl_reg_n_0_[5] ;
  wire \ctrl_reg_n_0_[6] ;
  wire \ctrl_reg_n_0_[7] ;
  wire [15:0]data_o0;
  wire \data_o[15]_i_3_n_0 ;
  wire \data_o[15]_i_4_n_0 ;
  wire [15:0]\data_o_reg[15] ;
  wire [15:0]\data_o_reg[15]_0 ;
  wire [7:0]\data_o_reg[15]_1 ;
  wire [6:0]\data_o_reg[6] ;
  wire [7:0]\data_o_reg[7] ;
  wire [15:0]\din_reg[15] ;
  wire dio_swap0;
  wire dio_swap_i_2_n_0;
  wire [6:0]dio_swap_reg;
  wire [15:0]dio_swap_reg_0;
  wire [15:0]dio_swap_reg_1;
  wire dmem_file_l_reg_i_3_n_0;
  wire dmem_file_l_reg_i_4_n_0;
  wire dmem_file_l_reg_i_5_n_0;
  wire dmem_file_l_reg_i_6_n_0;
  wire \dout[15]_i_2_n_0 ;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_10_n_0;
  wire i__carry__1_i_11_n_0;
  wire i__carry__1_i_5_0;
  wire i__carry__1_i_5_1;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry__1_i_9_n_0;
  wire i__carry__2_i_7_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_9_n_0;
  wire i_flag_ff0;
  wire i_flag_ff1;
  wire imem_file_ram_l_reg_0_i_19_n_0;
  wire [15:0]imem_file_ram_l_reg_3;
  wire imem_up_en;
  wire [8:1]imm;
  wire imm_i0;
  wire [15:0]in_data;
  wire \ir_reg_n_0_[10] ;
  wire \ir_reg_n_0_[11] ;
  wire \ir_reg_n_0_[4] ;
  wire \ir_reg_n_0_[5] ;
  wire \ir_reg_n_0_[8] ;
  wire \irq_buf[0]_i_2_n_0 ;
  wire [0:0]\irq_buf_reg[1]_0 ;
  wire [1:0]\irq_buf_reg[1]_1 ;
  wire \irq_buf_reg[1]_2 ;
  wire \irq_buf_reg_n_0_[0] ;
  wire irq_fire;
  wire irq_fire_ff;
  wire irq_o;
  wire [1:0]irq_sel;
  wire irq_start_i_1_n_0;
  wire irq_start_reg_n_0;
  wire irq_vec;
  wire \irq_vec[0]_i_1_n_0 ;
  wire \irq_vec[1]_i_1_n_0 ;
  wire mem_addr_reg0_carry;
  wire mem_addr_reg0_carry__0_i_10_n_0;
  wire mem_addr_reg0_carry__0_i_11_n_0;
  wire mem_addr_reg0_carry__0_i_9_n_0;
  wire mem_addr_reg0_carry__1_i_10_n_0;
  wire mem_addr_reg0_carry__1_i_11_n_0;
  wire mem_addr_reg0_carry__1_i_9_n_0;
  wire mem_addr_reg0_carry__2;
  wire mem_addr_reg0_carry__2_i_10_n_0;
  wire mem_addr_reg0_carry__2_i_11_n_0;
  wire mem_addr_reg0_carry__2_i_9_n_0;
  wire mem_addr_reg0_carry_i_10_n_0;
  wire \mem_addr_reg_reg[11] ;
  wire \mem_addr_reg_reg[11]_0 ;
  wire \mem_addr_reg_reg[11]_1 ;
  wire \mem_addr_reg_reg[15] ;
  wire \mem_addr_reg_reg[1] ;
  wire [0:0]\mem_addr_reg_reg[1]_0 ;
  wire [0:0]\mem_addr_reg_reg[1]_1 ;
  wire [0:0]\mem_addr_reg_reg[2] ;
  wire [0:0]\mem_addr_reg_reg[2]_0 ;
  wire [0:0]\mem_addr_reg_reg[2]_1 ;
  wire \mem_addr_reg_reg[2]_2 ;
  wire [0:0]\mem_addr_reg_reg[2]_3 ;
  wire \mem_addr_reg_reg[7] ;
  wire [15:0]mem_data_i;
  wire mem_rd;
  wire mem_rd_ff;
  wire mem_rd_ff_i_2_n_0;
  wire op_a_v1;
  wire \op_b_ff[13]_i_3_n_0 ;
  wire \op_b_ff[15]_i_2_n_0 ;
  wire \op_b_ff[1]_i_3_n_0 ;
  wire \op_b_ff[3]_i_2_n_0 ;
  wire \op_b_ff[4]_i_2_n_0 ;
  wire \op_b_ff_reg[0] ;
  wire \op_b_ff_reg[0]_0 ;
  wire \op_b_ff_reg[10] ;
  wire \op_b_ff_reg[11] ;
  wire \op_b_ff_reg[12] ;
  wire \op_b_ff_reg[13] ;
  wire \op_b_ff_reg[14] ;
  wire \op_b_ff_reg[15] ;
  wire \op_b_ff_reg[1] ;
  wire \op_b_ff_reg[2] ;
  wire \op_b_ff_reg[3] ;
  wire \op_b_ff_reg[4] ;
  wire \op_b_ff_reg[4]_0 ;
  wire \op_b_ff_reg[5] ;
  wire \op_b_ff_reg[6] ;
  wire [0:0]\op_b_ff_reg[7] ;
  wire \op_b_ff_reg[7]_0 ;
  wire \op_b_ff_reg[8] ;
  wire \op_b_ff_reg[9] ;
  wire [3:0]p_0_in;
  wire p_0_in14_in;
  wire [15:0]p_1_in;
  wire [1:0]p_2_in;
  wire p_2_in3_in;
  wire p_8_in;
  wire [2:0]p_9_out;
  wire \pwm_ch[0][7]_i_2_n_0 ;
  wire [15:0]\pwm_ch_reg[1][7] ;
  wire rden_i_2_n_0;
  wire rden_i_3_n_0;
  wire [3:0]reg_file_reg_0_15_0_0_i_2_0;
  wire reg_file_reg_0_15_0_0_i_2_1;
  wire reg_file_reg_0_15_0_0_i_2_n_0;
  wire reg_file_reg_0_15_0_0_i_3_n_0;
  wire reg_file_reg_0_15_0_0_i_3_n_1;
  wire reg_file_reg_0_15_0_0_i_3_n_2;
  wire reg_file_reg_0_15_0_0_i_3_n_3;
  wire reg_file_reg_0_15_0_0_i_3_n_4;
  wire reg_file_reg_0_15_0_0_i_3_n_5;
  wire reg_file_reg_0_15_0_0_i_3_n_6;
  wire reg_file_reg_0_15_0_0_i_3_n_7;
  wire reg_file_reg_0_15_0_0_i_5_n_0;
  wire reg_file_reg_0_15_0_0_i_6_n_0;
  wire reg_file_reg_0_15_0_0_i_7_n_0;
  wire reg_file_reg_0_15_0_0_i_8_n_0;
  wire reg_file_reg_0_15_0_0_i_9_n_0;
  wire reg_file_reg_0_15_10_10_i_2_n_0;
  wire reg_file_reg_0_15_10_10_i_3_n_0;
  wire reg_file_reg_0_15_10_10_i_4_n_0;
  wire reg_file_reg_0_15_10_10_i_5_n_0;
  wire reg_file_reg_0_15_11_11_i_2_n_0;
  wire reg_file_reg_0_15_11_11_i_4_n_0;
  wire reg_file_reg_0_15_11_11_i_5_n_0;
  wire reg_file_reg_0_15_11_11_i_6_n_0;
  wire reg_file_reg_0_15_12_12_i_2_n_0;
  wire reg_file_reg_0_15_12_12_i_3_n_0;
  wire reg_file_reg_0_15_12_12_i_4_n_0;
  wire reg_file_reg_0_15_12_12_i_6_n_0;
  wire reg_file_reg_0_15_13_13_i_2_n_0;
  wire reg_file_reg_0_15_13_13_i_3_n_0;
  wire reg_file_reg_0_15_13_13_i_4_n_0;
  wire reg_file_reg_0_15_13_13_i_5_n_0;
  wire reg_file_reg_0_15_14_14_i_2_n_0;
  wire reg_file_reg_0_15_14_14_i_3_n_0;
  wire reg_file_reg_0_15_14_14_i_4_n_0;
  wire reg_file_reg_0_15_14_14_i_5_n_0;
  wire [3:0]reg_file_reg_0_15_15_15_i_2_0;
  wire reg_file_reg_0_15_15_15_i_2_n_0;
  wire reg_file_reg_0_15_15_15_i_3_n_0;
  wire reg_file_reg_0_15_15_15_i_4_n_0;
  wire reg_file_reg_0_15_15_15_i_5_n_0;
  wire reg_file_reg_0_15_15_15_i_6_n_0;
  wire reg_file_reg_0_15_1_1_i_2_0;
  wire reg_file_reg_0_15_1_1_i_2_n_0;
  wire reg_file_reg_0_15_1_1_i_4_n_0;
  wire reg_file_reg_0_15_1_1_i_5_n_0;
  wire reg_file_reg_0_15_2_2_i_2_0;
  wire reg_file_reg_0_15_2_2_i_2_n_0;
  wire reg_file_reg_0_15_2_2_i_3_n_0;
  wire reg_file_reg_0_15_2_2_i_4_n_0;
  wire reg_file_reg_0_15_2_2_i_5_n_0;
  wire reg_file_reg_0_15_3_3_i_2_0;
  wire reg_file_reg_0_15_3_3_i_2_n_0;
  wire reg_file_reg_0_15_3_3_i_3_n_0;
  wire reg_file_reg_0_15_3_3_i_4_n_0;
  wire reg_file_reg_0_15_3_3_i_5_n_0;
  wire reg_file_reg_0_15_4_4_i_2_0;
  wire reg_file_reg_0_15_4_4_i_2_n_0;
  wire reg_file_reg_0_15_4_4_i_3_n_0;
  wire reg_file_reg_0_15_4_4_i_4_n_0;
  wire [2:0]reg_file_reg_0_15_4_4_i_5_0;
  wire reg_file_reg_0_15_4_4_i_5_n_0;
  wire reg_file_reg_0_15_5_5_i_2_0;
  wire reg_file_reg_0_15_5_5_i_2_n_0;
  wire reg_file_reg_0_15_5_5_i_3_n_0;
  wire reg_file_reg_0_15_5_5_i_4_n_0;
  wire reg_file_reg_0_15_5_5_i_5_n_0;
  wire reg_file_reg_0_15_6_6_i_2_0;
  wire reg_file_reg_0_15_6_6_i_2_n_0;
  wire reg_file_reg_0_15_6_6_i_3_n_0;
  wire reg_file_reg_0_15_6_6_i_4_n_0;
  wire reg_file_reg_0_15_6_6_i_5_n_0;
  wire [15:0]reg_file_reg_0_15_7_7_i_11_0;
  wire reg_file_reg_0_15_7_7_i_11_n_0;
  wire reg_file_reg_0_15_7_7_i_12_n_0;
  wire reg_file_reg_0_15_7_7_i_2_n_0;
  wire reg_file_reg_0_15_7_7_i_3_n_0;
  wire reg_file_reg_0_15_7_7_i_3_n_1;
  wire reg_file_reg_0_15_7_7_i_3_n_2;
  wire reg_file_reg_0_15_7_7_i_3_n_3;
  wire reg_file_reg_0_15_7_7_i_3_n_5;
  wire reg_file_reg_0_15_7_7_i_3_n_6;
  wire reg_file_reg_0_15_7_7_i_3_n_7;
  wire reg_file_reg_0_15_7_7_i_6_n_0;
  wire reg_file_reg_0_15_7_7_i_7_n_0;
  wire reg_file_reg_0_15_8_8_i_2_n_0;
  wire reg_file_reg_0_15_8_8_i_3_n_0;
  wire reg_file_reg_0_15_8_8_i_4_n_0;
  wire reg_file_reg_0_15_8_8_i_6_n_0;
  wire reg_file_reg_0_15_9_9_i_2_n_0;
  wire reg_file_reg_0_15_9_9_i_3_n_0;
  wire reg_file_reg_0_15_9_9_i_4_n_0;
  wire reg_file_reg_0_15_9_9_i_5_n_0;
  wire [14:0]reg_i;
  wire [1:0]sam;
  wire \sam[0]_i_1_n_0 ;
  wire \sam[1]_i_1_n_0 ;
  wire \sam_reg[1]_0 ;
  wire [3:0]src;
  wire [3:0]\src_reg[3]_0 ;
  wire [3:0]sreg;
  wire \sreg[0]_i_2_n_0 ;
  wire \sreg[0]_i_3_n_0 ;
  wire \sreg[0]_i_4_n_0 ;
  wire \sreg[0]_i_5_n_0 ;
  wire \sreg[14]_i_2_n_0 ;
  wire \sreg[1]_i_2_n_0 ;
  wire \sreg[1]_i_3_n_0 ;
  wire \sreg[1]_i_4_n_0 ;
  wire \sreg[1]_i_5_n_0 ;
  wire \sreg[1]_i_6_n_0 ;
  wire \sreg[2]_i_2_n_0 ;
  wire \sreg[8]_i_3_n_0 ;
  wire \sreg[8]_i_4_n_0 ;
  wire \sreg[8]_i_5_n_0 ;
  wire [0:0]\sreg_reg[0] ;
  wire \sreg_reg[8] ;
  wire \sreg_reg[8]_0 ;
  wire [4:0]state;
  wire uart_tx_busy0;
  wire \uart_tx_sreg_reg[1] ;
  wire \uart_tx_sreg_reg[1]_0 ;
  wire \uart_tx_sreg_reg[1]_1 ;
  wire \uart_tx_sreg_reg[2] ;
  wire \uart_tx_sreg_reg[4] ;
  wire [5:0]\uart_tx_sreg_reg[6] ;
  wire [2:0]\uart_tx_sreg_reg[7] ;
  wire \uart_tx_sreg_reg[7]_0 ;
  wire \uart_tx_sreg_reg[7]_1 ;
  wire [3:1]\NLW_sreg_reg[0]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_sreg_reg[0]_i_6_O_UNCONNECTED ;

  assign cnt_reg_10_sp_1 = cnt_reg_10_sn_1;
  assign cnt_reg_11_sp_1 = cnt_reg_11_sn_1;
  assign cnt_reg_12_sp_1 = cnt_reg_12_sn_1;
  assign cnt_reg_13_sp_1 = cnt_reg_13_sn_1;
  assign cnt_reg_14_sp_1 = cnt_reg_14_sn_1;
  assign cnt_reg_15_sp_1 = cnt_reg_15_sn_1;
  assign cnt_reg_7_sp_1 = cnt_reg_7_sn_1;
  assign cnt_reg_8_sp_1 = cnt_reg_8_sn_1;
  assign cnt_reg_9_sp_1 = cnt_reg_9_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFF55551110)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(\FSM_sequential_state[0]_i_5_n_0 ),
        .I4(\FSM_sequential_state[0]_i_6_n_0 ),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[0]_i_10 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .O(\FSM_sequential_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFCFCFEFEFCFCF)) 
    \FSM_sequential_state[0]_i_11 
       (.I0(\FSM_sequential_state[4]_i_8_n_0 ),
        .I1(state[4]),
        .I2(\ctrl[5]_i_2_n_0 ),
        .I3(imm[8]),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\op_b_ff_reg[15] ),
        .I1(\ctrl_reg[17]_1 ),
        .I2(\ctrl_reg[17]_0 ),
        .I3(\op_b_ff_reg[4] ),
        .I4(\ctrl[8]_i_2_n_0 ),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[4]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0F0F0FFFDFFFF)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(p_2_in[0]),
        .I1(\ctrl[14]_i_2__0_n_0 ),
        .I2(state[4]),
        .I3(p_2_in[1]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBFBFBFB)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[0]_i_9_n_0 ),
        .I1(\FSM_sequential_state[0]_i_10_n_0 ),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(\ctrl[14]_i_2__0_n_0 ),
        .I4(\ctrl[7]_i_2_n_0 ),
        .I5(\FSM_sequential_state[0]_i_11_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4055)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[0]_i_9 
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(\ctrl_reg[19]_0 [5]),
        .O(\FSM_sequential_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF00F2)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(irq_start_reg_n_0),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFF3F7F3)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[4]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFDFFFF)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(p_2_in[0]),
        .I1(p_2_in[1]),
        .I2(\am_reg_n_0_[0] ),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(\FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04FF04FF04FF0404)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\FSM_sequential_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_state_reg[3]_1 ),
        .I2(\am_reg[3]_0 [3]),
        .I3(\FSM_sequential_state[1]_i_9_n_0 ),
        .I4(\am_reg_n_0_[0] ),
        .I5(\ctrl[7]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF33F733FF33)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(p_2_in[1]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[4]),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFBFF)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF3F9FFFFFFFFF)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(p_2_in[0]),
        .I1(p_0_in14_in),
        .I2(\ctrl[8]_i_2_n_0 ),
        .I3(state[0]),
        .I4(p_2_in[1]),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBABBAABBAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[4]_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAABBAABAAA)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[4]),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[4]_i_8_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAE00AE000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\FSM_sequential_state[3]_i_8_n_0 ),
        .I2(\ctrl[14]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\ctrl[7]_i_2_n_0 ),
        .I1(p_2_in[0]),
        .I2(p_2_in[1]),
        .I3(state[0]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0AAAFFFFAABBFFFF)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state[0]),
        .I1(p_2_in[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(p_2_in[1]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(\FSM_sequential_state[2]_i_7_n_0 ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\ctrl[7]_i_2_n_0 ),
        .I1(p_0_in14_in),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABBBBBB)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_2 ),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg[3]_3 ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(irq_start_reg_n_0),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h15F355FF)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(p_2_in[1]),
        .I3(state[0]),
        .I4(\ctrl[7]_i_2_n_0 ),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEAEEEAFFFFEEEA)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[4]_i_11_n_0 ),
        .I1(\FSM_sequential_state[3]_i_7_n_0 ),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(\am_reg_n_0_[0] ),
        .I4(\ctrl[18]_i_6_n_0 ),
        .I5(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002000)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(\FSM_sequential_state_reg[3]_1 ),
        .I4(\am_reg[3]_0 [3]),
        .I5(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(p_2_in[0]),
        .I1(p_2_in[1]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h111F1111111F111F)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\FSM_sequential_state[3]_i_10_n_0 ),
        .I1(\ctrl[18]_i_5_n_0 ),
        .I2(\FSM_sequential_state[3]_i_11_n_0 ),
        .I3(p_0_in14_in),
        .I4(p_2_in[1]),
        .I5(p_2_in[0]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00DFFFDF)) 
    \FSM_sequential_state[4]_i_1 
       (.I0(\FSM_sequential_state[4]_i_4_n_0 ),
        .I1(irq_start_reg_n_0),
        .I2(\FSM_sequential_state_reg[0]_1 ),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[4]),
        .O(\FSM_sequential_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000200000AAAA)) 
    \FSM_sequential_state[4]_i_11 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(\ctrl[7]_i_2_n_0 ),
        .I2(p_2_in[0]),
        .I3(p_2_in[1]),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\FSM_sequential_state[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_sequential_state[4]_i_12 
       (.I0(p_2_in[0]),
        .I1(p_2_in[1]),
        .I2(p_0_in14_in),
        .I3(\ctrl[7]_i_2_n_0 ),
        .O(\FSM_sequential_state[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAAAAAEA)) 
    \FSM_sequential_state[4]_i_2 
       (.I0(\FSM_sequential_state[4]_i_5_n_0 ),
        .I1(\FSM_sequential_state_reg[4]_0 ),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(\FSM_sequential_state[4]_i_7_n_0 ),
        .O(\FSM_sequential_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_sequential_state[4]_i_4 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .O(\FSM_sequential_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04FFC4FF)) 
    \FSM_sequential_state[4]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(state[0]),
        .I4(\FSM_sequential_state[4]_i_8_n_0 ),
        .I5(\FSM_sequential_state[4]_i_9_n_0 ),
        .O(\FSM_sequential_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEBEBEBEBEBEBFBEB)) 
    \FSM_sequential_state[4]_i_7 
       (.I0(\FSM_sequential_state[4]_i_11_n_0 ),
        .I1(state[4]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(\FSM_sequential_state[4]_i_12_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(\FSM_sequential_state[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_sequential_state[4]_i_8 
       (.I0(p_2_in[1]),
        .I1(p_2_in[0]),
        .I2(p_0_in14_in),
        .I3(\am_reg_n_0_[0] ),
        .O(\FSM_sequential_state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state[4]_i_9 
       (.I0(p_0_in14_in),
        .I1(\ctrl[7]_i_2_n_0 ),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(p_2_in[1]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\FSM_sequential_state[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk_i),
        .CE(\FSM_sequential_state[4]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg[4]_1 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk_i),
        .CE(\FSM_sequential_state[4]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg[4]_1 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[3]_0 [0]));
  (* FSM_ENCODED_STATES = "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk_i),
        .CE(\FSM_sequential_state[4]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg[4]_1 ),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  (* FSM_ENCODED_STATES = "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk_i),
        .CE(\FSM_sequential_state[4]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg[4]_1 ),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg[3]_0 [1]));
  (* FSM_ENCODED_STATES = "reti_0:10100,pushcall_2:10001,pushcall_1:10000,irq_1:00011,irq_0:00010,decode:01001,reti_3:10111,ifetch_1:01000,reti_2:10110,ifetch_0:00001,irq_5:00111,reset:00000,irq_4:00110,pushcall_0:01111,trans_6:10011,trans_3:01101,irq_3:00101,trans_2:01100,irq_2:00100,trans_5:10010,trans_4:01110,trans_1:01011,reti_1:10101,trans_0:01010" *) 
  FDCE \FSM_sequential_state_reg[4] 
       (.C(clk_i),
        .CE(\FSM_sequential_state[4]_i_1_n_0 ),
        .CLR(\FSM_sequential_state_reg[4]_1 ),
        .D(\FSM_sequential_state[4]_i_2_n_0 ),
        .Q(state[4]));
  FDRE \am_reg[0] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\am_reg[3]_0 [0]),
        .Q(\am_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \am_reg[1] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\am_reg[3]_0 [1]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \am_reg[2] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\am_reg[3]_0 [2]),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \am_reg[3] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\am_reg[3]_0 [3]),
        .Q(p_0_in14_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h30308E16)) 
    \ctrl[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[4]),
        .O(\ctrl[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \ctrl[11]_i_1 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[0]),
        .O(\ctrl[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ctrl[11]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\ctrl[11]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[2]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \ctrl[11]_i_2 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\data_o[15]_i_4_n_0 ),
        .I2(\ctrl_reg[25]_2 ),
        .I3(\ctrl_reg[25]_0 ),
        .I4(\data_o[15]_i_3_n_0 ),
        .O(\ctrl[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0404F404F7F40404)) 
    \ctrl[12]_i_1 
       (.I0(\ctrl[12]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[4]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(state[0]),
        .O(\ctrl[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFF73FFF)) 
    \ctrl[12]_i_2 
       (.I0(p_2_in[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(p_2_in[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(\ctrl[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4EE4444E0EE0400A)) 
    \ctrl[13]_i_1 
       (.I0(state[4]),
        .I1(\ctrl[13]_i_2_n_0 ),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[2]),
        .I5(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCDDCCDDCCDDCCFC)) 
    \ctrl[13]_i_2 
       (.I0(\ctrl[13]_i_3_n_0 ),
        .I1(\ctrl[13]_i_4_n_0 ),
        .I2(\ctrl[13]_i_5_n_0 ),
        .I3(p_2_in[1]),
        .I4(p_2_in[0]),
        .I5(\ctrl[14]_i_2__0_n_0 ),
        .O(\ctrl[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \ctrl[13]_i_3 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .O(\ctrl[13]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \ctrl[13]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(p_2_in[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ctrl[13]_i_5 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .O(\ctrl[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000F00000)) 
    \ctrl[14]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(\ctrl[14]_i_2__0_n_0 ),
        .I2(state[4]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(state[0]),
        .O(\ctrl[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ctrl[14]_i_1__0 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(imem_file_ram_l_reg_0_i_19_n_0),
        .I3(\ctrl[14]_i_3_n_0 ),
        .I4(\mem_addr_reg_reg[1] ),
        .O(\ctrl_reg[27]_2 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \ctrl[14]_i_2 
       (.I0(\ctrl[14]_i_4_n_0 ),
        .I1(dmem_file_l_reg_i_3_n_0),
        .I2(dmem_file_l_reg_i_6_n_0),
        .I3(dmem_file_l_reg_i_4_n_0),
        .I4(ctrl_bus),
        .O(\ctrl[14]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl[14]_i_2__0 
       (.I0(\am_reg_n_0_[0] ),
        .I1(p_0_in14_in),
        .O(\ctrl[14]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFFABAA)) 
    \ctrl[14]_i_3 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(mem_addr_reg0_carry__0_i_10_n_0),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(\ctrl_reg_n_0_[24] ),
        .I4(imem_file_ram_l_reg_3[6]),
        .I5(\data_o[15]_i_4_n_0 ),
        .O(\ctrl[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ctrl[14]_i_4 
       (.I0(\ctrl[14]_i_5_n_0 ),
        .I1(dmem_file_l_reg_i_5_n_0),
        .I2(\ctrl[14]_i_6_n_0 ),
        .I3(\ctrl[14]_i_7_n_0 ),
        .I4(\ctrl[14]_i_8_n_0 ),
        .O(\ctrl[14]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD0DF)) 
    \ctrl[14]_i_5 
       (.I0(reg_i[8]),
        .I1(\ctrl_reg[26]_0 [3]),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(imem_file_ram_l_reg_3[8]),
        .O(\ctrl[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    \ctrl[14]_i_6 
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[7]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[7]),
        .O(\ctrl[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    \ctrl[14]_i_7 
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[10]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[10]),
        .O(\ctrl[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    \ctrl[14]_i_8 
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[9]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[9]),
        .O(\ctrl[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0020AAAA00200020)) 
    \ctrl[15]_i_1 
       (.I0(\ctrl[15]_i_2_n_0 ),
        .I1(\ctrl_reg[17]_2 ),
        .I2(\ctrl[18]_i_6_n_0 ),
        .I3(\ctrl_reg[15]_0 ),
        .I4(\ctrl[18]_i_7_n_0 ),
        .I5(\ctrl_reg[19]_0 [5]),
        .O(\ctrl[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC3FFFEB0000AAAA)) 
    \ctrl[15]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[2]),
        .I4(state[4]),
        .I5(\ctrl_reg[19]_0 [5]),
        .O(\ctrl[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08AA080808080808)) 
    \ctrl[16]_i_1 
       (.I0(\ctrl[16]_i_2_n_0 ),
        .I1(\ctrl_reg[19]_0 [6]),
        .I2(\ctrl[18]_i_7_n_0 ),
        .I3(\ctrl_reg[17]_2 ),
        .I4(\ctrl[18]_i_6_n_0 ),
        .I5(\ctrl_reg[16]_0 ),
        .O(\ctrl[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFC3FFFEB0000AAAA)) 
    \ctrl[16]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[2]),
        .I4(state[4]),
        .I5(\ctrl_reg[19]_0 [6]),
        .O(\ctrl[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBAAAAA)) 
    \ctrl[17]_i_1 
       (.I0(\ctrl[17]_i_2_n_0 ),
        .I1(\ctrl[17]_i_3_n_0 ),
        .I2(mem_data_i[14]),
        .I3(\ctrl_reg[17]_2 ),
        .I4(\ctrl[18]_i_6_n_0 ),
        .I5(\ctrl[17]_i_5_n_0 ),
        .O(\ctrl[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hA2AA0020)) 
    \ctrl[17]_i_2 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\ctrl_reg[19]_0 [7]),
        .O(\ctrl[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAABBBBBABB)) 
    \ctrl[17]_i_3 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(\ctrl[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB33FB333)) 
    \ctrl[17]_i_5 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(\ctrl_reg[19]_0 [7]),
        .O(\ctrl[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040000)) 
    \ctrl[18]_i_1 
       (.I0(\ctrl_reg[17]_1 ),
        .I1(\ctrl_reg[17]_0 ),
        .I2(\op_b_ff_reg[4] ),
        .I3(\am_reg[3]_0 [3]),
        .I4(E),
        .I5(\ctrl[18]_i_3_n_0 ),
        .O(\ctrl[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD000DDDDC000C000)) 
    \ctrl[18]_i_2 
       (.I0(\ctrl[18]_i_4_n_0 ),
        .I1(\ctrl[18]_i_5_n_0 ),
        .I2(mem_data_i[15]),
        .I3(\ctrl[18]_i_6_n_0 ),
        .I4(\ctrl[18]_i_7_n_0 ),
        .I5(\ctrl_reg[19]_0 [8]),
        .O(\ctrl[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h40020100)) 
    \ctrl[18]_i_3 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[2]),
        .O(\ctrl[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h1806)) 
    \ctrl[18]_i_4 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[4]),
        .O(\ctrl[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctrl[18]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[4]),
        .O(\ctrl[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ctrl[18]_i_6 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\ctrl[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h70303000)) 
    \ctrl[18]_i_7 
       (.I0(state[2]),
        .I1(state[4]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .O(\ctrl[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \ctrl[19]_i_1 
       (.I0(\ctrl[19]_i_2_n_0 ),
        .I1(state[4]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .I5(\ctrl_reg[19]_0 [9]),
        .O(\ctrl[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000D7EF)) 
    \ctrl[19]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[4]),
        .I5(\ctrl[19]_i_3_n_0 ),
        .O(\ctrl[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000EC00FFFFEFFF)) 
    \ctrl[19]_i_3 
       (.I0(\op_b_ff_reg[14] ),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[2]),
        .I5(\ctrl_reg[19]_0 [9]),
        .O(\ctrl[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hC0038300FFFFFFFF)) 
    \ctrl[1]_i_2 
       (.I0(imm[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(\ctrl[1]_i_4_n_0 ),
        .O(\ctrl[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4F5A4A0A)) 
    \ctrl[1]_i_3 
       (.I0(state[2]),
        .I1(imm[1]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .I4(src[0]),
        .O(\ctrl[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDFDFDDDDDDDF)) 
    \ctrl[1]_i_4 
       (.I0(src[0]),
        .I1(state[0]),
        .I2(\ctrl[2]_i_4_n_0 ),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[2]),
        .I5(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAAAAABE)) 
    \ctrl[20]_i_1 
       (.I0(\ctrl[21]_i_2_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[4]),
        .O(\ctrl[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FAFFFBFF)) 
    \ctrl[21]_i_1 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .I2(state[4]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[2]),
        .I5(\ctrl[21]_i_2_n_0 ),
        .O(\ctrl[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \ctrl[21]_i_2 
       (.I0(imm[7]),
        .I1(state[0]),
        .I2(p_2_in[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[4]),
        .I5(\ctrl[21]_i_3_n_0 ),
        .O(\ctrl[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0001FFFFFFFF)) 
    \ctrl[21]_i_3 
       (.I0(src[3]),
        .I1(src[0]),
        .I2(src[1]),
        .I3(src[2]),
        .I4(state[2]),
        .I5(\ctrl[21]_i_4_n_0 ),
        .O(\ctrl[21]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl[21]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(p_2_in[1]),
        .O(\ctrl[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ctrl[22]_i_1 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[2]),
        .O(\ctrl[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h40014050)) 
    \ctrl[23]_i_1 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\ctrl[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABAAABABBBAAA)) 
    \ctrl[24]_i_1 
       (.I0(\ctrl[28]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \ctrl[25]_i_1 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[2]),
        .O(\ctrl[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \ctrl[26]_i_1 
       (.I0(state[4]),
        .I1(\ctrl[26]_i_2_n_0 ),
        .I2(\ctrl[26]_i_3_n_0 ),
        .O(\ctrl[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD999111100002222)) 
    \ctrl[26]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .I2(p_0_in14_in),
        .I3(\am_reg_n_0_[0] ),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[2]),
        .O(\ctrl[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFDFDFFFFFDFFF)) 
    \ctrl[26]_i_3 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .I4(p_2_in[1]),
        .I5(\am_reg_n_0_[0] ),
        .O(\ctrl[26]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00110F00)) 
    \ctrl[27]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(\ctrl[27]_i_2_n_0 ),
        .I3(state[4]),
        .I4(state[2]),
        .O(\ctrl[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF00FFFFFF00FF)) 
    \ctrl[27]_i_2 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(\am_reg_n_0_[0] ),
        .O(\ctrl[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF80000)) 
    \ctrl[28]_i_1 
       (.I0(p_0_in14_in),
        .I1(\am_reg_n_0_[0] ),
        .I2(p_2_in[0]),
        .I3(p_2_in[1]),
        .I4(\ctrl[28]_i_2_n_0 ),
        .I5(\ctrl[28]_i_3_n_0 ),
        .O(\ctrl[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000020202020)) 
    \ctrl[28]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[2]),
        .I2(\ctrl[18]_i_5_n_0 ),
        .I3(p_2_in[1]),
        .I4(\ctrl[14]_i_2__0_n_0 ),
        .I5(state[0]),
        .O(\ctrl[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAB00)) 
    \ctrl[28]_i_3 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .I2(irq_start_reg_n_0),
        .I3(\ctrl[28]_i_4_n_0 ),
        .I4(\ctrl[28]_i_5_n_0 ),
        .I5(mem_rd_ff),
        .O(\ctrl[28]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \ctrl[28]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(state[4]),
        .O(\ctrl[28]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ctrl[28]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[2]),
        .I2(state[4]),
        .O(\ctrl[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEAEAEA)) 
    \ctrl[2]_i_1 
       (.I0(\ctrl[2]_i_2_n_0 ),
        .I1(\ctrl[2]_i_3_n_0 ),
        .I2(\ctrl[2]_i_4_n_0 ),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(\ctrl[2]_i_5_n_0 ),
        .O(\ctrl[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAFEAAAAAAAAA)) 
    \ctrl[2]_i_2 
       (.I0(state[4]),
        .I1(src[1]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[2]),
        .O(\ctrl[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2E22222222222222)) 
    \ctrl[2]_i_3 
       (.I0(src[1]),
        .I1(state[0]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(imm[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[2]),
        .O(\ctrl[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA0A2A2A2AAAAAAAA)) 
    \ctrl[2]_i_4 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(p_2_in[0]),
        .I2(p_2_in[1]),
        .I3(\am_reg_n_0_[0] ),
        .I4(p_0_in14_in),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\ctrl[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hC0C404CCCCC404CC)) 
    \ctrl[2]_i_5 
       (.I0(src[1]),
        .I1(state[4]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .I5(imm[2]),
        .O(\ctrl[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \ctrl[3]_i_1 
       (.I0(\ctrl[4]_i_2_n_0 ),
        .I1(src[2]),
        .I2(state[0]),
        .I3(imm[3]),
        .I4(\ctrl[4]_i_3_n_0 ),
        .O(\ctrl[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \ctrl[4]_i_1 
       (.I0(\ctrl[4]_i_2_n_0 ),
        .I1(src[3]),
        .I2(state[0]),
        .I3(imm[4]),
        .I4(\ctrl[4]_i_3_n_0 ),
        .O(\ctrl[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hEEDDFF07)) 
    \ctrl[4]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(state[2]),
        .I2(\ctrl[2]_i_4_n_0 ),
        .I3(state[0]),
        .I4(state[4]),
        .O(\ctrl[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3008)) 
    \ctrl[4]_i_3 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[4]),
        .O(\ctrl[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FFF00008000)) 
    \ctrl[5]_i_1 
       (.I0(imm[8]),
        .I1(\ctrl[14]_i_2__0_n_0 ),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(\ctrl[5]_i_2_n_0 ),
        .I4(state[4]),
        .I5(sam[0]),
        .O(\ctrl[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl[5]_i_2 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AAAAAAA)) 
    \ctrl[6]_i_1 
       (.I0(sam[1]),
        .I1(state[4]),
        .I2(\FSM_sequential_state_reg[3]_0 [1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\FSM_sequential_state_reg[3]_0 [0]),
        .O(\ctrl[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h04000000)) 
    \ctrl[6]_i_1__0 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(\ctrl[14]_i_3_n_0 ),
        .I3(imem_file_ram_l_reg_0_i_19_n_0),
        .I4(\mem_addr_reg_reg[1] ),
        .O(\ctrl_reg[27]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \ctrl[7]_i_1 
       (.I0(\ctrl[7]_i_2_n_0 ),
        .I1(state[4]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .O(\ctrl[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl[7]_i_2 
       (.I0(\ir_reg_n_0_[11] ),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(\ctrl[7]_i_3_n_0 ),
        .O(\ctrl[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ctrl[7]_i_3 
       (.I0(p_0_in[0]),
        .I1(\ir_reg_n_0_[10] ),
        .I2(imm_i0),
        .I3(p_0_in[2]),
        .O(\ctrl[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF08AA)) 
    \ctrl[8]_i_1 
       (.I0(\ctrl[8]_i_2_n_0 ),
        .I1(\ctrl_reg[8]_1 ),
        .I2(\ctrl[8]_i_4_n_0 ),
        .I3(\ctrl[8]_i_5_n_0 ),
        .I4(\ctrl[8]_i_6_n_0 ),
        .I5(\ctrl[8]_i_7_n_0 ),
        .O(\ctrl[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ctrl[8]_i_10 
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .O(\ctrl[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ctrl[8]_i_2 
       (.I0(\FSM_sequential_state_reg[3]_0 [1]),
        .I1(state[2]),
        .O(\ctrl[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \ctrl[8]_i_4 
       (.I0(\am_reg[3]_0 [3]),
        .I1(\ctrl_reg[17]_0 ),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .O(\ctrl[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5755F757F757F757)) 
    \ctrl[8]_i_5 
       (.I0(\FSM_sequential_state_reg[3]_0 [0]),
        .I1(p_2_in[0]),
        .I2(state[0]),
        .I3(p_2_in[1]),
        .I4(\am_reg_n_0_[0] ),
        .I5(p_0_in14_in),
        .O(\ctrl[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAEBBFEBAF)) 
    \ctrl[8]_i_6 
       (.I0(state[4]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(\ctrl[8]_i_9_n_0 ),
        .I5(\FSM_sequential_state_reg[3]_0 [1]),
        .O(\ctrl[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00E000F000F00000)) 
    \ctrl[8]_i_7 
       (.I0(\am_reg_n_0_[0] ),
        .I1(\ctrl[8]_i_10_n_0 ),
        .I2(state[4]),
        .I3(state[2]),
        .I4(\FSM_sequential_state_reg[3]_0 [0]),
        .I5(state[0]),
        .O(\ctrl[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ctrl[8]_i_9 
       (.I0(irq_start_reg_n_0),
        .I1(\FSM_sequential_state_reg[0]_1 ),
        .O(\ctrl[8]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \ctrl[9]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[4]),
        .O(\ctrl[9]_i_1_n_0 ));
  FDRE \ctrl_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[0]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ctrl_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[11]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ctrl_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[12]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \ctrl_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[13]_i_1_n_0 ),
        .Q(\ctrl_reg[26]_0 [1]),
        .R(1'b0));
  FDRE \ctrl_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[14]_i_1_n_0 ),
        .Q(\ctrl_reg[26]_0 [2]),
        .R(1'b0));
  FDRE \ctrl_reg[15] 
       (.C(clk_i),
        .CE(\ctrl[18]_i_1_n_0 ),
        .D(\ctrl[15]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [5]),
        .R(1'b0));
  FDRE \ctrl_reg[16] 
       (.C(clk_i),
        .CE(\ctrl[18]_i_1_n_0 ),
        .D(\ctrl[16]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [6]),
        .R(1'b0));
  FDRE \ctrl_reg[17] 
       (.C(clk_i),
        .CE(\ctrl[18]_i_1_n_0 ),
        .D(\ctrl[17]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [7]),
        .R(1'b0));
  FDRE \ctrl_reg[18] 
       (.C(clk_i),
        .CE(\ctrl[18]_i_1_n_0 ),
        .D(\ctrl[18]_i_2_n_0 ),
        .Q(\ctrl_reg[19]_0 [8]),
        .R(1'b0));
  FDRE \ctrl_reg[19] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[19]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [9]),
        .R(1'b0));
  FDRE \ctrl_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg[1]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [0]),
        .R(1'b0));
  MUXF7 \ctrl_reg[1]_i_1 
       (.I0(\ctrl[1]_i_2_n_0 ),
        .I1(\ctrl[1]_i_3_n_0 ),
        .O(\ctrl_reg[1]_i_1_n_0 ),
        .S(state[4]));
  FDRE \ctrl_reg[20] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[20]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \ctrl_reg[21] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[21]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \ctrl_reg[22] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[22]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \ctrl_reg[23] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[23]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \ctrl_reg[24] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[24]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \ctrl_reg[25] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[25]_i_1_n_0 ),
        .Q(\ctrl_reg[26]_0 [3]),
        .R(1'b0));
  FDRE \ctrl_reg[26] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[26]_i_1_n_0 ),
        .Q(\ctrl_reg[26]_0 [4]),
        .R(1'b0));
  FDRE \ctrl_reg[27] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[27]_i_1_n_0 ),
        .Q(ctrl_bus),
        .R(1'b0));
  FDRE \ctrl_reg[28] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[28]_i_1_n_0 ),
        .Q(\cpu_bus[rd_en] ),
        .R(1'b0));
  FDRE \ctrl_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[2]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [1]),
        .R(1'b0));
  FDRE \ctrl_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[3]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [2]),
        .R(1'b0));
  FDRE \ctrl_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[4]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [3]),
        .R(1'b0));
  FDRE \ctrl_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[5]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ctrl_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[6]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ctrl_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[7]_i_1_n_0 ),
        .Q(\ctrl_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ctrl_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[8]_i_1_n_0 ),
        .Q(\ctrl_reg[19]_0 [4]),
        .R(1'b0));
  FDRE \ctrl_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl[9]_i_1_n_0 ),
        .Q(\ctrl_reg[26]_0 [0]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \data_o[0]_i_1__0 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[0]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [0]),
        .I3(\data_o_reg[15]_0 [0]),
        .O(\din_reg[15] [0]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[0]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[0]),
        .I3(\data_o_reg[7] [0]),
        .O(\pwm_ch_reg[1][7] [0]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[0]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [0]),
        .I3(cnt_reg[0]),
        .O(\ctrl_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \data_o[10]_i_1 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\mem_addr_reg_reg[1] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[10]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [10]),
        .I3(\data_o_reg[15]_0 [10]),
        .O(\din_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[10]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[10]),
        .I3(\data_o_reg[15]_1 [2]),
        .O(\pwm_ch_reg[1][7] [10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[10]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[10]),
        .O(cnt_reg_10_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \data_o[11]_i_1__0 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(imem_file_ram_l_reg_0_i_19_n_0),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \data_o[11]_i_1__1 
       (.I0(\ctrl_reg[28]_0 ),
        .I1(\data_o[15]_i_4_n_0 ),
        .I2(\ctrl_reg[25]_2 ),
        .I3(\ctrl_reg[25]_0 ),
        .I4(\data_o[15]_i_3_n_0 ),
        .O(\ctrl_reg[28]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[11]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [11]),
        .I3(\data_o_reg[15]_0 [11]),
        .O(\din_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[11]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[11]),
        .I3(\data_o_reg[15]_1 [3]),
        .O(\pwm_ch_reg[1][7] [11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[11]_i_1__4 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[11]),
        .O(cnt_reg_11_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[12]_i_1 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(\uart_tx_sreg_reg[7] [2]),
        .O(\ctrl_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[12]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [12]),
        .I3(\data_o_reg[15]_0 [12]),
        .O(\din_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[12]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[12]),
        .I3(\data_o_reg[15]_1 [4]),
        .O(\pwm_ch_reg[1][7] [12]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[12]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[12]),
        .O(cnt_reg_12_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[13]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [13]),
        .I3(\data_o_reg[15]_0 [13]),
        .O(\din_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[13]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[13]),
        .I3(\data_o_reg[15]_1 [5]),
        .O(\pwm_ch_reg[1][7] [13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[13]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[13]),
        .O(cnt_reg_13_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \data_o[13]_i_1__3 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[14]_i_1__0 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[14]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [14]),
        .I3(\data_o_reg[15]_0 [14]),
        .O(\din_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[14]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[14]),
        .I3(\data_o_reg[15]_1 [6]),
        .O(\pwm_ch_reg[1][7] [14]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[14]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[14]),
        .O(cnt_reg_14_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \data_o[15]_i_1 
       (.I0(\ctrl_reg[28]_0 ),
        .I1(\ctrl[14]_i_3_n_0 ),
        .I2(imem_file_ram_l_reg_0_i_19_n_0),
        .I3(\ctrl_reg[25]_2 ),
        .O(\ctrl_reg[28]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \data_o[15]_i_1__0 
       (.I0(\ctrl_reg[28]_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(\ctrl_reg[25]_0 ),
        .I3(\data_o[15]_i_3_n_0 ),
        .I4(\data_o[15]_i_4_n_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_o[15]_i_1__1 
       (.I0(\ctrl_reg[28]_0 ),
        .I1(\ctrl_reg[25]_0 ),
        .I2(\ctrl_reg[25]_2 ),
        .I3(\data_o[15]_i_3_n_0 ),
        .I4(\data_o[15]_i_4_n_0 ),
        .O(\ctrl_reg[28]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \data_o[15]_i_1__2 
       (.I0(\ctrl_reg[25]_2 ),
        .I1(\ctrl_reg[28]_0 ),
        .I2(\data_o[15]_i_4_n_0 ),
        .I3(\data_o[15]_i_3_n_0 ),
        .O(\ctrl_reg[25]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \data_o[15]_i_1__3 
       (.I0(\ctrl[14]_i_3_n_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(\ctrl_reg[28]_0 ),
        .O(\ctrl_reg[25]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h23)) 
    \data_o[15]_i_2__0 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[15]_i_2__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [15]),
        .I3(\data_o_reg[15]_0 [15]),
        .O(\din_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[15]_i_2__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[15]),
        .I3(\data_o_reg[15]_1 [7]),
        .O(\pwm_ch_reg[1][7] [15]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[15]_i_2__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[15]),
        .O(cnt_reg_15_sn_1));
  LUT6 #(
    .INIT(64'hFF070000FF07FFFF)) 
    \data_o[15]_i_3 
       (.I0(\ctrl_reg[3]_0 ),
        .I1(data_o0[6]),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[6]),
        .O(\data_o[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    \data_o[15]_i_4 
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[5]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[5]),
        .O(\data_o[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[1]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [1]),
        .I3(\data_o_reg[15]_0 [1]),
        .O(\din_reg[15] [1]));
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[1]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[1]),
        .I3(\data_o_reg[7] [1]),
        .O(\pwm_ch_reg[1][7] [1]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[1]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [1]),
        .I3(cnt_reg[1]),
        .O(\ctrl_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \data_o[1]_i_1__3 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \data_o[2]_i_1 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\mem_addr_reg_reg[1] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[2]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [2]),
        .I3(\data_o_reg[15]_0 [2]),
        .O(\din_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[2]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[2]),
        .I3(\data_o_reg[7] [2]),
        .O(\pwm_ch_reg[1][7] [2]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[2]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [2]),
        .I3(cnt_reg[2]),
        .O(\ctrl_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \data_o[3]_i_1__0 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(imem_file_ram_l_reg_0_i_19_n_0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[3]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [3]),
        .I3(\data_o_reg[15]_0 [3]),
        .O(\din_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[3]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[3]),
        .I3(\data_o_reg[7] [3]),
        .O(\pwm_ch_reg[1][7] [3]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[3]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [3]),
        .I3(cnt_reg[3]),
        .O(\ctrl_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[4]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [4]),
        .I3(\data_o_reg[15]_0 [4]),
        .O(\din_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[4]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[4]),
        .I3(\data_o_reg[7] [4]),
        .O(\pwm_ch_reg[1][7] [4]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[4]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [4]),
        .I3(cnt_reg[4]),
        .O(\ctrl_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[5]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [5]),
        .I3(\data_o_reg[15]_0 [5]),
        .O(\din_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[5]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[5]),
        .I3(\data_o_reg[7] [5]),
        .O(\pwm_ch_reg[1][7] [5]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[5]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [5]),
        .I3(cnt_reg[5]),
        .O(\ctrl_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \data_o[6]_i_1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\ctrl_reg[25]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[6]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [6]),
        .I3(\data_o_reg[15]_0 [6]),
        .O(\din_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[6]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[6]),
        .I3(\data_o_reg[7] [6]),
        .O(\pwm_ch_reg[1][7] [6]));
  LUT4 #(
    .INIT(16'hF780)) 
    \data_o[6]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[6] [6]),
        .I3(cnt_reg[6]),
        .O(\ctrl_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[7]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [7]),
        .I3(\data_o_reg[15]_0 [7]),
        .O(\din_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[7]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[7]),
        .I3(\data_o_reg[7] [7]),
        .O(\pwm_ch_reg[1][7] [7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[7]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[7]),
        .O(cnt_reg_7_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_o[8]_i_1 
       (.I0(\ctrl_reg[25]_0 ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[8]_i_1__0 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(\uart_tx_sreg_reg[7] [0]),
        .O(\ctrl_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[8]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [8]),
        .I3(\data_o_reg[15]_0 [8]),
        .O(\din_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[8]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[8]),
        .I3(\data_o_reg[15]_1 [0]),
        .O(\pwm_ch_reg[1][7] [8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[8]_i_1__3 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[8]),
        .O(cnt_reg_8_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[9]_i_1 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(\uart_tx_sreg_reg[7] [1]),
        .O(\ctrl_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[9]_i_1__0 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\data_o_reg[15] [9]),
        .I3(\data_o_reg[15]_0 [9]),
        .O(\din_reg[15] [9]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFD20)) 
    \data_o[9]_i_1__1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(p_1_in[9]),
        .I3(\data_o_reg[15]_1 [1]),
        .O(\pwm_ch_reg[1][7] [9]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \data_o[9]_i_1__2 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(cnt_reg[9]),
        .O(cnt_reg_9_sn_1));
  LUT5 #(
    .INIT(32'h080808A8)) 
    dio_swap_i_1
       (.I0(\ctrl_reg[19]_0 [9]),
        .I1(imem_file_ram_l_reg_3[0]),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(dio_swap_i_2_n_0),
        .O(dio_swap0));
  LUT6 #(
    .INIT(64'h00000FFBFFFF0FFB)) 
    dio_swap_i_2
       (.I0(\ctrl_reg_n_0_[6] ),
        .I1(sreg[0]),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[19]_0 [0]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[0]),
        .O(dio_swap_i_2_n_0));
  LUT6 #(
    .INIT(64'h02AA0200AAAAAAAA)) 
    dmem_file_h_reg_i_1
       (.I0(ctrl_bus),
        .I1(dio_swap_i_2_n_0),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(\ctrl_reg_n_0_[24] ),
        .I4(imem_file_ram_l_reg_3[0]),
        .I5(bw_ff),
        .O(\cpu_bus[wr_en] [1]));
  LUT4 #(
    .INIT(16'h4000)) 
    dmem_file_l_reg_i_1
       (.I0(dmem_file_l_reg_i_3_n_0),
        .I1(dmem_file_l_reg_i_4_n_0),
        .I2(dmem_file_l_reg_i_5_n_0),
        .I3(dmem_file_l_reg_i_6_n_0),
        .O(acc_en));
  LUT6 #(
    .INIT(64'hA800A8AAAAAAAAAA)) 
    dmem_file_l_reg_i_2
       (.I0(ctrl_bus),
        .I1(dio_swap_i_2_n_0),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(\ctrl_reg_n_0_[24] ),
        .I4(imem_file_ram_l_reg_3[0]),
        .I5(bw_ff),
        .O(\cpu_bus[wr_en] [0]));
  LUT6 #(
    .INIT(64'h053505F50F3F0FFF)) 
    dmem_file_l_reg_i_3
       (.I0(imem_file_ram_l_reg_3[15]),
        .I1(\op_b_ff[15]_i_2_n_0 ),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(reg_i[14]),
        .I5(imem_file_ram_l_reg_3[14]),
        .O(dmem_file_l_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    dmem_file_l_reg_i_4
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[12]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[12]),
        .O(dmem_file_l_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    dmem_file_l_reg_i_5
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[11]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[11]),
        .O(dmem_file_l_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'hAABF0000AABFFFFF)) 
    dmem_file_l_reg_i_6
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(data_o0[13]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[13]),
        .O(dmem_file_l_reg_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \dout[15]_i_1 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\dout[15]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \dout[15]_i_2 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(\ctrl_reg[25]_0 ),
        .I3(\data_o[15]_i_3_n_0 ),
        .I4(\data_o[15]_i_4_n_0 ),
        .O(\dout[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    enable_i_1
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\pwm_ch[0][7]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[2]_2 ));
  LUT5 #(
    .INIT(32'h77787878)) 
    i__carry__0_i_1
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry__0_i_5_n_0),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[7]),
        .I4(\ctrl_reg[3]_0 ),
        .O(\ctrl_reg[23]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__0_i_10
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(\ir_reg_n_0_[5] ),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__0_i_11
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(\ir_reg_n_0_[4] ),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__0_i_11_n_0));
  LUT5 #(
    .INIT(32'h77787878)) 
    i__carry__0_i_2
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry__0_i_6_n_0),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[6]),
        .I4(\ctrl_reg[3]_0 ),
        .O(\ctrl_reg[23]_1 [2]));
  LUT5 #(
    .INIT(32'h77787878)) 
    i__carry__0_i_3
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry__0_i_7_n_0),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[5]),
        .I4(\ctrl_reg[3]_0 ),
        .O(\ctrl_reg[23]_1 [1]));
  LUT5 #(
    .INIT(32'h8A80757F)) 
    i__carry__0_i_4
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(\mem_addr_reg_reg[7] ),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(i__carry__0_i_8_n_0),
        .I4(\op_b_ff[4]_i_2_n_0 ),
        .O(\ctrl_reg[23]_1 [0]));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    i__carry__0_i_5
       (.I0(\op_b_ff_reg[15] ),
        .I1(mem_data_i[15]),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__0_i_9_n_0),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    i__carry__0_i_6
       (.I0(\op_b_ff_reg[14] ),
        .I1(mem_data_i[14]),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__0_i_10_n_0),
        .O(i__carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h47FF4700)) 
    i__carry__0_i_7
       (.I0(\ctrl_reg[17]_0 ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(\sam_reg[1]_0 ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__0_i_11_n_0),
        .O(i__carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__0_i_8
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm[4]),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__0_i_9
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm[7]),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h5C5CFC0C00000000)) 
    i__carry__1_i_1
       (.I0(\op_b_ff_reg[3] ),
        .I1(i__carry__1_i_7_n_0),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(mem_data_i[11]),
        .I4(\uart_tx_sreg_reg[1] ),
        .I5(\ctrl_reg_n_0_[23] ),
        .O(DI[1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__1_i_10
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(\ir_reg_n_0_[8] ),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__1_i_11
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm[8]),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h5C5CFC0C00000000)) 
    i__carry__1_i_2
       (.I0(\mem_addr_reg_reg[11]_1 ),
        .I1(i__carry__1_i_7_n_0),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(mem_data_i[10]),
        .I4(\uart_tx_sreg_reg[1] ),
        .I5(\ctrl_reg_n_0_[23] ),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    i__carry__1_i_3
       (.I0(DI[1]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[11]),
        .O(\ctrl_reg[1]_1 [3]));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    i__carry__1_i_4
       (.I0(DI[0]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[10]),
        .O(\ctrl_reg[1]_1 [2]));
  LUT5 #(
    .INIT(32'h77787878)) 
    i__carry__1_i_5
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry__1_i_8_n_0),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[9]),
        .I4(\ctrl_reg[3]_0 ),
        .O(\ctrl_reg[1]_1 [1]));
  LUT3 #(
    .INIT(8'h78)) 
    i__carry__1_i_6
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry__1_i_9_n_0),
        .I2(reg_i[8]),
        .O(\ctrl_reg[1]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry__1_i_7
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm_i0),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    i__carry__1_i_8
       (.I0(i__carry__1_i_5_0),
        .I1(i__carry__1_i_5_1),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_10_n_0),
        .O(i__carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    i__carry__1_i_9
       (.I0(\op_b_ff_reg[0] ),
        .I1(\op_b_ff_reg[0]_0 ),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_11_n_0),
        .O(i__carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h0C5CFC5C00000000)) 
    i__carry__2_i_1
       (.I0(\ctrl_reg[17]_0 ),
        .I1(i__carry__1_i_7_n_0),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(\uart_tx_sreg_reg[1] ),
        .I4(\sam_reg[1]_0 ),
        .I5(\ctrl_reg_n_0_[23] ),
        .O(\ctrl_reg[22]_1 [1]));
  LUT6 #(
    .INIT(64'hFFA400A400000000)) 
    i__carry__2_i_2
       (.I0(\ctrl_reg_n_0_[21] ),
        .I1(imm_i0),
        .I2(\ctrl_reg_n_0_[20] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(\op_b_ff_reg[12] ),
        .I5(\ctrl_reg_n_0_[23] ),
        .O(\ctrl_reg[22]_1 [0]));
  LUT3 #(
    .INIT(8'h9A)) 
    i__carry__2_i_3
       (.I0(\op_b_ff[15]_i_2_n_0 ),
        .I1(i__carry__2_i_7_n_0),
        .I2(\ctrl_reg_n_0_[23] ),
        .O(\ctrl_reg[23]_2 [3]));
  LUT3 #(
    .INIT(8'h78)) 
    i__carry__2_i_4
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(mem_addr_reg0_carry__2_i_9_n_0),
        .I2(reg_i[14]),
        .O(\ctrl_reg[23]_2 [2]));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    i__carry__2_i_5
       (.I0(\ctrl_reg[22]_1 [1]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[13]),
        .O(\ctrl_reg[23]_2 [1]));
  LUT5 #(
    .INIT(32'h8A80757F)) 
    i__carry__2_i_6
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(\op_b_ff_reg[12] ),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(i__carry__1_i_7_n_0),
        .I4(mem_addr_reg0_carry__2_i_11_n_0),
        .O(\ctrl_reg[23]_2 [0]));
  LUT5 #(
    .INIT(32'hA303A3F3)) 
    i__carry__2_i_7
       (.I0(\op_b_ff_reg[15] ),
        .I1(i__carry__1_i_7_n_0),
        .I2(\ctrl_reg_n_0_[22] ),
        .I3(\uart_tx_sreg_reg[1] ),
        .I4(mem_data_i[15]),
        .O(i__carry__2_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry_i_10
       (.I0(\ctrl_reg_n_0_[21] ),
        .I1(\ctrl_reg_n_0_[20] ),
        .I2(imm[1]),
        .O(i__carry_i_10_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    i__carry_i_1__1
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry_i_5__1_n_0),
        .I2(\op_b_ff[3]_i_2_n_0 ),
        .O(\ctrl_reg[23]_0 [3]));
  LUT3 #(
    .INIT(8'h78)) 
    i__carry_i_2__1
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry_i_6__1_n_0),
        .I2(reg_i[2]),
        .O(\ctrl_reg[23]_0 [2]));
  LUT3 #(
    .INIT(8'h87)) 
    i__carry_i_3__1
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(i__carry_i_7__1_n_0),
        .I2(\op_b_ff[1]_i_3_n_0 ),
        .O(\ctrl_reg[23]_0 [1]));
  LUT3 #(
    .INIT(8'h87)) 
    i__carry_i_4__1
       (.I0(\ctrl_reg_n_0_[23] ),
        .I1(mem_addr_reg0_carry_i_10_n_0),
        .I2(dio_swap_i_2_n_0),
        .O(\ctrl_reg[23]_0 [0]));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    i__carry_i_5__1
       (.I0(\op_b_ff_reg[3] ),
        .I1(mem_data_i[11]),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry_i_8__1_n_0),
        .O(i__carry_i_5__1_n_0));
  LUT5 #(
    .INIT(32'hC5FFC500)) 
    i__carry_i_6__1
       (.I0(\mem_addr_reg_reg[11]_1 ),
        .I1(mem_data_i[10]),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry_i_9_n_0),
        .O(i__carry_i_6__1_n_0));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    i__carry_i_7__1
       (.I0(i__carry__1_i_5_0),
        .I1(i__carry__1_i_5_1),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry_i_10_n_0),
        .O(i__carry_i_7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry_i_8__1
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm[3]),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry_i_8__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    i__carry_i_9
       (.I0(\ctrl_reg_n_0_[20] ),
        .I1(imm[2]),
        .I2(\ctrl_reg_n_0_[21] ),
        .O(i__carry_i_9_n_0));
  FDRE i_flag_ff0_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(sreg[2]),
        .Q(i_flag_ff0),
        .R(1'b0));
  FDRE i_flag_ff1_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(i_flag_ff0),
        .Q(i_flag_ff1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_0_i_1
       (.I0(reg_file_reg_0_15_1_1_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_9_9_i_2_n_0),
        .O(dio_swap_reg_1[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_0_i_2
       (.I0(reg_file_reg_0_15_0_0_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_8_8_i_2_n_0),
        .O(dio_swap_reg_1[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_1_i_1
       (.I0(reg_file_reg_0_15_3_3_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_11_11_i_2_n_0),
        .O(dio_swap_reg_1[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_1_i_2
       (.I0(reg_file_reg_0_15_2_2_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_10_10_i_2_n_0),
        .O(dio_swap_reg_1[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_2_i_1
       (.I0(reg_file_reg_0_15_5_5_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_13_13_i_2_n_0),
        .O(dio_swap_reg_1[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_2_i_2
       (.I0(reg_file_reg_0_15_4_4_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_12_12_i_2_n_0),
        .O(dio_swap_reg_1[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_3_i_1
       (.I0(reg_file_reg_0_15_7_7_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_15_15_i_2_n_0),
        .O(dio_swap_reg_1[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_h_reg_3_i_2
       (.I0(reg_file_reg_0_15_6_6_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_14_14_i_2_n_0),
        .O(dio_swap_reg_1[14]));
  LUT4 #(
    .INIT(16'h0535)) 
    imem_file_ram_l_reg_0_i_1
       (.I0(imem_file_ram_l_reg_3[15]),
        .I1(\op_b_ff[15]_i_2_n_0 ),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(\ctrl_reg[26]_0 [3]),
        .O(acc_en_0));
  LUT6 #(
    .INIT(64'h2E2E2E222E222E22)) 
    imem_file_ram_l_reg_0_i_10
       (.I0(imem_file_ram_l_reg_3[6]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(\op_b_ff[13]_i_3_n_0 ),
        .I4(data_o0[6]),
        .I5(\ctrl_reg[3]_0 ),
        .O(\cpu_bus[addr] [3]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_11
       (.I0(imem_file_ram_l_reg_3[5]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[5]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [2]));
  LUT4 #(
    .INIT(16'h1F10)) 
    imem_file_ram_l_reg_0_i_12
       (.I0(\op_b_ff[4]_i_2_n_0 ),
        .I1(\ctrl_reg[26]_0 [3]),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(imem_file_ram_l_reg_3[4]),
        .O(\ctrl_reg[25]_2 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    imem_file_ram_l_reg_0_i_13
       (.I0(\op_b_ff[3]_i_2_n_0 ),
        .I1(\ctrl_reg[26]_0 [3]),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(imem_file_ram_l_reg_3[3]),
        .O(\ctrl_reg[25]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    imem_file_ram_l_reg_0_i_14
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .O(\cpu_bus[addr] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    imem_file_ram_l_reg_0_i_15
       (.I0(\mem_addr_reg_reg[1] ),
        .O(\cpu_bus[addr] [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_0_i_16
       (.I0(reg_file_reg_0_15_9_9_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_1_1_i_2_n_0),
        .O(dio_swap_reg_1[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_0_i_17
       (.I0(reg_file_reg_0_15_8_8_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_0_0_i_2_n_0),
        .O(dio_swap_reg_1[0]));
  LUT5 #(
    .INIT(32'h0F335555)) 
    imem_file_ram_l_reg_0_i_19
       (.I0(imem_file_ram_l_reg_3[2]),
        .I1(reg_i[2]),
        .I2(irq_sel[1]),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(\ctrl_reg_n_0_[24] ),
        .O(imem_file_ram_l_reg_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hFBC8)) 
    imem_file_ram_l_reg_0_i_2
       (.I0(\ctrl_reg[26]_0 [3]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(reg_i[14]),
        .I3(imem_file_ram_l_reg_3[14]),
        .O(\cpu_bus[addr] [11]));
  LUT5 #(
    .INIT(32'h3F305555)) 
    imem_file_ram_l_reg_0_i_20
       (.I0(imem_file_ram_l_reg_3[1]),
        .I1(irq_sel[0]),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(\op_b_ff[1]_i_3_n_0 ),
        .I4(\ctrl_reg_n_0_[24] ),
        .O(\mem_addr_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_3
       (.I0(imem_file_ram_l_reg_3[13]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[13]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [10]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_4
       (.I0(imem_file_ram_l_reg_3[12]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[12]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [9]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_5
       (.I0(imem_file_ram_l_reg_3[11]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[11]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [8]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_6
       (.I0(imem_file_ram_l_reg_3[10]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[10]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [7]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_7
       (.I0(imem_file_ram_l_reg_3[9]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[9]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [6]));
  LUT4 #(
    .INIT(16'h2E22)) 
    imem_file_ram_l_reg_0_i_8
       (.I0(imem_file_ram_l_reg_3[8]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(reg_i[8]),
        .O(\cpu_bus[addr] [5]));
  LUT6 #(
    .INIT(64'h22222222EEE2E2E2)) 
    imem_file_ram_l_reg_0_i_9
       (.I0(imem_file_ram_l_reg_3[7]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[7]),
        .I4(\ctrl_reg[3]_0 ),
        .I5(\ctrl_reg[26]_0 [3]),
        .O(\cpu_bus[addr] [4]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_1_i_1
       (.I0(reg_file_reg_0_15_11_11_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_3_3_i_2_n_0),
        .O(dio_swap_reg_1[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_1_i_2
       (.I0(reg_file_reg_0_15_10_10_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_2_2_i_2_n_0),
        .O(dio_swap_reg_1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_2_i_1
       (.I0(reg_file_reg_0_15_13_13_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_5_5_i_2_n_0),
        .O(dio_swap_reg_1[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_2_i_2
       (.I0(reg_file_reg_0_15_12_12_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_4_4_i_2_n_0),
        .O(dio_swap_reg_1[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_3_i_1
       (.I0(reg_file_reg_0_15_15_15_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_7_7_i_2_n_0),
        .O(dio_swap_reg_1[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    imem_file_ram_l_reg_3_i_2
       (.I0(reg_file_reg_0_15_14_14_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_6_6_i_2_n_0),
        .O(dio_swap_reg_1[6]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \ir[15]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state_reg[3]_0 [0]),
        .I2(state[2]),
        .I3(state[4]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .O(E));
  FDRE \ir_reg[0] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[0]),
        .Q(imm[1]),
        .R(1'b0));
  FDRE \ir_reg[10] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[10]),
        .Q(\ir_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ir_reg[11] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[11]),
        .Q(\ir_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ir_reg[12] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[12]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \ir_reg[13] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[13]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \ir_reg[14] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[14]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \ir_reg[15] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[15]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \ir_reg[1] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[1]),
        .Q(imm[2]),
        .R(1'b0));
  FDRE \ir_reg[2] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[2]),
        .Q(imm[3]),
        .R(1'b0));
  FDRE \ir_reg[3] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[3]),
        .Q(imm[4]),
        .R(1'b0));
  FDRE \ir_reg[4] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[4]),
        .Q(\ir_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ir_reg[5] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[5]),
        .Q(\ir_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ir_reg[6] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[6]),
        .Q(imm[7]),
        .R(1'b0));
  FDRE \ir_reg[7] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[7]),
        .Q(imm[8]),
        .R(1'b0));
  FDRE \ir_reg[8] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[8]),
        .Q(\ir_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ir_reg[9] 
       (.C(clk_i),
        .CE(E),
        .D(mem_data_i[9]),
        .Q(imm_i0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000E0EEE0E0)) 
    \irq_buf[0]_i_1 
       (.I0(\irq_buf[0]_i_2_n_0 ),
        .I1(irq_sel[0]),
        .I2(\irq_buf_reg_n_0_[0] ),
        .I3(irq_fire_ff),
        .I4(p_2_in3_in),
        .I5(\irq_buf_reg[1]_1 [1]),
        .O(p_9_out[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \irq_buf[0]_i_2 
       (.I0(irq_sel[1]),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(state[0]),
        .I4(\FSM_sequential_state_reg[3]_0 [1]),
        .I5(state[4]),
        .O(\irq_buf[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000DF)) 
    \irq_buf[1]_i_1 
       (.I0(irq_sel[0]),
        .I1(irq_sel[1]),
        .I2(\ctrl[25]_i_1_n_0 ),
        .I3(\irq_buf_reg[1]_2 ),
        .I4(\irq_buf_reg[1]_1 [1]),
        .O(p_9_out[1]));
  LUT6 #(
    .INIT(64'h00000000DFDFDF00)) 
    \irq_buf[2]_i_1 
       (.I0(irq_sel[1]),
        .I1(irq_sel[0]),
        .I2(\ctrl[25]_i_1_n_0 ),
        .I3(p_8_in),
        .I4(irq_o),
        .I5(\irq_buf_reg[1]_1 [1]),
        .O(p_9_out[2]));
  FDRE \irq_buf_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_9_out[0]),
        .Q(\irq_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \irq_buf_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_9_out[1]),
        .Q(\irq_buf_reg[1]_0 ),
        .R(1'b0));
  FDRE \irq_buf_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_9_out[2]),
        .Q(p_8_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \irq_mask[15]_i_1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\dout[15]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h2AEA)) 
    irq_start_i_1
       (.I0(irq_fire),
        .I1(irq_start_reg_n_0),
        .I2(sreg[2]),
        .I3(\ctrl[25]_i_1_n_0 ),
        .O(irq_start_i_1_n_0));
  LUT5 #(
    .INIT(32'hFE000000)) 
    irq_start_i_2
       (.I0(p_8_in),
        .I1(\irq_buf_reg_n_0_[0] ),
        .I2(\irq_buf_reg[1]_0 ),
        .I3(i_flag_ff1),
        .I4(sreg[2]),
        .O(irq_fire));
  FDRE irq_start_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(irq_start_i_1_n_0),
        .Q(irq_start_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h45FF4500)) 
    \irq_vec[0]_i_1 
       (.I0(\irq_buf_reg_n_0_[0] ),
        .I1(\irq_buf_reg[1]_0 ),
        .I2(p_8_in),
        .I3(irq_vec),
        .I4(irq_sel[0]),
        .O(\irq_vec[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    \irq_vec[1]_i_1 
       (.I0(\irq_buf_reg_n_0_[0] ),
        .I1(\irq_buf_reg[1]_0 ),
        .I2(irq_vec),
        .I3(irq_sel[1]),
        .O(\irq_vec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088888880)) 
    \irq_vec[1]_i_2 
       (.I0(sreg[2]),
        .I1(i_flag_ff1),
        .I2(\irq_buf_reg[1]_0 ),
        .I3(\irq_buf_reg_n_0_[0] ),
        .I4(p_8_in),
        .I5(irq_start_reg_n_0),
        .O(irq_vec));
  FDRE \irq_vec_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\irq_vec[0]_i_1_n_0 ),
        .Q(irq_sel[0]),
        .R(1'b0));
  FDRE \irq_vec_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\irq_vec[1]_i_1_n_0 ),
        .Q(irq_sel[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__0_i_1
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[7]),
        .O(reg_i[7]));
  LUT5 #(
    .INIT(32'h47777777)) 
    mem_addr_reg0_carry__0_i_10
       (.I0(data_o0[6]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(mem_addr_reg0_carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'h47777777)) 
    mem_addr_reg0_carry__0_i_11
       (.I0(data_o0[5]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(mem_addr_reg0_carry__0_i_11_n_0));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__0_i_2
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[6]),
        .O(reg_i[6]));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__0_i_3
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[5]),
        .O(reg_i[5]));
  LUT6 #(
    .INIT(64'hB888888BB8888888)) 
    mem_addr_reg0_carry__0_i_4
       (.I0(data_o0[4]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .I5(\FSM_sequential_state_reg[0]_1 ),
        .O(reg_i[4]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__0_i_5
       (.I0(mem_addr_reg0_carry__0_i_9_n_0),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm[7]),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[7]_0 ),
        .O(\ctrl_reg[21]_1 [3]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__0_i_6
       (.I0(mem_addr_reg0_carry__0_i_10_n_0),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(\ir_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[6] ),
        .O(\ctrl_reg[21]_1 [2]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__0_i_7
       (.I0(mem_addr_reg0_carry__0_i_11_n_0),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(\ir_reg_n_0_[4] ),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[5] ),
        .O(\ctrl_reg[21]_1 [1]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__0_i_8
       (.I0(\op_b_ff[4]_i_2_n_0 ),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm[4]),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\mem_addr_reg_reg[7] ),
        .O(\ctrl_reg[21]_1 [0]));
  LUT5 #(
    .INIT(32'h47777777)) 
    mem_addr_reg0_carry__0_i_9
       (.I0(data_o0[7]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(mem_addr_reg0_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__1_i_1
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[11]),
        .O(reg_i[11]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    mem_addr_reg0_carry__1_i_10
       (.I0(\mem_addr_reg_reg[11]_1 ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(mem_data_i[10]),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_7_n_0),
        .O(mem_addr_reg0_carry__1_i_10_n_0));
  LUT5 #(
    .INIT(32'h47777777)) 
    mem_addr_reg0_carry__1_i_11
       (.I0(data_o0[9]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(mem_addr_reg0_carry__1_i_11_n_0));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__1_i_2
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[10]),
        .O(reg_i[10]));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__1_i_3
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[9]),
        .O(reg_i[9]));
  LUT6 #(
    .INIT(64'hFFFFC0020000C002)) 
    mem_addr_reg0_carry__1_i_4
       (.I0(sreg[3]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[8]),
        .O(reg_i[8]));
  LUT6 #(
    .INIT(64'h007FFF7FFF800080)) 
    mem_addr_reg0_carry__1_i_5
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[11]),
        .I5(mem_addr_reg0_carry__1_i_9_n_0),
        .O(\ctrl_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h007FFF7FFF800080)) 
    mem_addr_reg0_carry__1_i_6
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[10]),
        .I5(mem_addr_reg0_carry__1_i_10_n_0),
        .O(\ctrl_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__1_i_7
       (.I0(mem_addr_reg0_carry__1_i_11_n_0),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(\ir_reg_n_0_[8] ),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[9] ),
        .O(\ctrl_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h5555669AAAAA669A)) 
    mem_addr_reg0_carry__1_i_8
       (.I0(reg_i[8]),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm[8]),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[8] ),
        .O(\ctrl_reg[1]_0 [0]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    mem_addr_reg0_carry__1_i_9
       (.I0(\op_b_ff_reg[3] ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(mem_data_i[11]),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_7_n_0),
        .O(mem_addr_reg0_carry__1_i_9_n_0));
  LUT5 #(
    .INIT(32'hB8888888)) 
    mem_addr_reg0_carry__2_i_1
       (.I0(data_o0[14]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(reg_i[14]));
  LUT5 #(
    .INIT(32'h35FF3500)) 
    mem_addr_reg0_carry__2_i_10
       (.I0(\ctrl_reg[17]_0 ),
        .I1(\sam_reg[1]_0 ),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_7_n_0),
        .O(mem_addr_reg0_carry__2_i_10_n_0));
  LUT5 #(
    .INIT(32'h47777777)) 
    mem_addr_reg0_carry__2_i_11
       (.I0(data_o0[12]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(mem_addr_reg0_carry__2_i_11_n_0));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__2_i_2
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[13]),
        .O(reg_i[13]));
  LUT5 #(
    .INIT(32'hFF800080)) 
    mem_addr_reg0_carry__2_i_3
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[12]),
        .O(reg_i[12]));
  LUT6 #(
    .INIT(64'h47477477B8B88B88)) 
    mem_addr_reg0_carry__2_i_4
       (.I0(mem_addr_reg0_carry__2),
        .I1(\ctrl_reg_n_0_[22] ),
        .I2(\ctrl_reg_n_0_[21] ),
        .I3(imm_i0),
        .I4(\ctrl_reg_n_0_[20] ),
        .I5(\op_b_ff[15]_i_2_n_0 ),
        .O(\ctrl_reg[22]_0 [3]));
  LUT6 #(
    .INIT(64'h007FFF7FFF800080)) 
    mem_addr_reg0_carry__2_i_5
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[14]),
        .I5(mem_addr_reg0_carry__2_i_9_n_0),
        .O(\ctrl_reg[22]_0 [2]));
  LUT6 #(
    .INIT(64'h007FFF7FFF800080)) 
    mem_addr_reg0_carry__2_i_6
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(data_o0[13]),
        .I5(mem_addr_reg0_carry__2_i_10_n_0),
        .O(\ctrl_reg[22]_0 [1]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry__2_i_7
       (.I0(mem_addr_reg0_carry__2_i_11_n_0),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm_i0),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[12] ),
        .O(\ctrl_reg[22]_0 [0]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    mem_addr_reg0_carry__2_i_9
       (.I0(\op_b_ff_reg[14] ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(mem_data_i[14]),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(i__carry__1_i_7_n_0),
        .O(mem_addr_reg0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'hB888B88BB888B888)) 
    mem_addr_reg0_carry_i_1
       (.I0(data_o0[3]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .I5(sreg[2]),
        .O(reg_i[3]));
  LUT6 #(
    .INIT(64'h3500350035FF3500)) 
    mem_addr_reg0_carry_i_10
       (.I0(\op_b_ff_reg[0] ),
        .I1(\op_b_ff_reg[0]_0 ),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[22] ),
        .I4(\ctrl_reg_n_0_[20] ),
        .I5(\ctrl_reg_n_0_[21] ),
        .O(mem_addr_reg0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFFA00E0000A00E)) 
    mem_addr_reg0_carry_i_2
       (.I0(\ctrl_reg_n_0_[6] ),
        .I1(sreg[1]),
        .I2(\ctrl_reg[19]_0 [0]),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[2]),
        .O(reg_i[2]));
  LUT6 #(
    .INIT(64'hAAC0AAC0AAC3AAC0)) 
    mem_addr_reg0_carry_i_3
       (.I0(data_o0[1]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg[3]_0 ),
        .I4(\irq_buf_reg[1]_1 [0]),
        .I5(\ctrl_reg_n_0_[5] ),
        .O(reg_i[1]));
  LUT6 #(
    .INIT(64'hB888B888B88BB888)) 
    mem_addr_reg0_carry_i_4
       (.I0(data_o0[0]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg[19]_0 [0]),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(sreg[0]),
        .I5(\ctrl_reg_n_0_[6] ),
        .O(reg_i[0]));
  LUT6 #(
    .INIT(64'hAAAA996555559965)) 
    mem_addr_reg0_carry_i_5
       (.I0(\op_b_ff[3]_i_2_n_0 ),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm[3]),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(mem_addr_reg0_carry),
        .O(\ctrl_reg[21]_0 [3]));
  LUT6 #(
    .INIT(64'h5555669AAAAA669A)) 
    mem_addr_reg0_carry_i_6
       (.I0(reg_i[2]),
        .I1(\ctrl_reg_n_0_[21] ),
        .I2(imm[2]),
        .I3(\ctrl_reg_n_0_[20] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[2] ),
        .O(\ctrl_reg[21]_0 [2]));
  LUT6 #(
    .INIT(64'hAAAAAA595555AA59)) 
    mem_addr_reg0_carry_i_7
       (.I0(\op_b_ff[1]_i_3_n_0 ),
        .I1(imm[1]),
        .I2(\ctrl_reg_n_0_[20] ),
        .I3(\ctrl_reg_n_0_[21] ),
        .I4(\ctrl_reg_n_0_[22] ),
        .I5(\op_b_ff_reg[1] ),
        .O(\ctrl_reg[21]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    mem_addr_reg0_carry_i_8
       (.I0(dio_swap_i_2_n_0),
        .I1(mem_addr_reg0_carry_i_10_n_0),
        .O(\ctrl_reg[21]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00002800)) 
    mem_rd_ff_i_1
       (.I0(mem_rd_ff_i_2_n_0),
        .I1(state[2]),
        .I2(\FSM_sequential_state_reg[3]_0 [0]),
        .I3(\FSM_sequential_state_reg[3]_0 [1]),
        .I4(state[4]),
        .O(mem_rd));
  LUT6 #(
    .INIT(64'h005000FFFF50C0FF)) 
    mem_rd_ff_i_2
       (.I0(\FSM_sequential_state[0]_i_9_n_0 ),
        .I1(p_2_in[0]),
        .I2(\ctrl[14]_i_2__0_n_0 ),
        .I3(\FSM_sequential_state_reg[3]_0 [0]),
        .I4(state[0]),
        .I5(p_2_in[1]),
        .O(mem_rd_ff_i_2_n_0));
  FDRE mem_rd_ff_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(mem_rd),
        .Q(mem_rd_ff),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h350035FF)) 
    \op_b_ff[0]_i_1 
       (.I0(\op_b_ff_reg[0] ),
        .I1(\op_b_ff_reg[0]_0 ),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[12] ),
        .I4(dio_swap_i_2_n_0),
        .O(dio_swap_reg_0[0]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[10]_i_1 
       (.I0(\op_b_ff_reg[10] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[10]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[10]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[11]_i_1 
       (.I0(\op_b_ff_reg[11] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[11]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[11]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[12]_i_1 
       (.I0(\op_b_ff_reg[12] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[12]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[12]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[13]_i_1 
       (.I0(\op_b_ff_reg[13] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[13]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[13]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \op_b_ff[13]_i_3 
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg_n_0_[6] ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg[19]_0 [3]),
        .I4(\ctrl_reg[19]_0 [1]),
        .I5(\ctrl_reg[19]_0 [2]),
        .O(\op_b_ff[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \op_b_ff[13]_i_4 
       (.I0(\ctrl_reg[19]_0 [2]),
        .I1(\ctrl_reg[19]_0 [1]),
        .I2(\ctrl_reg[19]_0 [3]),
        .O(\ctrl_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \op_b_ff[14]_i_1 
       (.I0(\op_b_ff_reg[14] ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(mem_data_i[14]),
        .I3(\ctrl_reg_n_0_[12] ),
        .I4(reg_i[14]),
        .O(dio_swap_reg_0[14]));
  LUT5 #(
    .INIT(32'h74FF7400)) 
    \op_b_ff[15]_i_1 
       (.I0(\op_b_ff_reg[15] ),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(mem_data_i[15]),
        .I3(\ctrl_reg_n_0_[12] ),
        .I4(\op_b_ff[15]_i_2_n_0 ),
        .O(dio_swap_reg_0[15]));
  LUT6 #(
    .INIT(64'hFFFFC0020000C002)) 
    \op_b_ff[15]_i_2 
       (.I0(imem_up_en),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[15]),
        .O(\op_b_ff[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \op_b_ff[1]_i_1 
       (.I0(\op_b_ff_reg[1] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[1]_i_3_n_0 ),
        .O(dio_swap_reg_0[1]));
  LUT6 #(
    .INIT(64'h000F0F0BF0FFFFFB)) 
    \op_b_ff[1]_i_3 
       (.I0(\ctrl_reg_n_0_[5] ),
        .I1(\irq_buf_reg[1]_1 [0]),
        .I2(\ctrl_reg[3]_0 ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .I5(data_o0[1]),
        .O(\op_b_ff[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \op_b_ff[2]_i_1 
       (.I0(\op_b_ff_reg[2] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(reg_i[2]),
        .O(dio_swap_reg_0[2]));
  LUT5 #(
    .INIT(32'hC500C5FF)) 
    \op_b_ff[3]_i_1 
       (.I0(\op_b_ff_reg[3] ),
        .I1(mem_data_i[11]),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[12] ),
        .I4(\op_b_ff[3]_i_2_n_0 ),
        .O(dio_swap_reg_0[3]));
  LUT6 #(
    .INIT(64'h00000FFDFFFF0FFD)) 
    \op_b_ff[3]_i_2 
       (.I0(sreg[2]),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[3]),
        .O(\op_b_ff[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h350035FF)) 
    \op_b_ff[4]_i_1 
       (.I0(\op_b_ff_reg[4]_0 ),
        .I1(\op_b_ff_reg[4] ),
        .I2(\uart_tx_sreg_reg[1] ),
        .I3(\ctrl_reg_n_0_[12] ),
        .I4(\op_b_ff[4]_i_2_n_0 ),
        .O(dio_swap_reg_0[4]));
  LUT6 #(
    .INIT(64'h00003FFDFFFF3FFD)) 
    \op_b_ff[4]_i_2 
       (.I0(\FSM_sequential_state_reg[0]_1 ),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg_n_0_[6] ),
        .I3(\ctrl_reg_n_0_[5] ),
        .I4(\ctrl_reg[3]_0 ),
        .I5(data_o0[4]),
        .O(\op_b_ff[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[5]_i_1 
       (.I0(\op_b_ff_reg[5] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[5]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[5]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[6]_i_1 
       (.I0(\op_b_ff_reg[6] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[6]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[6]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[7]_i_1 
       (.I0(\op_b_ff_reg[7]_0 ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[7]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \op_b_ff[8]_i_1 
       (.I0(\op_b_ff_reg[8] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(reg_i[8]),
        .O(dio_swap_reg_0[8]));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \op_b_ff[9]_i_1 
       (.I0(\op_b_ff_reg[9] ),
        .I1(\ctrl_reg_n_0_[12] ),
        .I2(\op_b_ff[13]_i_3_n_0 ),
        .I3(data_o0[9]),
        .I4(\ctrl_reg[3]_0 ),
        .O(dio_swap_reg_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pwm_ch[0][7]_i_1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\pwm_ch[0][7]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[2] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \pwm_ch[0][7]_i_2 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\ctrl_reg[25]_0 ),
        .I2(\ctrl_reg[25]_2 ),
        .I3(\data_o[15]_i_3_n_0 ),
        .I4(\data_o[15]_i_4_n_0 ),
        .O(\pwm_ch[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \pwm_ch[2][7]_i_1 
       (.I0(\mem_addr_reg_reg[1] ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\pwm_ch[0][7]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0000DDD1)) 
    rdata_reg_i_1
       (.I0(imem_file_ram_l_reg_3[11]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(rden_i_2_n_0),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(rden_i_3_n_0),
        .O(\mem_addr_reg_reg[11] ));
  LUT5 #(
    .INIT(32'h40000000)) 
    rden_i_1
       (.I0(dmem_file_l_reg_i_3_n_0),
        .I1(dmem_file_l_reg_i_4_n_0),
        .I2(dmem_file_l_reg_i_5_n_0),
        .I3(dmem_file_l_reg_i_6_n_0),
        .I4(\cpu_bus[rd_en] ),
        .O(\ctrl_reg[28]_1 ));
  LUT5 #(
    .INIT(32'h05350000)) 
    rden_i_1__0
       (.I0(imem_file_ram_l_reg_3[15]),
        .I1(\op_b_ff[15]_i_2_n_0 ),
        .I2(\ctrl_reg_n_0_[24] ),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(\cpu_bus[rd_en] ),
        .O(\mem_addr_reg_reg[15] ));
  LUT6 #(
    .INIT(64'h0000DDD100000000)) 
    rden_i_1__1
       (.I0(imem_file_ram_l_reg_3[11]),
        .I1(\ctrl_reg_n_0_[24] ),
        .I2(rden_i_2_n_0),
        .I3(\ctrl_reg[26]_0 [3]),
        .I4(rden_i_3_n_0),
        .I5(\cpu_bus[rd_en] ),
        .O(\mem_addr_reg_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h47777777)) 
    rden_i_2
       (.I0(data_o0[11]),
        .I1(\ctrl_reg[3]_0 ),
        .I2(\ctrl_reg_n_0_[5] ),
        .I3(\ctrl_reg_n_0_[6] ),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(rden_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEEFFFEFFFF)) 
    rden_i_3
       (.I0(dmem_file_l_reg_i_3_n_0),
        .I1(dmem_file_l_reg_i_6_n_0),
        .I2(\ctrl_reg[26]_0 [3]),
        .I3(mem_addr_reg0_carry__2_i_11_n_0),
        .I4(\ctrl_reg_n_0_[24] ),
        .I5(imem_file_ram_l_reg_3[12]),
        .O(rden_i_3_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_0_0_i_1
       (.I0(reg_file_reg_0_15_0_0_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[0]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_file_reg_0_15_0_0_i_2
       (.I0(reg_file_reg_0_15_0_0_i_3_n_7),
        .I1(\uart_tx_sreg_reg[1]_1 ),
        .I2(reg_file_reg_0_15_0_0_i_5_n_0),
        .I3(reg_file_reg_0_15_0_0_i_6_n_0),
        .I4(reg_file_reg_0_15_0_0_i_7_n_0),
        .I5(reg_file_reg_0_15_0_0_i_8_n_0),
        .O(reg_file_reg_0_15_0_0_i_2_n_0));
  CARRY4 reg_file_reg_0_15_0_0_i_3
       (.CI(1'b0),
        .CO({reg_file_reg_0_15_0_0_i_3_n_0,reg_file_reg_0_15_0_0_i_3_n_1,reg_file_reg_0_15_0_0_i_3_n_2,reg_file_reg_0_15_0_0_i_3_n_3}),
        .CYINIT(Q[0]),
        .DI({Q[3:1],reg_file_reg_0_15_0_0_i_9_n_0}),
        .O({reg_file_reg_0_15_0_0_i_3_n_4,reg_file_reg_0_15_0_0_i_3_n_5,reg_file_reg_0_15_0_0_i_3_n_6,reg_file_reg_0_15_0_0_i_3_n_7}),
        .S(reg_file_reg_0_15_0_0_i_2_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    reg_file_reg_0_15_0_0_i_5
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_0_0_i_6
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[0]),
        .I2(Q[0]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_0_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    reg_file_reg_0_15_0_0_i_7
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_0_0_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAEAAAA)) 
    reg_file_reg_0_15_0_0_i_8
       (.I0(reg_file_reg_0_15_0_0_i_2_1),
        .I1(reg_file_reg_0_15_7_7_i_11_0[0]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_0_0_i_3_n_7),
        .O(reg_file_reg_0_15_0_0_i_8_n_0));
  LUT5 #(
    .INIT(32'h0060FF9F)) 
    reg_file_reg_0_15_0_0_i_9
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [6]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [8]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[0]),
        .O(reg_file_reg_0_15_0_0_i_9_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_10_10_i_1
       (.I0(reg_file_reg_0_15_10_10_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[10]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[10]));
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_10_10_i_2
       (.I0(reg_file_reg_0_15_10_10_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_10_10_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_10_10_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBB84B484F4C0300)) 
    reg_file_reg_0_15_10_10_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(O[2]),
        .I4(Q[10]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[10]),
        .O(reg_file_reg_0_15_10_10_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA0200AAAA)) 
    reg_file_reg_0_15_10_10_i_4
       (.I0(reg_file_reg_0_15_10_10_i_5_n_0),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[10]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(O[2]),
        .O(reg_file_reg_0_15_10_10_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFFFAFFEEAAFAAA)) 
    reg_file_reg_0_15_10_10_i_5
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[2]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[11]),
        .O(reg_file_reg_0_15_10_10_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_11_11_i_1
       (.I0(reg_file_reg_0_15_11_11_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[11]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h0000BF8C)) 
    reg_file_reg_0_15_11_11_i_2
       (.I0(\uart_tx_sreg_reg[4] ),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_11_11_i_4_n_0),
        .I4(reg_file_reg_0_15_11_11_i_5_n_0),
        .O(reg_file_reg_0_15_11_11_i_2_n_0));
  LUT6 #(
    .INIT(64'hAA02AAAAA800AAAA)) 
    reg_file_reg_0_15_11_11_i_4
       (.I0(reg_file_reg_0_15_11_11_i_6_n_0),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(O[3]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[11]),
        .O(reg_file_reg_0_15_11_11_i_4_n_0));
  LUT6 #(
    .INIT(64'hBABFBFBFAAAAAAAA)) 
    reg_file_reg_0_15_11_11_i_5
       (.I0(\ctrl_reg[19]_0 [9]),
        .I1(O[3]),
        .I2(reg_file_reg_0_15_0_0_i_7_n_0),
        .I3(reg_file_reg_0_15_7_7_i_11_0[11]),
        .I4(Q[11]),
        .I5(reg_file_reg_0_15_0_0_i_5_n_0),
        .O(reg_file_reg_0_15_11_11_i_5_n_0));
  LUT6 #(
    .INIT(64'hEEFFFAFFEEAAFAAA)) 
    reg_file_reg_0_15_11_11_i_6
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[3]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[12]),
        .O(reg_file_reg_0_15_11_11_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFE2)) 
    reg_file_reg_0_15_12_12_i_1
       (.I0(reg_file_reg_0_15_12_12_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[12]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[12]));
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_12_12_i_2
       (.I0(reg_file_reg_0_15_12_12_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_12_12_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_12_12_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBB84B484F4C0300)) 
    reg_file_reg_0_15_12_12_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_15_15_i_2_0[0]),
        .I4(Q[12]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[12]),
        .O(reg_file_reg_0_15_12_12_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA0200AAAA)) 
    reg_file_reg_0_15_12_12_i_4
       (.I0(reg_file_reg_0_15_12_12_i_6_n_0),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[12]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_15_15_i_2_0[0]),
        .O(reg_file_reg_0_15_12_12_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFFFAFFEEAAFAAA)) 
    reg_file_reg_0_15_12_12_i_6
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[4]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[13]),
        .O(reg_file_reg_0_15_12_12_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_12_12_i_7
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[15]),
        .I5(Q[15]),
        .O(S));
  LUT4 #(
    .INIT(16'hFFE2)) 
    reg_file_reg_0_15_13_13_i_1
       (.I0(reg_file_reg_0_15_13_13_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[13]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_13_13_i_2
       (.I0(reg_file_reg_0_15_13_13_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_13_13_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_13_13_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBB84B484F4C0300)) 
    reg_file_reg_0_15_13_13_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_15_15_i_2_0[1]),
        .I4(Q[13]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[13]),
        .O(reg_file_reg_0_15_13_13_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA8AAAA0200AAAA)) 
    reg_file_reg_0_15_13_13_i_4
       (.I0(reg_file_reg_0_15_13_13_i_5_n_0),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[13]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_15_15_i_2_0[1]),
        .O(reg_file_reg_0_15_13_13_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFFFEFAFEAFAEAAA)) 
    reg_file_reg_0_15_13_13_i_5
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[5]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[14]),
        .O(reg_file_reg_0_15_13_13_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFEA)) 
    reg_file_reg_0_15_14_14_i_1
       (.I0(\ctrl_reg_n_0_[11] ),
        .I1(addr_add[14]),
        .I2(\ctrl_reg_n_0_[0] ),
        .I3(reg_file_reg_0_15_14_14_i_2_n_0),
        .O(in_data[14]));
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_14_14_i_2
       (.I0(reg_file_reg_0_15_14_14_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_14_14_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_14_14_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBB84B484F4C0300)) 
    reg_file_reg_0_15_14_14_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_15_15_i_2_0[2]),
        .I4(Q[14]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[14]),
        .O(reg_file_reg_0_15_14_14_i_3_n_0));
  LUT6 #(
    .INIT(64'hAA02AAAAA800AAAA)) 
    reg_file_reg_0_15_14_14_i_4
       (.I0(reg_file_reg_0_15_14_14_i_5_n_0),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_15_15_i_2_0[2]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[14]),
        .O(reg_file_reg_0_15_14_14_i_4_n_0));
  LUT6 #(
    .INIT(64'hEFFFEFAFEAFAEAAA)) 
    reg_file_reg_0_15_14_14_i_5
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[15]),
        .O(reg_file_reg_0_15_14_14_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFCA)) 
    reg_file_reg_0_15_15_15_i_1
       (.I0(reg_file_reg_0_15_15_15_i_2_n_0),
        .I1(addr_add[15]),
        .I2(\ctrl_reg_n_0_[0] ),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[15]));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    reg_file_reg_0_15_15_15_i_2
       (.I0(\ctrl_reg[19]_0 [9]),
        .I1(reg_file_reg_0_15_15_15_i_3_n_0),
        .I2(reg_file_reg_0_15_0_0_i_7_n_0),
        .I3(reg_file_reg_0_15_15_15_i_4_n_0),
        .I4(reg_file_reg_0_15_0_0_i_5_n_0),
        .I5(reg_file_reg_0_15_15_15_i_5_n_0),
        .O(reg_file_reg_0_15_15_15_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF01FD0000)) 
    reg_file_reg_0_15_15_15_i_3
       (.I0(reg_file_reg_0_15_7_7_i_11_0[15]),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(reg_file_reg_0_15_15_15_i_2_0[3]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(reg_file_reg_0_15_15_15_i_6_n_0),
        .O(reg_file_reg_0_15_15_15_i_3_n_0));
  LUT4 #(
    .INIT(16'h2DB3)) 
    reg_file_reg_0_15_15_15_i_4
       (.I0(\ctrl_reg[19]_0 [6]),
        .I1(Q[15]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[15]),
        .O(reg_file_reg_0_15_15_15_i_4_n_0));
  LUT6 #(
    .INIT(64'h07770707F777F7F7)) 
    reg_file_reg_0_15_15_15_i_5
       (.I0(reg_file_reg_0_15_7_7_i_11_0[15]),
        .I1(Q[15]),
        .I2(\ctrl_reg[19]_0 [8]),
        .I3(\ctrl_reg[19]_0 [7]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_15_15_i_2_0[3]),
        .O(reg_file_reg_0_15_15_15_i_5_n_0));
  LUT6 #(
    .INIT(64'h1105110011051155)) 
    reg_file_reg_0_15_15_15_i_6
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[15]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(sreg[0]),
        .O(reg_file_reg_0_15_15_15_i_6_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_1_1_i_1
       (.I0(reg_file_reg_0_15_1_1_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[1]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_file_reg_0_15_1_1_i_2
       (.I0(reg_file_reg_0_15_0_0_i_3_n_6),
        .I1(\uart_tx_sreg_reg[2] ),
        .I2(reg_file_reg_0_15_0_0_i_5_n_0),
        .I3(reg_file_reg_0_15_1_1_i_4_n_0),
        .I4(reg_file_reg_0_15_0_0_i_7_n_0),
        .I5(reg_file_reg_0_15_1_1_i_5_n_0),
        .O(reg_file_reg_0_15_1_1_i_2_n_0));
  LUT4 #(
    .INIT(16'hC760)) 
    reg_file_reg_0_15_1_1_i_4
       (.I0(\ctrl_reg[19]_0 [6]),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[1]),
        .I3(Q[1]),
        .O(reg_file_reg_0_15_1_1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_1_1_i_5
       (.I0(reg_file_reg_0_15_1_1_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[1]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_0_0_i_3_n_6),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_1_1_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_2_2_i_1
       (.I0(reg_file_reg_0_15_2_2_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[2]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[2]));
  LUT5 #(
    .INIT(32'hFB3BC808)) 
    reg_file_reg_0_15_2_2_i_2
       (.I0(reg_file_reg_0_15_2_2_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_2_2_i_4_n_0),
        .I4(reg_file_reg_0_15_2_2_i_5_n_0),
        .O(reg_file_reg_0_15_2_2_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFBB808880888088)) 
    reg_file_reg_0_15_2_2_i_3
       (.I0(reg_file_reg_0_15_0_0_i_3_n_5),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[2]),
        .I5(Q[2]),
        .O(reg_file_reg_0_15_2_2_i_3_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_2_2_i_4
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[2]),
        .I2(Q[2]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_2_2_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_2_2_i_5
       (.I0(reg_file_reg_0_15_2_2_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[2]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_0_0_i_3_n_5),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_2_2_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_3_3_i_1
       (.I0(reg_file_reg_0_15_3_3_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[3]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[3]));
  LUT5 #(
    .INIT(32'hFB3BC808)) 
    reg_file_reg_0_15_3_3_i_2
       (.I0(reg_file_reg_0_15_3_3_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_3_3_i_4_n_0),
        .I4(reg_file_reg_0_15_3_3_i_5_n_0),
        .O(reg_file_reg_0_15_3_3_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFBB808880888088)) 
    reg_file_reg_0_15_3_3_i_3
       (.I0(reg_file_reg_0_15_0_0_i_3_n_4),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[3]),
        .I5(Q[3]),
        .O(reg_file_reg_0_15_3_3_i_3_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_3_3_i_4
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[3]),
        .I2(Q[3]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_3_3_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_3_3_i_5
       (.I0(reg_file_reg_0_15_3_3_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[3]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_0_0_i_3_n_4),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_3_3_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_4_4_i_1
       (.I0(reg_file_reg_0_15_4_4_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[4]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[4]));
  LUT5 #(
    .INIT(32'hFB3BC808)) 
    reg_file_reg_0_15_4_4_i_2
       (.I0(reg_file_reg_0_15_4_4_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_4_4_i_4_n_0),
        .I4(reg_file_reg_0_15_4_4_i_5_n_0),
        .O(reg_file_reg_0_15_4_4_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFBB808880888088)) 
    reg_file_reg_0_15_4_4_i_3
       (.I0(reg_file_reg_0_15_7_7_i_3_n_7),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[4]),
        .I5(Q[4]),
        .O(reg_file_reg_0_15_4_4_i_3_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_4_4_i_4
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[4]),
        .I2(Q[4]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_4_4_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_4_4_i_5
       (.I0(reg_file_reg_0_15_4_4_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[4]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_3_n_7),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_4_4_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_5_5_i_1
       (.I0(reg_file_reg_0_15_5_5_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[5]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[5]));
  LUT5 #(
    .INIT(32'hFB3BC808)) 
    reg_file_reg_0_15_5_5_i_2
       (.I0(reg_file_reg_0_15_5_5_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_5_5_i_4_n_0),
        .I4(reg_file_reg_0_15_5_5_i_5_n_0),
        .O(reg_file_reg_0_15_5_5_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFBB808880888088)) 
    reg_file_reg_0_15_5_5_i_3
       (.I0(reg_file_reg_0_15_7_7_i_3_n_6),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[5]),
        .I5(Q[5]),
        .O(reg_file_reg_0_15_5_5_i_3_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_5_5_i_4
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[5]),
        .I2(Q[5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_5_5_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_5_5_i_5
       (.I0(reg_file_reg_0_15_5_5_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[5]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_3_n_6),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_5_5_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_6_6_i_1
       (.I0(reg_file_reg_0_15_6_6_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[6]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[6]));
  LUT5 #(
    .INIT(32'hFB3BC808)) 
    reg_file_reg_0_15_6_6_i_2
       (.I0(reg_file_reg_0_15_6_6_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(reg_file_reg_0_15_6_6_i_4_n_0),
        .I4(reg_file_reg_0_15_6_6_i_5_n_0),
        .O(reg_file_reg_0_15_6_6_i_2_n_0));
  LUT6 #(
    .INIT(64'hBFBB808880888088)) 
    reg_file_reg_0_15_6_6_i_3
       (.I0(reg_file_reg_0_15_7_7_i_3_n_5),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[6]),
        .I5(Q[6]),
        .O(reg_file_reg_0_15_6_6_i_3_n_0));
  LUT4 #(
    .INIT(16'h94B8)) 
    reg_file_reg_0_15_6_6_i_4
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[6]),
        .I2(Q[6]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_6_6_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_6_6_i_5
       (.I0(reg_file_reg_0_15_6_6_i_2_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[6]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(reg_file_reg_0_15_7_7_i_3_n_5),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_6_6_i_5_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_7_7_i_1
       (.I0(reg_file_reg_0_15_7_7_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[7]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004E44)) 
    reg_file_reg_0_15_7_7_i_11
       (.I0(\ctrl_reg[19]_0 [9]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[8]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(sreg[0]),
        .I4(\ctrl_reg[19]_0 [5]),
        .I5(reg_file_reg_0_15_7_7_i_12_n_0),
        .O(reg_file_reg_0_15_7_7_i_11_n_0));
  LUT6 #(
    .INIT(64'hFEAAEEEEFEAA2222)) 
    reg_file_reg_0_15_7_7_i_12
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(\ctrl_reg[19]_0 [5]),
        .I2(\ctrl_reg[19]_0 [9]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[15]),
        .O(reg_file_reg_0_15_7_7_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    reg_file_reg_0_15_7_7_i_2
       (.I0(\op_b_ff_reg[7] ),
        .I1(\ctrl_reg[7]_1 ),
        .I2(reg_file_reg_0_15_0_0_i_5_n_0),
        .I3(\ctrl_reg[7]_2 ),
        .I4(reg_file_reg_0_15_0_0_i_7_n_0),
        .I5(reg_file_reg_0_15_7_7_i_6_n_0),
        .O(reg_file_reg_0_15_7_7_i_2_n_0));
  CARRY4 reg_file_reg_0_15_7_7_i_3
       (.CI(reg_file_reg_0_15_0_0_i_3_n_0),
        .CO({reg_file_reg_0_15_7_7_i_3_n_0,reg_file_reg_0_15_7_7_i_3_n_1,reg_file_reg_0_15_7_7_i_3_n_2,reg_file_reg_0_15_7_7_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\op_b_ff_reg[7] ,reg_file_reg_0_15_7_7_i_3_n_5,reg_file_reg_0_15_7_7_i_3_n_6,reg_file_reg_0_15_7_7_i_3_n_7}),
        .S({reg_file_reg_0_15_7_7_i_7_n_0,reg_file_reg_0_15_4_4_i_5_0}));
  LUT6 #(
    .INIT(64'h8888AAAACFC0AAAA)) 
    reg_file_reg_0_15_7_7_i_6
       (.I0(reg_file_reg_0_15_7_7_i_11_n_0),
        .I1(\op_b_ff_reg[7] ),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I4(\ctrl_reg[19]_0 [7]),
        .I5(\ctrl_reg[19]_0 [6]),
        .O(reg_file_reg_0_15_7_7_i_6_n_0));
  LUT6 #(
    .INIT(64'hFBBF04400440FBBF)) 
    reg_file_reg_0_15_7_7_i_7
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I5(Q[7]),
        .O(reg_file_reg_0_15_7_7_i_7_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_8_8_i_1
       (.I0(reg_file_reg_0_15_8_8_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[8]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[8]));
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_8_8_i_2
       (.I0(reg_file_reg_0_15_8_8_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_8_8_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_8_8_i_2_n_0));
  LUT6 #(
    .INIT(64'hAF637303AC607000)) 
    reg_file_reg_0_15_8_8_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [6]),
        .I2(\ctrl_reg[19]_0 [7]),
        .I3(Q[8]),
        .I4(reg_file_reg_0_15_7_7_i_11_0[8]),
        .I5(O[0]),
        .O(reg_file_reg_0_15_8_8_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_8_8_i_4
       (.I0(reg_file_reg_0_15_8_8_i_6_n_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[8]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(O[0]),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_8_8_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFFFAFFEEAAFAAA)) 
    reg_file_reg_0_15_8_8_i_6
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[0]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[9]),
        .O(reg_file_reg_0_15_8_8_i_6_n_0));
  LUT4 #(
    .INIT(16'h00E2)) 
    reg_file_reg_0_15_9_9_i_1
       (.I0(reg_file_reg_0_15_9_9_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[9]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(in_data[9]));
  LUT4 #(
    .INIT(16'h00B8)) 
    reg_file_reg_0_15_9_9_i_2
       (.I0(reg_file_reg_0_15_9_9_i_3_n_0),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(reg_file_reg_0_15_9_9_i_4_n_0),
        .I3(\ctrl_reg[19]_0 [9]),
        .O(reg_file_reg_0_15_9_9_i_2_n_0));
  LUT6 #(
    .INIT(64'hBBB84B484F4C0300)) 
    reg_file_reg_0_15_9_9_i_3
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(O[1]),
        .I4(Q[9]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[9]),
        .O(reg_file_reg_0_15_9_9_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA80008AAAAAAAA)) 
    reg_file_reg_0_15_9_9_i_4
       (.I0(reg_file_reg_0_15_9_9_i_5_n_0),
        .I1(reg_file_reg_0_15_7_7_i_11_0[9]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(O[1]),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(reg_file_reg_0_15_9_9_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFFFAFFEEAAFAAA)) 
    reg_file_reg_0_15_9_9_i_5
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(reg_file_reg_0_15_7_7_i_11_0[7]),
        .I2(reg_file_reg_0_15_7_7_i_11_0[1]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[10]),
        .O(reg_file_reg_0_15_9_9_i_5_n_0));
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sam[0]_i_1 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(\op_b_ff_reg[4]_0 ),
        .I3(\FSM_sequential_state[4]_i_4_n_0 ),
        .I4(sam[0]),
        .O(\sam[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \sam[1]_i_1 
       (.I0(state[4]),
        .I1(\FSM_sequential_state_reg[3]_0 [1]),
        .I2(\sam_reg[1]_0 ),
        .I3(\FSM_sequential_state[4]_i_4_n_0 ),
        .I4(sam[1]),
        .O(\sam[1]_i_1_n_0 ));
  FDRE \sam_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\sam[0]_i_1_n_0 ),
        .Q(sam[0]),
        .R(1'b0));
  FDRE \sam_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\sam[1]_i_1_n_0 ),
        .Q(sam[1]),
        .R(1'b0));
  FDRE \src_reg[0] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\src_reg[3]_0 [0]),
        .Q(src[0]),
        .R(1'b0));
  FDRE \src_reg[1] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\src_reg[3]_0 [1]),
        .Q(src[1]),
        .R(1'b0));
  FDRE \src_reg[2] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\src_reg[3]_0 [2]),
        .Q(src[2]),
        .R(1'b0));
  FDRE \src_reg[3] 
       (.C(clk_i),
        .CE(\am_reg[0]_0 ),
        .D(\src_reg[3]_0 [3]),
        .Q(src[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8BBBBBB)) 
    \sreg[0]_i_1 
       (.I0(in_data[0]),
        .I1(\sreg[8]_i_3_n_0 ),
        .I2(\sreg[0]_i_2_n_0 ),
        .I3(\sreg[1]_i_2_n_0 ),
        .I4(\sreg[0]_i_3_n_0 ),
        .I5(\sreg[0]_i_4_n_0 ),
        .O(\ctrl_reg[1]_3 [0]));
  LUT6 #(
    .INIT(64'h0082038B00820088)) 
    \sreg[0]_i_2 
       (.I0(sreg[0]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [8]),
        .I3(\ctrl_reg[19]_0 [6]),
        .I4(\ctrl_reg[19]_0 [5]),
        .I5(reg_file_reg_0_15_7_7_i_11_0[0]),
        .O(\sreg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hC0CD)) 
    \sreg[0]_i_3 
       (.I0(\ctrl_reg[19]_0 [5]),
        .I1(\ctrl_reg[19]_0 [6]),
        .I2(\ctrl_reg[19]_0 [8]),
        .I3(\ctrl_reg[19]_0 [7]),
        .O(\sreg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAABABF)) 
    \sreg[0]_i_4 
       (.I0(\sreg[0]_i_5_n_0 ),
        .I1(CO),
        .I2(\ctrl_reg[19]_0 [9]),
        .I3(\sreg_reg[0] ),
        .I4(\sreg[0]_i_3_n_0 ),
        .O(\sreg[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h019D)) 
    \sreg[0]_i_5 
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [5]),
        .I3(\ctrl_reg[19]_0 [6]),
        .O(\sreg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \sreg[14]_i_1 
       (.I0(\ctrl_reg[19]_0 [0]),
        .I1(\ctrl_reg[19]_0 [4]),
        .I2(\ctrl_reg[19]_0 [2]),
        .I3(\ctrl_reg[19]_0 [1]),
        .I4(\ctrl_reg[19]_0 [3]),
        .I5(\sreg[14]_i_2_n_0 ),
        .O(\ctrl_reg[1]_3 [4]));
  LUT4 #(
    .INIT(16'h001D)) 
    \sreg[14]_i_2 
       (.I0(reg_file_reg_0_15_14_14_i_2_n_0),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(addr_add[14]),
        .I3(\ctrl_reg_n_0_[11] ),
        .O(\sreg[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \sreg[1]_i_1 
       (.I0(in_data[1]),
        .I1(\sreg[8]_i_3_n_0 ),
        .I2(\irq_buf_reg[1]_1 [0]),
        .I3(\sreg[8]_i_5_n_0 ),
        .I4(\sreg[1]_i_2_n_0 ),
        .O(\ctrl_reg[1]_3 [1]));
  LUT4 #(
    .INIT(16'h0001)) 
    \sreg[1]_i_2 
       (.I0(\sreg[1]_i_3_n_0 ),
        .I1(\sreg[1]_i_4_n_0 ),
        .I2(\sreg[1]_i_5_n_0 ),
        .I3(\sreg[1]_i_6_n_0 ),
        .O(\sreg[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sreg[1]_i_3 
       (.I0(reg_file_reg_0_15_7_7_i_2_n_0),
        .I1(reg_file_reg_0_15_9_9_i_2_n_0),
        .I2(reg_file_reg_0_15_1_1_i_2_n_0),
        .I3(reg_file_reg_0_15_11_11_i_2_n_0),
        .O(\sreg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sreg[1]_i_4 
       (.I0(reg_file_reg_0_15_15_15_i_2_n_0),
        .I1(reg_file_reg_0_15_10_10_i_2_n_0),
        .I2(reg_file_reg_0_15_3_3_i_2_n_0),
        .I3(reg_file_reg_0_15_12_12_i_2_n_0),
        .O(\sreg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sreg[1]_i_5 
       (.I0(reg_file_reg_0_15_0_0_i_2_n_0),
        .I1(reg_file_reg_0_15_13_13_i_2_n_0),
        .I2(reg_file_reg_0_15_5_5_i_2_n_0),
        .I3(reg_file_reg_0_15_14_14_i_2_n_0),
        .O(\sreg[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sreg[1]_i_6 
       (.I0(reg_file_reg_0_15_4_4_i_2_n_0),
        .I1(reg_file_reg_0_15_8_8_i_2_n_0),
        .I2(reg_file_reg_0_15_2_2_i_2_n_0),
        .I3(reg_file_reg_0_15_6_6_i_2_n_0),
        .O(\sreg[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB8BBB8BBB888)) 
    \sreg[2]_i_1 
       (.I0(in_data[2]),
        .I1(\sreg[8]_i_3_n_0 ),
        .I2(sreg[1]),
        .I3(\sreg[8]_i_5_n_0 ),
        .I4(\sreg[2]_i_2_n_0 ),
        .I5(reg_file_reg_0_15_15_15_i_2_n_0),
        .O(\ctrl_reg[1]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sreg[2]_i_2 
       (.I0(reg_file_reg_0_15_7_7_i_2_n_0),
        .I1(\ctrl_reg[19]_0 [9]),
        .O(\sreg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \sreg[8]_i_1 
       (.I0(\ctrl_reg_n_0_[7] ),
        .I1(\ctrl_reg[19]_0 [0]),
        .I2(\ctrl_reg[19]_0 [4]),
        .I3(\ctrl_reg[19]_0 [2]),
        .I4(\ctrl_reg[19]_0 [1]),
        .I5(\ctrl_reg[19]_0 [3]),
        .O(\ctrl_reg[7]_0 ));
  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \sreg[8]_i_2 
       (.I0(in_data[8]),
        .I1(\sreg[8]_i_3_n_0 ),
        .I2(\sreg[8]_i_4_n_0 ),
        .I3(\sreg[8]_i_5_n_0 ),
        .I4(sreg[3]),
        .O(\ctrl_reg[1]_3 [3]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \sreg[8]_i_3 
       (.I0(\ctrl_reg[19]_0 [3]),
        .I1(\ctrl_reg[19]_0 [1]),
        .I2(\ctrl_reg[19]_0 [2]),
        .I3(\ctrl_reg[19]_0 [4]),
        .I4(\ctrl_reg[19]_0 [0]),
        .O(\sreg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0ACA0A0000C0A0A0)) 
    \sreg[8]_i_4 
       (.I0(\sreg_reg[8] ),
        .I1(\sreg_reg[8]_0 ),
        .I2(\ctrl_reg[19]_0 [8]),
        .I3(\ctrl_reg[19]_0 [5]),
        .I4(\ctrl_reg[19]_0 [6]),
        .I5(\ctrl_reg[19]_0 [7]),
        .O(\sreg[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h090A)) 
    \sreg[8]_i_5 
       (.I0(\ctrl_reg[19]_0 [7]),
        .I1(\ctrl_reg[19]_0 [8]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(\ctrl_reg[19]_0 [5]),
        .O(\sreg[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \sreg[8]_i_8 
       (.I0(\ctrl_reg[19]_0 [8]),
        .I1(\ctrl_reg[19]_0 [7]),
        .I2(\ctrl_reg[19]_0 [6]),
        .I3(\ctrl_reg[19]_0 [5]),
        .O(op_a_v1));
  CARRY4 \sreg_reg[0]_i_6 
       (.CI(reg_file_reg_0_15_7_7_i_3_n_0),
        .CO({\NLW_sreg_reg[0]_i_6_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sreg_reg[0]_i_6_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \thres[15]_i_1 
       (.I0(\ctrl[14]_i_2_n_0 ),
        .I1(\ctrl_reg[25]_2 ),
        .I2(\ctrl[14]_i_3_n_0 ),
        .I3(\mem_addr_reg_reg[1] ),
        .I4(imem_file_ram_l_reg_0_i_19_n_0),
        .O(\ctrl_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \tuning_word[0][15]_i_1 
       (.I0(imem_file_ram_l_reg_0_i_19_n_0),
        .I1(\mem_addr_reg_reg[1] ),
        .I2(\ctrl[11]_i_2_n_0 ),
        .O(\mem_addr_reg_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \uart_rx_avail[1]_i_3 
       (.I0(dmem_file_l_reg_i_4_n_0),
        .I1(dmem_file_l_reg_i_6_n_0),
        .I2(dmem_file_l_reg_i_3_n_0),
        .I3(\ctrl[14]_i_4_n_0 ),
        .I4(\cpu_bus[rd_en] ),
        .O(\ctrl_reg[28]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \uart_rx_avail[1]_i_4 
       (.I0(\ctrl[14]_i_3_n_0 ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_2 ),
        .O(\ctrl_reg[25]_3 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    uart_tx_busy_i_2
       (.I0(\ctrl[14]_i_3_n_0 ),
        .I1(imem_file_ram_l_reg_0_i_19_n_0),
        .I2(\ctrl_reg[25]_2 ),
        .I3(\ctrl[14]_i_2_n_0 ),
        .I4(\uart_tx_sreg_reg[7] [2]),
        .I5(\mem_addr_reg_reg[1] ),
        .O(uart_tx_busy0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[1]_i_1 
       (.I0(reg_file_reg_0_15_8_8_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_0_0_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [0]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[0]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[2]_i_1 
       (.I0(reg_file_reg_0_15_9_9_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_1_1_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [1]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[1]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[3]_i_1 
       (.I0(reg_file_reg_0_15_10_10_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_2_2_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [2]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[4]_i_1 
       (.I0(reg_file_reg_0_15_11_11_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_3_3_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [3]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[3]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[5]_i_1 
       (.I0(reg_file_reg_0_15_12_12_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_4_4_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [4]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[4]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[6]_i_1 
       (.I0(reg_file_reg_0_15_13_13_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_5_5_i_2_n_0),
        .I3(\uart_tx_sreg_reg[6] [5]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[5]));
  LUT6 #(
    .INIT(64'hFF00020000000200)) 
    \uart_tx_sreg[7]_i_1 
       (.I0(\ctrl_reg[25]_3 ),
        .I1(\ctrl[14]_i_2_n_0 ),
        .I2(\mem_addr_reg_reg[1] ),
        .I3(\uart_tx_sreg_reg[7] [2]),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .I5(\uart_tx_sreg_reg[7]_1 ),
        .O(\ctrl_reg[12]_1 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \uart_tx_sreg[7]_i_2 
       (.I0(reg_file_reg_0_15_14_14_i_2_n_0),
        .I1(\uart_tx_sreg_reg[1] ),
        .I2(reg_file_reg_0_15_6_6_i_2_n_0),
        .I3(\uart_tx_sreg_reg[7]_0 ),
        .I4(\uart_tx_sreg_reg[1]_0 ),
        .O(dio_swap_reg[6]));
endmodule

(* ORIG_REF_NAME = "neo430_cpu" *) 
module SystemTop_neo430_cpu
   (dio_swap,
    \ctrl_reg[12] ,
    \mem_addr_reg_reg[1] ,
    \ctrl_reg[9] ,
    \ctrl_reg[8] ,
    D,
    \cpu_bus[addr] ,
    \ctrl_reg[25] ,
    \ctrl_reg[28] ,
    \mem_addr_reg_reg[11] ,
    \FSM_sequential_state_reg[3] ,
    E,
    dio_swap_reg_0,
    \mem_addr_reg_reg[2] ,
    \mem_addr_reg_reg[2]_0 ,
    \din_reg[15] ,
    \pwm_ch_reg[1][7] ,
    \mem_addr_reg_reg[2]_1 ,
    \mem_addr_reg_reg[2]_2 ,
    \mem_addr_reg_reg[2]_3 ,
    cnt_reg_15_sp_1,
    cnt_reg_14_sp_1,
    cnt_reg_13_sp_1,
    cnt_reg_12_sp_1,
    cnt_reg_11_sp_1,
    cnt_reg_10_sp_1,
    cnt_reg_9_sp_1,
    cnt_reg_8_sp_1,
    cnt_reg_7_sp_1,
    \ctrl_reg[6] ,
    \ctrl_reg[5] ,
    \ctrl_reg[4] ,
    \ctrl_reg[3] ,
    \ctrl_reg[2] ,
    \ctrl_reg[1] ,
    \ctrl_reg[0] ,
    \mem_addr_reg_reg[1]_0 ,
    \mem_addr_reg_reg[1]_1 ,
    \ctrl_reg[27] ,
    \ctrl_reg[27]_0 ,
    \ctrl_reg[27]_1 ,
    \ctrl_reg[28]_0 ,
    \mem_addr_reg_reg[15] ,
    \mem_addr_reg_reg[11]_0 ,
    \ctrl_reg[28]_1 ,
    dio_swap_reg_1,
    \irq_buf_reg[1] ,
    \ctrl_reg[12]_0 ,
    \ctrl_reg[25]_0 ,
    uart_tx_busy0,
    \ctrl_reg[28]_2 ,
    SR,
    \ctrl_reg[28]_3 ,
    \ctrl_reg[25]_1 ,
    acc_en,
    acc_en_0,
    WEA,
    \cpu_bus[wr_en] ,
    \sreg_reg[15] ,
    \rst_gen_reg[3] ,
    clk_i,
    \op_b_ff_reg[1] ,
    Q,
    mem_addr_reg0_carry,
    \op_b_ff_reg[5] ,
    \op_b_ff_reg[6] ,
    \mem_addr_reg_reg[7] ,
    \op_b_ff_reg[9] ,
    \op_b_ff_reg[7] ,
    \op_b_ff_reg[12] ,
    mem_addr_reg0_carry__2,
    \am_reg[3] ,
    \ctrl_reg[17] ,
    \uart_tx_sreg_reg[6] ,
    \uart_tx_sreg_reg[1] ,
    \uart_tx_sreg_reg[7] ,
    \data_o_reg[15] ,
    \data_o_reg[15]_0 ,
    p_1_in,
    \data_o_reg[15]_1 ,
    \data_o_reg[7] ,
    cnt_reg,
    \data_o_reg[6] ,
    \op_b_ff_reg[15] ,
    mem_data_i,
    \ctrl_reg[17]_0 ,
    \op_b_ff_reg[4] ,
    \sam_reg[1] ,
    \op_b_ff_reg[14] ,
    \op_b_ff_reg[4]_0 ,
    \op_b_ff_reg[3] ,
    \mem_addr_reg_reg[11]_1 ,
    i__carry__1_i_5,
    i__carry__1_i_5_0,
    \op_b_ff_reg[0] ,
    \op_b_ff_reg[0]_0 ,
    \FSM_sequential_state_reg[0] ,
    \uart_tx_sreg_reg[7]_0 ,
    \op_b_ff_reg[2] ,
    \op_b_ff_reg[8] ,
    \op_b_ff_reg[10] ,
    \op_b_ff_reg[11] ,
    \op_b_ff_reg[13] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[3]_0 ,
    \FSM_sequential_state_reg[3]_1 ,
    \FSM_sequential_state_reg[3]_2 ,
    \FSM_sequential_state_reg[4] ,
    \ctrl_reg[17]_1 ,
    \ctrl_reg[15] ,
    \ctrl_reg[16] ,
    \irq_buf_reg[1]_0 ,
    irq_fire_ff,
    p_2_in3_in,
    irq_o,
    \sreg_reg[0] ,
    \am_reg[0] ,
    \src_reg[3] ,
    \am_reg[2] );
  output dio_swap;
  output \ctrl_reg[12] ;
  output \mem_addr_reg_reg[1] ;
  output \ctrl_reg[9] ;
  output \ctrl_reg[8] ;
  output [10:0]D;
  output [13:0]\cpu_bus[addr] ;
  output \ctrl_reg[25] ;
  output \ctrl_reg[28] ;
  output \mem_addr_reg_reg[11] ;
  output [1:0]\FSM_sequential_state_reg[3] ;
  output [0:0]E;
  output [6:0]dio_swap_reg_0;
  output [0:0]\mem_addr_reg_reg[2] ;
  output [0:0]\mem_addr_reg_reg[2]_0 ;
  output [15:0]\din_reg[15] ;
  output [15:0]\pwm_ch_reg[1][7] ;
  output [0:0]\mem_addr_reg_reg[2]_1 ;
  output \mem_addr_reg_reg[2]_2 ;
  output [0:0]\mem_addr_reg_reg[2]_3 ;
  output cnt_reg_15_sp_1;
  output cnt_reg_14_sp_1;
  output cnt_reg_13_sp_1;
  output cnt_reg_12_sp_1;
  output cnt_reg_11_sp_1;
  output cnt_reg_10_sp_1;
  output cnt_reg_9_sp_1;
  output cnt_reg_8_sp_1;
  output cnt_reg_7_sp_1;
  output \ctrl_reg[6] ;
  output \ctrl_reg[5] ;
  output \ctrl_reg[4] ;
  output \ctrl_reg[3] ;
  output \ctrl_reg[2] ;
  output \ctrl_reg[1] ;
  output \ctrl_reg[0] ;
  output [0:0]\mem_addr_reg_reg[1]_0 ;
  output [0:0]\mem_addr_reg_reg[1]_1 ;
  output [0:0]\ctrl_reg[27] ;
  output [0:0]\ctrl_reg[27]_0 ;
  output [0:0]\ctrl_reg[27]_1 ;
  output \ctrl_reg[28]_0 ;
  output \mem_addr_reg_reg[15] ;
  output \mem_addr_reg_reg[11]_0 ;
  output \ctrl_reg[28]_1 ;
  output [15:0]dio_swap_reg_1;
  output [0:0]\irq_buf_reg[1] ;
  output [0:0]\ctrl_reg[12]_0 ;
  output \ctrl_reg[25]_0 ;
  output uart_tx_busy0;
  output \ctrl_reg[28]_2 ;
  output [0:0]SR;
  output [0:0]\ctrl_reg[28]_3 ;
  output [0:0]\ctrl_reg[25]_1 ;
  output acc_en;
  output acc_en_0;
  output [0:0]WEA;
  output [1:0]\cpu_bus[wr_en] ;
  output [0:0]\sreg_reg[15] ;
  output \rst_gen_reg[3] ;
  input clk_i;
  input \op_b_ff_reg[1] ;
  input [2:0]Q;
  input mem_addr_reg0_carry;
  input \op_b_ff_reg[5] ;
  input \op_b_ff_reg[6] ;
  input \mem_addr_reg_reg[7] ;
  input \op_b_ff_reg[9] ;
  input \op_b_ff_reg[7] ;
  input \op_b_ff_reg[12] ;
  input mem_addr_reg0_carry__2;
  input \am_reg[3] ;
  input \ctrl_reg[17] ;
  input [5:0]\uart_tx_sreg_reg[6] ;
  input \uart_tx_sreg_reg[1] ;
  input \uart_tx_sreg_reg[7] ;
  input [15:0]\data_o_reg[15] ;
  input [15:0]\data_o_reg[15]_0 ;
  input [15:0]p_1_in;
  input [7:0]\data_o_reg[15]_1 ;
  input [7:0]\data_o_reg[7] ;
  input [15:0]cnt_reg;
  input [6:0]\data_o_reg[6] ;
  input \op_b_ff_reg[15] ;
  input [15:0]mem_data_i;
  input \ctrl_reg[17]_0 ;
  input \op_b_ff_reg[4] ;
  input \sam_reg[1] ;
  input \op_b_ff_reg[14] ;
  input \op_b_ff_reg[4]_0 ;
  input \op_b_ff_reg[3] ;
  input \mem_addr_reg_reg[11]_1 ;
  input i__carry__1_i_5;
  input i__carry__1_i_5_0;
  input \op_b_ff_reg[0] ;
  input \op_b_ff_reg[0]_0 ;
  input \FSM_sequential_state_reg[0] ;
  input \uart_tx_sreg_reg[7]_0 ;
  input \op_b_ff_reg[2] ;
  input \op_b_ff_reg[8] ;
  input \op_b_ff_reg[10] ;
  input \op_b_ff_reg[11] ;
  input \op_b_ff_reg[13] ;
  input \FSM_sequential_state_reg[1] ;
  input \FSM_sequential_state_reg[3]_0 ;
  input \FSM_sequential_state_reg[3]_1 ;
  input \FSM_sequential_state_reg[3]_2 ;
  input \FSM_sequential_state_reg[4] ;
  input \ctrl_reg[17]_1 ;
  input \ctrl_reg[15] ;
  input \ctrl_reg[16] ;
  input \irq_buf_reg[1]_0 ;
  input irq_fire_ff;
  input p_2_in3_in;
  input irq_o;
  input [0:0]\sreg_reg[0] ;
  input [0:0]\am_reg[0] ;
  input [3:0]\src_reg[3] ;
  input [2:0]\am_reg[2] ;

  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire [1:0]\FSM_sequential_state_reg[3] ;
  wire \FSM_sequential_state_reg[3]_0 ;
  wire \FSM_sequential_state_reg[3]_1 ;
  wire \FSM_sequential_state_reg[3]_2 ;
  wire \FSM_sequential_state_reg[4] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire acc_en;
  wire acc_en_0;
  wire [15:0]addr_add;
  wire [0:0]\am_reg[0] ;
  wire [2:0]\am_reg[2] ;
  wire \am_reg[3] ;
  wire bw_ff;
  wire clk_i;
  wire [15:0]cnt_reg;
  wire cnt_reg_10_sn_1;
  wire cnt_reg_11_sn_1;
  wire cnt_reg_12_sn_1;
  wire cnt_reg_13_sn_1;
  wire cnt_reg_14_sn_1;
  wire cnt_reg_15_sn_1;
  wire cnt_reg_7_sn_1;
  wire cnt_reg_8_sn_1;
  wire cnt_reg_9_sn_1;
  wire [13:0]\cpu_bus[addr] ;
  wire [1:0]\cpu_bus[wr_en] ;
  wire [19:1]ctrl_bus;
  wire \ctrl_reg[0] ;
  wire \ctrl_reg[12] ;
  wire [0:0]\ctrl_reg[12]_0 ;
  wire \ctrl_reg[15] ;
  wire \ctrl_reg[16] ;
  wire \ctrl_reg[17] ;
  wire \ctrl_reg[17]_0 ;
  wire \ctrl_reg[17]_1 ;
  wire \ctrl_reg[1] ;
  wire \ctrl_reg[25] ;
  wire \ctrl_reg[25]_0 ;
  wire [0:0]\ctrl_reg[25]_1 ;
  wire [0:0]\ctrl_reg[27] ;
  wire [0:0]\ctrl_reg[27]_0 ;
  wire [0:0]\ctrl_reg[27]_1 ;
  wire \ctrl_reg[28] ;
  wire \ctrl_reg[28]_0 ;
  wire \ctrl_reg[28]_1 ;
  wire \ctrl_reg[28]_2 ;
  wire [0:0]\ctrl_reg[28]_3 ;
  wire \ctrl_reg[2] ;
  wire \ctrl_reg[3] ;
  wire \ctrl_reg[4] ;
  wire \ctrl_reg[5] ;
  wire \ctrl_reg[6] ;
  wire \ctrl_reg[8] ;
  wire \ctrl_reg[9] ;
  wire data1;
  wire [15:0]data_o0;
  wire [15:0]\data_o_reg[15] ;
  wire [15:0]\data_o_reg[15]_0 ;
  wire [7:0]\data_o_reg[15]_1 ;
  wire [6:0]\data_o_reg[6] ;
  wire [7:0]\data_o_reg[7] ;
  wire [15:0]\din_reg[15] ;
  wire dio_swap;
  wire dio_swap0;
  wire [6:0]dio_swap_reg_0;
  wire [15:0]dio_swap_reg_1;
  wire i__carry__1_i_5;
  wire i__carry__1_i_5_0;
  wire imem_up_en;
  wire [15:0]in_data;
  wire [0:0]\irq_buf_reg[1] ;
  wire \irq_buf_reg[1]_0 ;
  wire irq_fire_ff;
  wire irq_o;
  wire [15:0]mem_addr_reg;
  wire mem_addr_reg0_carry;
  wire mem_addr_reg0_carry__2;
  wire \mem_addr_reg_reg[11] ;
  wire \mem_addr_reg_reg[11]_0 ;
  wire \mem_addr_reg_reg[11]_1 ;
  wire \mem_addr_reg_reg[15] ;
  wire \mem_addr_reg_reg[1] ;
  wire [0:0]\mem_addr_reg_reg[1]_0 ;
  wire [0:0]\mem_addr_reg_reg[1]_1 ;
  wire [0:0]\mem_addr_reg_reg[2] ;
  wire [0:0]\mem_addr_reg_reg[2]_0 ;
  wire [0:0]\mem_addr_reg_reg[2]_1 ;
  wire \mem_addr_reg_reg[2]_2 ;
  wire [0:0]\mem_addr_reg_reg[2]_3 ;
  wire \mem_addr_reg_reg[7] ;
  wire [15:0]mem_data_i;
  wire neo430_alu_inst_n_0;
  wire neo430_alu_inst_n_1;
  wire neo430_alu_inst_n_13;
  wire neo430_alu_inst_n_14;
  wire neo430_alu_inst_n_15;
  wire neo430_alu_inst_n_16;
  wire neo430_alu_inst_n_17;
  wire neo430_alu_inst_n_18;
  wire neo430_alu_inst_n_19;
  wire neo430_alu_inst_n_2;
  wire neo430_alu_inst_n_21;
  wire neo430_alu_inst_n_22;
  wire neo430_alu_inst_n_23;
  wire neo430_alu_inst_n_25;
  wire neo430_alu_inst_n_26;
  wire neo430_alu_inst_n_27;
  wire neo430_alu_inst_n_28;
  wire neo430_alu_inst_n_29;
  wire neo430_alu_inst_n_3;
  wire neo430_alu_inst_n_30;
  wire neo430_alu_inst_n_31;
  wire neo430_alu_inst_n_32;
  wire neo430_alu_inst_n_33;
  wire neo430_alu_inst_n_35;
  wire neo430_alu_inst_n_36;
  wire neo430_alu_inst_n_37;
  wire neo430_alu_inst_n_38;
  wire neo430_alu_inst_n_39;
  wire neo430_alu_inst_n_40;
  wire neo430_alu_inst_n_41;
  wire neo430_alu_inst_n_42;
  wire neo430_alu_inst_n_43;
  wire neo430_alu_inst_n_44;
  wire neo430_alu_inst_n_45;
  wire neo430_alu_inst_n_46;
  wire neo430_alu_inst_n_47;
  wire neo430_alu_inst_n_48;
  wire neo430_alu_inst_n_49;
  wire neo430_alu_inst_n_50;
  wire neo430_alu_inst_n_51;
  wire neo430_alu_inst_n_52;
  wire neo430_alu_inst_n_53;
  wire neo430_alu_inst_n_54;
  wire neo430_alu_inst_n_55;
  wire neo430_alu_inst_n_56;
  wire neo430_alu_inst_n_57;
  wire neo430_alu_inst_n_58;
  wire neo430_alu_inst_n_59;
  wire neo430_alu_inst_n_60;
  wire neo430_alu_inst_n_61;
  wire neo430_control_inst_n_10;
  wire neo430_control_inst_n_11;
  wire neo430_control_inst_n_12;
  wire neo430_control_inst_n_13;
  wire neo430_control_inst_n_14;
  wire neo430_control_inst_n_15;
  wire neo430_control_inst_n_16;
  wire neo430_control_inst_n_17;
  wire neo430_control_inst_n_177;
  wire neo430_control_inst_n_18;
  wire neo430_control_inst_n_217;
  wire neo430_control_inst_n_38;
  wire neo430_control_inst_n_39;
  wire neo430_control_inst_n_40;
  wire neo430_control_inst_n_41;
  wire neo430_control_inst_n_42;
  wire neo430_control_inst_n_43;
  wire neo430_control_inst_n_44;
  wire neo430_control_inst_n_45;
  wire neo430_control_inst_n_46;
  wire neo430_control_inst_n_47;
  wire neo430_control_inst_n_48;
  wire neo430_control_inst_n_49;
  wire neo430_control_inst_n_50;
  wire neo430_control_inst_n_51;
  wire neo430_control_inst_n_52;
  wire neo430_control_inst_n_53;
  wire neo430_control_inst_n_54;
  wire neo430_control_inst_n_55;
  wire neo430_control_inst_n_56;
  wire neo430_control_inst_n_58;
  wire neo430_control_inst_n_59;
  wire neo430_control_inst_n_60;
  wire neo430_control_inst_n_61;
  wire neo430_control_inst_n_62;
  wire neo430_control_inst_n_63;
  wire neo430_control_inst_n_64;
  wire neo430_control_inst_n_65;
  wire neo430_control_inst_n_66;
  wire neo430_control_inst_n_67;
  wire neo430_control_inst_n_68;
  wire neo430_control_inst_n_69;
  wire neo430_control_inst_n_70;
  wire neo430_control_inst_n_71;
  wire neo430_control_inst_n_72;
  wire neo430_reg_file_inst_n_26;
  wire neo430_reg_file_inst_n_3;
  wire neo430_reg_file_inst_n_4;
  wire op_a_v1;
  wire \op_b_ff_reg[0] ;
  wire \op_b_ff_reg[0]_0 ;
  wire \op_b_ff_reg[10] ;
  wire \op_b_ff_reg[11] ;
  wire \op_b_ff_reg[12] ;
  wire \op_b_ff_reg[13] ;
  wire \op_b_ff_reg[14] ;
  wire \op_b_ff_reg[15] ;
  wire \op_b_ff_reg[1] ;
  wire \op_b_ff_reg[2] ;
  wire \op_b_ff_reg[3] ;
  wire \op_b_ff_reg[4] ;
  wire \op_b_ff_reg[4]_0 ;
  wire \op_b_ff_reg[5] ;
  wire \op_b_ff_reg[6] ;
  wire \op_b_ff_reg[7] ;
  wire \op_b_ff_reg[8] ;
  wire \op_b_ff_reg[9] ;
  wire [15:0]op_data;
  wire [7:0]p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in3_in;
  wire [15:0]p_1_in;
  wire p_1_in1_in;
  wire p_2_in3_in;
  wire p_3_in;
  wire [15:0]\pwm_ch_reg[1][7] ;
  wire [14:0]reg_i;
  wire \rst_gen_reg[3] ;
  wire \sam_reg[1] ;
  wire [3:0]\src_reg[3] ;
  wire [8:0]sreg;
  wire [14:0]sreg__0;
  wire [0:0]\sreg_reg[0] ;
  wire [0:0]\sreg_reg[15] ;
  wire uart_tx_busy0;
  wire \uart_tx_sreg_reg[1] ;
  wire [5:0]\uart_tx_sreg_reg[6] ;
  wire \uart_tx_sreg_reg[7] ;
  wire \uart_tx_sreg_reg[7]_0 ;

  assign cnt_reg_10_sp_1 = cnt_reg_10_sn_1;
  assign cnt_reg_11_sp_1 = cnt_reg_11_sn_1;
  assign cnt_reg_12_sp_1 = cnt_reg_12_sn_1;
  assign cnt_reg_13_sp_1 = cnt_reg_13_sn_1;
  assign cnt_reg_14_sp_1 = cnt_reg_14_sn_1;
  assign cnt_reg_15_sp_1 = cnt_reg_15_sn_1;
  assign cnt_reg_7_sp_1 = cnt_reg_7_sn_1;
  assign cnt_reg_8_sp_1 = cnt_reg_8_sn_1;
  assign cnt_reg_9_sp_1 = cnt_reg_9_sn_1;
  FDRE bw_ff_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(ctrl_bus[19]),
        .Q(bw_ff),
        .R(1'b0));
  FDRE dio_swap_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(dio_swap0),
        .Q(dio_swap),
        .R(1'b0));
  SystemTop_neo430_addr_gen neo430_addr_gen_inst
       (.DI({neo430_control_inst_n_55,neo430_control_inst_n_56}),
        .Q(mem_addr_reg),
        .S({neo430_control_inst_n_11,neo430_control_inst_n_12,neo430_control_inst_n_13,neo430_control_inst_n_14}),
        .addr_add(addr_add),
        .clk_i(clk_i),
        .\mem_addr_reg_reg[0]_0 (neo430_control_inst_n_58),
        .\mem_addr_reg_reg[11]_0 ({neo430_control_inst_n_51,neo430_control_inst_n_52,neo430_control_inst_n_53,neo430_control_inst_n_54}),
        .\mem_addr_reg_reg[15]_0 ({neo430_control_inst_n_71,neo430_control_inst_n_72}),
        .\mem_addr_reg_reg[15]_1 ({neo430_control_inst_n_67,neo430_control_inst_n_68,neo430_control_inst_n_69,neo430_control_inst_n_70}),
        .\mem_addr_reg_reg[3]_0 ({neo430_control_inst_n_15,neo430_control_inst_n_16,neo430_control_inst_n_17,neo430_control_inst_n_18}),
        .\mem_addr_reg_reg[7]_0 ({neo430_control_inst_n_42,neo430_control_inst_n_43,neo430_control_inst_n_44,neo430_control_inst_n_45}),
        .reg_file_reg_0_15_12_12_i_1({neo430_control_inst_n_63,neo430_control_inst_n_64,neo430_control_inst_n_65,neo430_control_inst_n_66}),
        .reg_file_reg_0_15_4_4_i_1({neo430_control_inst_n_38,neo430_control_inst_n_39,neo430_control_inst_n_40,neo430_control_inst_n_41}),
        .reg_file_reg_0_15_8_8_i_1({neo430_control_inst_n_47,neo430_control_inst_n_48,neo430_control_inst_n_49,neo430_control_inst_n_50}),
        .reg_i(reg_i));
  SystemTop_neo430_alu neo430_alu_inst
       (.CO(neo430_control_inst_n_177),
        .D(op_data),
        .O({neo430_alu_inst_n_0,neo430_alu_inst_n_1,neo430_alu_inst_n_2,neo430_alu_inst_n_3}),
        .Q({p_0_in,p_0_in0_in,neo430_alu_inst_n_13,neo430_alu_inst_n_14,neo430_alu_inst_n_15,neo430_alu_inst_n_16,neo430_alu_inst_n_17,neo430_alu_inst_n_18,neo430_alu_inst_n_19}),
        .S(neo430_control_inst_n_10),
        .clk_i(clk_i),
        .ctrl_bus(ctrl_bus[19]),
        .\ctrl_reg[18] ({neo430_alu_inst_n_55,neo430_alu_inst_n_56,neo430_alu_inst_n_57,neo430_alu_inst_n_58}),
        .\ctrl_reg[18]_0 ({neo430_alu_inst_n_59,neo430_alu_inst_n_60,neo430_alu_inst_n_61}),
        .\op_a_ff_reg[0]_0 (neo430_alu_inst_n_53),
        .\op_a_ff_reg[11]_0 (neo430_alu_inst_n_47),
        .\op_a_ff_reg[13]_0 (neo430_alu_inst_n_49),
        .\op_a_ff_reg[15]_0 ({neo430_alu_inst_n_26,neo430_alu_inst_n_27,neo430_alu_inst_n_28,neo430_alu_inst_n_29,neo430_alu_inst_n_30,neo430_alu_inst_n_31,neo430_alu_inst_n_32,neo430_alu_inst_n_33,p_1_in1_in,neo430_alu_inst_n_35,neo430_alu_inst_n_36,neo430_alu_inst_n_37,neo430_alu_inst_n_38,neo430_alu_inst_n_39,neo430_alu_inst_n_40,neo430_alu_inst_n_41}),
        .\op_a_ff_reg[1]_0 (neo430_alu_inst_n_52),
        .\op_a_ff_reg[1]_1 (neo430_alu_inst_n_54),
        .\op_a_ff_reg[2]_0 (neo430_alu_inst_n_46),
        .\op_a_ff_reg[4]_0 (neo430_alu_inst_n_48),
        .\op_a_ff_reg[6]_0 (neo430_alu_inst_n_50),
        .\op_a_ff_reg[7]_0 (neo430_alu_inst_n_25),
        .\op_a_ff_reg[7]_1 (neo430_alu_inst_n_43),
        .\op_a_ff_reg[7]_2 (neo430_alu_inst_n_44),
        .\op_a_ff_reg[7]_3 (neo430_alu_inst_n_51),
        .\op_a_ff_reg[9]_0 (neo430_alu_inst_n_45),
        .op_a_v1(op_a_v1),
        .\op_b_ff_reg[11]_0 (neo430_alu_inst_n_42),
        .\op_b_ff_reg[15]_0 ({p_0_in3_in,neo430_alu_inst_n_21,neo430_alu_inst_n_22,neo430_alu_inst_n_23}),
        .\op_b_ff_reg[15]_1 (p_3_in),
        .reg_file_reg_0_15_0_0_i_3(sreg[0]),
        .reg_file_reg_0_15_12_12_i_5_0({ctrl_bus[18:15],neo430_control_inst_n_60,neo430_control_inst_n_61}),
        .\sreg[8]_i_4 (p_0_in10_in));
  SystemTop_neo430_control neo430_control_inst
       (.CO(neo430_control_inst_n_177),
        .D(D),
        .DI({neo430_control_inst_n_55,neo430_control_inst_n_56}),
        .E(E),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_1 (neo430_reg_file_inst_n_26),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[3]_0 (\FSM_sequential_state_reg[3] ),
        .\FSM_sequential_state_reg[3]_1 (\FSM_sequential_state_reg[3]_0 ),
        .\FSM_sequential_state_reg[3]_2 (\FSM_sequential_state_reg[3]_1 ),
        .\FSM_sequential_state_reg[3]_3 (\FSM_sequential_state_reg[3]_2 ),
        .\FSM_sequential_state_reg[4]_0 (\FSM_sequential_state_reg[4] ),
        .\FSM_sequential_state_reg[4]_1 (\rst_gen_reg[3] ),
        .O({neo430_alu_inst_n_0,neo430_alu_inst_n_1,neo430_alu_inst_n_2,neo430_alu_inst_n_3}),
        .Q({p_0_in,p_0_in0_in,neo430_alu_inst_n_13,neo430_alu_inst_n_14,neo430_alu_inst_n_15,neo430_alu_inst_n_16,neo430_alu_inst_n_17,neo430_alu_inst_n_18,neo430_alu_inst_n_19}),
        .S(neo430_control_inst_n_10),
        .SR(SR),
        .acc_en(acc_en),
        .acc_en_0(acc_en_0),
        .addr_add(addr_add),
        .\am_reg[0]_0 (\am_reg[0] ),
        .\am_reg[3]_0 ({\am_reg[3] ,\am_reg[2] }),
        .bw_ff(bw_ff),
        .clk_i(clk_i),
        .cnt_reg(cnt_reg),
        .cnt_reg_10_sp_1(cnt_reg_10_sn_1),
        .cnt_reg_11_sp_1(cnt_reg_11_sn_1),
        .cnt_reg_12_sp_1(cnt_reg_12_sn_1),
        .cnt_reg_13_sp_1(cnt_reg_13_sn_1),
        .cnt_reg_14_sp_1(cnt_reg_14_sn_1),
        .cnt_reg_15_sp_1(cnt_reg_15_sn_1),
        .cnt_reg_7_sp_1(cnt_reg_7_sn_1),
        .cnt_reg_8_sp_1(cnt_reg_8_sn_1),
        .cnt_reg_9_sp_1(cnt_reg_9_sn_1),
        .\cpu_bus[addr] ({\cpu_bus[addr] [13:4],\cpu_bus[addr] [1:0]}),
        .\cpu_bus[wr_en] (\cpu_bus[wr_en] ),
        .\ctrl_reg[0]_0 (\ctrl_reg[0] ),
        .\ctrl_reg[12]_0 (\ctrl_reg[12] ),
        .\ctrl_reg[12]_1 (\ctrl_reg[12]_0 ),
        .\ctrl_reg[15]_0 (\ctrl_reg[15] ),
        .\ctrl_reg[16]_0 (\ctrl_reg[16] ),
        .\ctrl_reg[17]_0 (\ctrl_reg[17] ),
        .\ctrl_reg[17]_1 (\ctrl_reg[17]_0 ),
        .\ctrl_reg[17]_2 (\ctrl_reg[17]_1 ),
        .\ctrl_reg[19]_0 ({ctrl_bus[19:15],ctrl_bus[8],ctrl_bus[4:1]}),
        .\ctrl_reg[1]_0 ({neo430_control_inst_n_47,neo430_control_inst_n_48,neo430_control_inst_n_49,neo430_control_inst_n_50}),
        .\ctrl_reg[1]_1 ({neo430_control_inst_n_51,neo430_control_inst_n_52,neo430_control_inst_n_53,neo430_control_inst_n_54}),
        .\ctrl_reg[1]_2 (\ctrl_reg[1] ),
        .\ctrl_reg[1]_3 ({sreg__0[14],sreg__0[8],sreg__0[2:0]}),
        .\ctrl_reg[21]_0 ({neo430_control_inst_n_11,neo430_control_inst_n_12,neo430_control_inst_n_13,neo430_control_inst_n_14}),
        .\ctrl_reg[21]_1 ({neo430_control_inst_n_38,neo430_control_inst_n_39,neo430_control_inst_n_40,neo430_control_inst_n_41}),
        .\ctrl_reg[22]_0 ({neo430_control_inst_n_63,neo430_control_inst_n_64,neo430_control_inst_n_65,neo430_control_inst_n_66}),
        .\ctrl_reg[22]_1 ({neo430_control_inst_n_71,neo430_control_inst_n_72}),
        .\ctrl_reg[23]_0 ({neo430_control_inst_n_15,neo430_control_inst_n_16,neo430_control_inst_n_17,neo430_control_inst_n_18}),
        .\ctrl_reg[23]_1 ({neo430_control_inst_n_42,neo430_control_inst_n_43,neo430_control_inst_n_44,neo430_control_inst_n_45}),
        .\ctrl_reg[23]_2 ({neo430_control_inst_n_67,neo430_control_inst_n_68,neo430_control_inst_n_69,neo430_control_inst_n_70}),
        .\ctrl_reg[25]_0 (\cpu_bus[addr] [2]),
        .\ctrl_reg[25]_1 (\ctrl_reg[25] ),
        .\ctrl_reg[25]_2 (\cpu_bus[addr] [3]),
        .\ctrl_reg[25]_3 (\ctrl_reg[25]_0 ),
        .\ctrl_reg[25]_4 (\ctrl_reg[25]_1 ),
        .\ctrl_reg[26]_0 ({neo430_control_inst_n_58,neo430_control_inst_n_59,neo430_control_inst_n_60,neo430_control_inst_n_61,neo430_control_inst_n_62}),
        .\ctrl_reg[27]_0 (\ctrl_reg[27] ),
        .\ctrl_reg[27]_1 (\ctrl_reg[27]_0 ),
        .\ctrl_reg[27]_2 (\ctrl_reg[27]_1 ),
        .\ctrl_reg[28]_0 (\ctrl_reg[28] ),
        .\ctrl_reg[28]_1 (\ctrl_reg[28]_0 ),
        .\ctrl_reg[28]_2 (\ctrl_reg[28]_1 ),
        .\ctrl_reg[28]_3 (\ctrl_reg[28]_2 ),
        .\ctrl_reg[28]_4 (\ctrl_reg[28]_3 ),
        .\ctrl_reg[2]_0 (\ctrl_reg[2] ),
        .\ctrl_reg[3]_0 (neo430_control_inst_n_46),
        .\ctrl_reg[3]_1 (\ctrl_reg[3] ),
        .\ctrl_reg[4]_0 (\ctrl_reg[4] ),
        .\ctrl_reg[5]_0 (\ctrl_reg[5] ),
        .\ctrl_reg[6]_0 (\ctrl_reg[6] ),
        .\ctrl_reg[7]_0 (neo430_control_inst_n_217),
        .\ctrl_reg[7]_1 (neo430_alu_inst_n_51),
        .\ctrl_reg[7]_2 (neo430_alu_inst_n_25),
        .\ctrl_reg[8]_0 (\ctrl_reg[8] ),
        .\ctrl_reg[8]_1 (neo430_reg_file_inst_n_3),
        .\ctrl_reg[9]_0 (\ctrl_reg[9] ),
        .data_o0(data_o0),
        .\data_o_reg[15] (\data_o_reg[15] ),
        .\data_o_reg[15]_0 (\data_o_reg[15]_0 ),
        .\data_o_reg[15]_1 (\data_o_reg[15]_1 ),
        .\data_o_reg[6] (\data_o_reg[6] ),
        .\data_o_reg[7] (\data_o_reg[7] ),
        .\din_reg[15] (\din_reg[15] ),
        .dio_swap0(dio_swap0),
        .dio_swap_reg(dio_swap_reg_0),
        .dio_swap_reg_0(op_data),
        .dio_swap_reg_1(dio_swap_reg_1),
        .i__carry__1_i_5_0(i__carry__1_i_5),
        .i__carry__1_i_5_1(i__carry__1_i_5_0),
        .imem_file_ram_l_reg_3(mem_addr_reg),
        .imem_up_en(imem_up_en),
        .in_data(in_data),
        .\irq_buf_reg[1]_0 (\irq_buf_reg[1] ),
        .\irq_buf_reg[1]_1 ({neo430_reg_file_inst_n_4,data1}),
        .\irq_buf_reg[1]_2 (\irq_buf_reg[1]_0 ),
        .irq_fire_ff(irq_fire_ff),
        .irq_o(irq_o),
        .mem_addr_reg0_carry(mem_addr_reg0_carry),
        .mem_addr_reg0_carry__2(mem_addr_reg0_carry__2),
        .\mem_addr_reg_reg[11] (\mem_addr_reg_reg[11] ),
        .\mem_addr_reg_reg[11]_0 (\mem_addr_reg_reg[11]_0 ),
        .\mem_addr_reg_reg[11]_1 (\mem_addr_reg_reg[11]_1 ),
        .\mem_addr_reg_reg[15] (\mem_addr_reg_reg[15] ),
        .\mem_addr_reg_reg[1] (\mem_addr_reg_reg[1] ),
        .\mem_addr_reg_reg[1]_0 (\mem_addr_reg_reg[1]_0 ),
        .\mem_addr_reg_reg[1]_1 (\mem_addr_reg_reg[1]_1 ),
        .\mem_addr_reg_reg[2] (\mem_addr_reg_reg[2] ),
        .\mem_addr_reg_reg[2]_0 (\mem_addr_reg_reg[2]_0 ),
        .\mem_addr_reg_reg[2]_1 (\mem_addr_reg_reg[2]_1 ),
        .\mem_addr_reg_reg[2]_2 (\mem_addr_reg_reg[2]_2 ),
        .\mem_addr_reg_reg[2]_3 (\mem_addr_reg_reg[2]_3 ),
        .\mem_addr_reg_reg[7] (\mem_addr_reg_reg[7] ),
        .mem_data_i(mem_data_i),
        .op_a_v1(op_a_v1),
        .\op_b_ff_reg[0] (\op_b_ff_reg[0] ),
        .\op_b_ff_reg[0]_0 (\op_b_ff_reg[0]_0 ),
        .\op_b_ff_reg[10] (\op_b_ff_reg[10] ),
        .\op_b_ff_reg[11] (\op_b_ff_reg[11] ),
        .\op_b_ff_reg[12] (\op_b_ff_reg[12] ),
        .\op_b_ff_reg[13] (\op_b_ff_reg[13] ),
        .\op_b_ff_reg[14] (\op_b_ff_reg[14] ),
        .\op_b_ff_reg[15] (\op_b_ff_reg[15] ),
        .\op_b_ff_reg[1] (\op_b_ff_reg[1] ),
        .\op_b_ff_reg[2] (\op_b_ff_reg[2] ),
        .\op_b_ff_reg[3] (\op_b_ff_reg[3] ),
        .\op_b_ff_reg[4] (\op_b_ff_reg[4] ),
        .\op_b_ff_reg[4]_0 (\op_b_ff_reg[4]_0 ),
        .\op_b_ff_reg[5] (\op_b_ff_reg[5] ),
        .\op_b_ff_reg[6] (\op_b_ff_reg[6] ),
        .\op_b_ff_reg[7] (p_0_in10_in),
        .\op_b_ff_reg[7]_0 (\op_b_ff_reg[7] ),
        .\op_b_ff_reg[8] (\op_b_ff_reg[8] ),
        .\op_b_ff_reg[9] (\op_b_ff_reg[9] ),
        .p_1_in(p_1_in),
        .p_2_in3_in(p_2_in3_in),
        .\pwm_ch_reg[1][7] (\pwm_ch_reg[1][7] ),
        .reg_file_reg_0_15_0_0_i_2_0({neo430_alu_inst_n_55,neo430_alu_inst_n_56,neo430_alu_inst_n_57,neo430_alu_inst_n_58}),
        .reg_file_reg_0_15_0_0_i_2_1(neo430_alu_inst_n_54),
        .reg_file_reg_0_15_15_15_i_2_0({p_0_in3_in,neo430_alu_inst_n_21,neo430_alu_inst_n_22,neo430_alu_inst_n_23}),
        .reg_file_reg_0_15_1_1_i_2_0(neo430_alu_inst_n_45),
        .reg_file_reg_0_15_2_2_i_2_0(neo430_alu_inst_n_46),
        .reg_file_reg_0_15_3_3_i_2_0(neo430_alu_inst_n_47),
        .reg_file_reg_0_15_4_4_i_2_0(neo430_alu_inst_n_48),
        .reg_file_reg_0_15_4_4_i_5_0({neo430_alu_inst_n_59,neo430_alu_inst_n_60,neo430_alu_inst_n_61}),
        .reg_file_reg_0_15_5_5_i_2_0(neo430_alu_inst_n_49),
        .reg_file_reg_0_15_6_6_i_2_0(neo430_alu_inst_n_50),
        .reg_file_reg_0_15_7_7_i_11_0({neo430_alu_inst_n_26,neo430_alu_inst_n_27,neo430_alu_inst_n_28,neo430_alu_inst_n_29,neo430_alu_inst_n_30,neo430_alu_inst_n_31,neo430_alu_inst_n_32,neo430_alu_inst_n_33,p_1_in1_in,neo430_alu_inst_n_35,neo430_alu_inst_n_36,neo430_alu_inst_n_37,neo430_alu_inst_n_38,neo430_alu_inst_n_39,neo430_alu_inst_n_40,neo430_alu_inst_n_41}),
        .reg_i(reg_i),
        .\sam_reg[1]_0 (\sam_reg[1] ),
        .\src_reg[3]_0 (\src_reg[3] ),
        .sreg({sreg[8],sreg[3:2],sreg[0]}),
        .\sreg_reg[0] (p_3_in),
        .\sreg_reg[8] (neo430_alu_inst_n_43),
        .\sreg_reg[8]_0 (neo430_alu_inst_n_44),
        .uart_tx_busy0(uart_tx_busy0),
        .\uart_tx_sreg_reg[1] (dio_swap),
        .\uart_tx_sreg_reg[1]_0 (\uart_tx_sreg_reg[1] ),
        .\uart_tx_sreg_reg[1]_1 (neo430_alu_inst_n_53),
        .\uart_tx_sreg_reg[2] (neo430_alu_inst_n_52),
        .\uart_tx_sreg_reg[4] (neo430_alu_inst_n_42),
        .\uart_tx_sreg_reg[6] (\uart_tx_sreg_reg[6] ),
        .\uart_tx_sreg_reg[7] (Q),
        .\uart_tx_sreg_reg[7]_0 (\uart_tx_sreg_reg[7] ),
        .\uart_tx_sreg_reg[7]_1 (\uart_tx_sreg_reg[7]_0 ));
  SystemTop_neo430_reg_file neo430_reg_file_inst
       (.D({sreg__0[14],sreg__0[8],sreg__0[2:0]}),
        .E(neo430_control_inst_n_217),
        .Q({neo430_reg_file_inst_n_4,sreg[8],sreg[2],data1,sreg[0]}),
        .WEA(WEA),
        .clk_i(clk_i),
        .\cpu_bus[wr_en] (\cpu_bus[wr_en] ),
        .\ctrl_reg[8] (\op_b_ff_reg[4] ),
        .data_o0(data_o0),
        .imem_up_en(imem_up_en),
        .in_data(in_data),
        .mem_data_i(mem_data_i[11:10]),
        .\rst_gen_reg[3] (\rst_gen_reg[3] ),
        .sreg(sreg[3]),
        .\sreg_reg[0]_0 (\sreg_reg[0] ),
        .\sreg_reg[15]_0 (\sreg_reg[15] ),
        .\sreg_reg[3]_0 ({neo430_control_inst_n_59,neo430_control_inst_n_62}),
        .\sreg_reg[4]_0 (neo430_reg_file_inst_n_26),
        .\sreg_reg[4]_1 ({ctrl_bus[8],ctrl_bus[4:1]}),
        .\sreg_reg[4]_2 (neo430_control_inst_n_46),
        .\sreg_reg[8]_0 (neo430_reg_file_inst_n_3));
endmodule

(* ORIG_REF_NAME = "neo430_dmem" *) 
module SystemTop_neo430_dmem
   (DOADO,
    rden,
    \data_o_reg[13] ,
    dmem_file_h_reg_0,
    dmem_file_l_reg_0,
    mem_data_i,
    dmem_file_h_reg_1,
    dmem_file_h_reg_2,
    dmem_file_l_reg_1,
    dmem_file_l_reg_2,
    dmem_file_l_reg_3,
    dmem_file_l_reg_4,
    dmem_file_l_reg_5,
    dmem_file_l_reg_6,
    dmem_file_l_reg_7,
    clk_i,
    acc_en,
    \cpu_bus[addr] ,
    dmem_file_h_reg_3,
    \cpu_bus[wr_en] ,
    rden_reg_0,
    \am_reg[0] ,
    \am_reg[0]_0 ,
    E,
    \am_reg[0]_1 ,
    freq_gen_rdata,
    Q,
    \ir_reg[11] ,
    \ir_reg[11]_0 ,
    \ir_reg[11]_1 ,
    \ir_reg[10] ,
    \ir_reg[10]_0 ,
    timer_rdata);
  output [3:0]DOADO;
  output rden;
  output [0:0]\data_o_reg[13] ;
  output dmem_file_h_reg_0;
  output dmem_file_l_reg_0;
  output [1:0]mem_data_i;
  output dmem_file_h_reg_1;
  output dmem_file_h_reg_2;
  output dmem_file_l_reg_1;
  output dmem_file_l_reg_2;
  output dmem_file_l_reg_3;
  output dmem_file_l_reg_4;
  output dmem_file_l_reg_5;
  output dmem_file_l_reg_6;
  output dmem_file_l_reg_7;
  input clk_i;
  input acc_en;
  input [9:0]\cpu_bus[addr] ;
  input [15:0]dmem_file_h_reg_3;
  input [1:0]\cpu_bus[wr_en] ;
  input rden_reg_0;
  input \am_reg[0] ;
  input \am_reg[0]_0 ;
  input [0:0]E;
  input \am_reg[0]_1 ;
  input [11:0]freq_gen_rdata;
  input [0:0]Q;
  input \ir_reg[11] ;
  input [8:0]\ir_reg[11]_0 ;
  input \ir_reg[11]_1 ;
  input \ir_reg[10] ;
  input \ir_reg[10]_0 ;
  input [1:0]timer_rdata;

  wire [3:0]DOADO;
  wire [0:0]E;
  wire [0:0]Q;
  wire acc_en;
  wire \am_reg[0] ;
  wire \am_reg[0]_0 ;
  wire \am_reg[0]_1 ;
  wire clk_i;
  wire [9:0]\cpu_bus[addr] ;
  wire [1:0]\cpu_bus[wr_en] ;
  wire [0:0]\data_o_reg[13] ;
  wire dmem_file_h_reg_0;
  wire dmem_file_h_reg_1;
  wire dmem_file_h_reg_2;
  wire [15:0]dmem_file_h_reg_3;
  wire dmem_file_l_reg_0;
  wire dmem_file_l_reg_1;
  wire dmem_file_l_reg_2;
  wire dmem_file_l_reg_3;
  wire dmem_file_l_reg_4;
  wire dmem_file_l_reg_5;
  wire dmem_file_l_reg_6;
  wire dmem_file_l_reg_7;
  wire [11:0]freq_gen_rdata;
  wire \ir_reg[10] ;
  wire \ir_reg[10]_0 ;
  wire \ir_reg[11] ;
  wire [8:0]\ir_reg[11]_0 ;
  wire \ir_reg[11]_1 ;
  wire [1:0]mem_data_i;
  wire [11:0]rdata_reg;
  wire rden;
  wire rden_reg_0;
  wire [1:0]timer_rdata;
  wire [15:8]NLW_dmem_file_h_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dmem_file_h_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dmem_file_h_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dmem_file_h_reg_DOPBDOP_UNCONNECTED;
  wire [15:8]NLW_dmem_file_l_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_dmem_file_l_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_dmem_file_l_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_dmem_file_l_reg_DOPBDOP_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFF8)) 
    \am[0]_i_4 
       (.I0(rdata_reg[7]),
        .I1(rden),
        .I2(freq_gen_rdata[7]),
        .I3(Q),
        .O(dmem_file_l_reg_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/neo430_dmem_inst/dmem_file_h" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dmem_file_h_reg
       (.ADDRARDADDR({\cpu_bus[addr] ,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dmem_file_h_reg_3[15:8]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dmem_file_h_reg_DOADO_UNCONNECTED[15:8],DOADO,rdata_reg[11:8]}),
        .DOBDO(NLW_dmem_file_h_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dmem_file_h_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dmem_file_h_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\cpu_bus[wr_en] [1],\cpu_bus[wr_en] [1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "U0/neo430_dmem_inst/dmem_file_l" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    dmem_file_l_reg
       (.ADDRARDADDR({\cpu_bus[addr] ,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dmem_file_h_reg_3[7:0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_dmem_file_l_reg_DOADO_UNCONNECTED[15:8],rdata_reg[7:0]}),
        .DOBDO(NLW_dmem_file_l_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_dmem_file_l_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_dmem_file_l_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({\cpu_bus[wr_en] [0],\cpu_bus[wr_en] [0]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFFFFFF)) 
    \ir[10]_i_1 
       (.I0(\ir_reg[10] ),
        .I1(rdata_reg[10]),
        .I2(rden),
        .I3(\ir_reg[11]_0 [7]),
        .I4(freq_gen_rdata[10]),
        .I5(\ir_reg[10]_0 ),
        .O(mem_data_i[0]));
  LUT6 #(
    .INIT(64'hFFFFFFEAFFFFFFFF)) 
    \ir[11]_i_1 
       (.I0(\ir_reg[11] ),
        .I1(rdata_reg[11]),
        .I2(rden),
        .I3(\ir_reg[11]_0 [8]),
        .I4(freq_gen_rdata[11]),
        .I5(\ir_reg[11]_1 ),
        .O(mem_data_i[1]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \ir[6]_i_4 
       (.I0(rdata_reg[6]),
        .I1(rden),
        .I2(freq_gen_rdata[6]),
        .I3(timer_rdata[0]),
        .O(dmem_file_l_reg_1));
  FDRE rden_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(rden_reg_0),
        .Q(rden),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \sam[0]_i_4 
       (.I0(rdata_reg[4]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [4]),
        .I3(freq_gen_rdata[4]),
        .O(dmem_file_l_reg_3));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \sam[1]_i_4 
       (.I0(rdata_reg[5]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [5]),
        .I3(freq_gen_rdata[5]),
        .O(dmem_file_l_reg_2));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[0]_i_5 
       (.I0(rdata_reg[0]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [0]),
        .I3(freq_gen_rdata[0]),
        .O(dmem_file_l_reg_7));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[0]_i_7 
       (.I0(rdata_reg[8]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [6]),
        .I3(freq_gen_rdata[8]),
        .O(dmem_file_h_reg_2));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[1]_i_5 
       (.I0(rdata_reg[1]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [1]),
        .I3(freq_gen_rdata[1]),
        .O(dmem_file_l_reg_6));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[1]_i_7 
       (.I0(rdata_reg[9]),
        .I1(rden),
        .I2(freq_gen_rdata[9]),
        .I3(timer_rdata[1]),
        .O(dmem_file_h_reg_1));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[2]_i_4 
       (.I0(rdata_reg[2]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [2]),
        .I3(freq_gen_rdata[2]),
        .O(dmem_file_l_reg_5));
  LUT5 #(
    .INIT(32'hFF000400)) 
    \src[3]_i_1 
       (.I0(dmem_file_h_reg_0),
        .I1(\am_reg[0] ),
        .I2(\am_reg[0]_0 ),
        .I3(E),
        .I4(\am_reg[0]_1 ),
        .O(\data_o_reg[13] ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \src[3]_i_11 
       (.I0(rdata_reg[3]),
        .I1(rden),
        .I2(\ir_reg[11]_0 [3]),
        .I3(freq_gen_rdata[3]),
        .O(dmem_file_l_reg_4));
  LUT2 #(
    .INIT(4'hE)) 
    \src[3]_i_3 
       (.I0(mem_data_i[1]),
        .I1(mem_data_i[0]),
        .O(dmem_file_h_reg_0));
endmodule

(* ORIG_REF_NAME = "neo430_freq_gen" *) 
module SystemTop_neo430_freq_gen
   (freq_gen_cg_en,
    freq_gen_o,
    freq_gen_rdata,
    clk_i,
    \nco_prsc_tick_reg[0]_0 ,
    \nco_prsc_tick_reg[0]_1 ,
    \nco_prsc_tick_reg[0]_2 ,
    \nco_prsc_tick_reg[0]_3 ,
    \nco_prsc_tick_reg[0]_4 ,
    \nco_prsc_tick_reg[0]_5 ,
    \nco_prsc_tick_reg[0]_6 ,
    \nco_prsc_tick_reg[0]_7 ,
    E,
    D,
    \data_o_reg[11]_0 ,
    \tuning_word_reg[0][15]_0 );
  output freq_gen_cg_en;
  output [0:0]freq_gen_o;
  output [11:0]freq_gen_rdata;
  input clk_i;
  input \nco_prsc_tick_reg[0]_0 ;
  input \nco_prsc_tick_reg[0]_1 ;
  input \nco_prsc_tick_reg[0]_2 ;
  input \nco_prsc_tick_reg[0]_3 ;
  input \nco_prsc_tick_reg[0]_4 ;
  input \nco_prsc_tick_reg[0]_5 ;
  input \nco_prsc_tick_reg[0]_6 ;
  input \nco_prsc_tick_reg[0]_7 ;
  input [0:0]E;
  input [15:0]D;
  input \data_o_reg[11]_0 ;
  input [0:0]\tuning_word_reg[0][15]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire clk_i;
  wire clkgen_en_o_i_1_n_0;
  wire \ctrl_reg_n_0_[0] ;
  wire \ctrl_reg_n_0_[10] ;
  wire \ctrl_reg_n_0_[11] ;
  wire \ctrl_reg_n_0_[3] ;
  wire \ctrl_reg_n_0_[4] ;
  wire \ctrl_reg_n_0_[5] ;
  wire \ctrl_reg_n_0_[6] ;
  wire \ctrl_reg_n_0_[7] ;
  wire \ctrl_reg_n_0_[8] ;
  wire \ctrl_reg_n_0_[9] ;
  wire \data_o_reg[11]_0 ;
  wire freq_gen_cg_en;
  wire [0:0]freq_gen_o;
  wire [11:0]freq_gen_rdata;
  wire [15:0]in;
  wire \nco_phase_accu[0][0]_i_1_n_0 ;
  wire \nco_phase_accu[0][0]_i_3_n_0 ;
  wire \nco_phase_accu[0][0]_i_4_n_0 ;
  wire \nco_phase_accu[0][0]_i_5_n_0 ;
  wire \nco_phase_accu[0][0]_i_6_n_0 ;
  wire \nco_phase_accu[0][12]_i_2_n_0 ;
  wire \nco_phase_accu[0][12]_i_3_n_0 ;
  wire \nco_phase_accu[0][12]_i_4_n_0 ;
  wire \nco_phase_accu[0][12]_i_5_n_0 ;
  wire \nco_phase_accu[0][4]_i_2_n_0 ;
  wire \nco_phase_accu[0][4]_i_3_n_0 ;
  wire \nco_phase_accu[0][4]_i_4_n_0 ;
  wire \nco_phase_accu[0][4]_i_5_n_0 ;
  wire \nco_phase_accu[0][8]_i_2_n_0 ;
  wire \nco_phase_accu[0][8]_i_3_n_0 ;
  wire \nco_phase_accu[0][8]_i_4_n_0 ;
  wire \nco_phase_accu[0][8]_i_5_n_0 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_0 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_1 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_2 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_3 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_4 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_5 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_6 ;
  wire \nco_phase_accu_reg[0][0]_i_2_n_7 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_0 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_1 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_2 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_3 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_4 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_5 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_6 ;
  wire \nco_phase_accu_reg[0][12]_i_1_n_7 ;
  wire \nco_phase_accu_reg[0][16]_i_1_n_7 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_0 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_1 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_2 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_3 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_4 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_5 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_6 ;
  wire \nco_phase_accu_reg[0][4]_i_1_n_7 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_0 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_1 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_2 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_3 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_4 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_5 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_6 ;
  wire \nco_phase_accu_reg[0][8]_i_1_n_7 ;
  wire [16:16]\nco_phase_accu_reg[0]_3 ;
  wire \nco_phase_accu_reg_n_0_[0][0] ;
  wire \nco_phase_accu_reg_n_0_[0][10] ;
  wire \nco_phase_accu_reg_n_0_[0][11] ;
  wire \nco_phase_accu_reg_n_0_[0][12] ;
  wire \nco_phase_accu_reg_n_0_[0][13] ;
  wire \nco_phase_accu_reg_n_0_[0][14] ;
  wire \nco_phase_accu_reg_n_0_[0][15] ;
  wire \nco_phase_accu_reg_n_0_[0][1] ;
  wire \nco_phase_accu_reg_n_0_[0][2] ;
  wire \nco_phase_accu_reg_n_0_[0][3] ;
  wire \nco_phase_accu_reg_n_0_[0][4] ;
  wire \nco_phase_accu_reg_n_0_[0][5] ;
  wire \nco_phase_accu_reg_n_0_[0][6] ;
  wire \nco_phase_accu_reg_n_0_[0][7] ;
  wire \nco_phase_accu_reg_n_0_[0][8] ;
  wire \nco_phase_accu_reg_n_0_[0][9] ;
  wire \nco_prsc_tick[0]_i_2_n_0 ;
  wire \nco_prsc_tick[0]_i_3_n_0 ;
  wire \nco_prsc_tick_reg[0]_0 ;
  wire \nco_prsc_tick_reg[0]_1 ;
  wire \nco_prsc_tick_reg[0]_2 ;
  wire \nco_prsc_tick_reg[0]_3 ;
  wire \nco_prsc_tick_reg[0]_4 ;
  wire \nco_prsc_tick_reg[0]_5 ;
  wire \nco_prsc_tick_reg[0]_6 ;
  wire \nco_prsc_tick_reg[0]_7 ;
  wire \nco_prsc_tick_reg_n_0_[0] ;
  wire p_0_in;
  wire [0:0]p_1_out;
  wire p_2_in;
  wire [0:0]\tuning_word_reg[0][15]_0 ;
  wire [3:0]\NLW_nco_phase_accu_reg[0][16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_nco_phase_accu_reg[0][16]_i_1_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hFE)) 
    clkgen_en_o_i_1
       (.I0(p_2_in),
        .I1(p_0_in),
        .I2(\ctrl_reg_n_0_[0] ),
        .O(clkgen_en_o_i_1_n_0));
  FDRE clkgen_en_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(clkgen_en_o_i_1_n_0),
        .Q(freq_gen_cg_en),
        .R(1'b0));
  FDRE \ctrl_reg[0] 
       (.C(clk_i),
        .CE(E),
        .D(D[0]),
        .Q(\ctrl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ctrl_reg[10] 
       (.C(clk_i),
        .CE(E),
        .D(D[10]),
        .Q(\ctrl_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \ctrl_reg[11] 
       (.C(clk_i),
        .CE(E),
        .D(D[11]),
        .Q(\ctrl_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \ctrl_reg[1] 
       (.C(clk_i),
        .CE(E),
        .D(D[1]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \ctrl_reg[2] 
       (.C(clk_i),
        .CE(E),
        .D(D[2]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \ctrl_reg[3] 
       (.C(clk_i),
        .CE(E),
        .D(D[3]),
        .Q(\ctrl_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ctrl_reg[4] 
       (.C(clk_i),
        .CE(E),
        .D(D[4]),
        .Q(\ctrl_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ctrl_reg[5] 
       (.C(clk_i),
        .CE(E),
        .D(D[5]),
        .Q(\ctrl_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ctrl_reg[6] 
       (.C(clk_i),
        .CE(E),
        .D(D[6]),
        .Q(\ctrl_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ctrl_reg[7] 
       (.C(clk_i),
        .CE(E),
        .D(D[7]),
        .Q(\ctrl_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ctrl_reg[8] 
       (.C(clk_i),
        .CE(E),
        .D(D[8]),
        .Q(\ctrl_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \ctrl_reg[9] 
       (.C(clk_i),
        .CE(E),
        .D(D[9]),
        .Q(\ctrl_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[0] ),
        .Q(freq_gen_rdata[0]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[10] ),
        .Q(freq_gen_rdata[10]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[11] ),
        .Q(freq_gen_rdata[11]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in),
        .Q(freq_gen_rdata[1]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_2_in),
        .Q(freq_gen_rdata[2]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[3] ),
        .Q(freq_gen_rdata[3]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[4] ),
        .Q(freq_gen_rdata[4]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[5] ),
        .Q(freq_gen_rdata[5]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[6] ),
        .Q(freq_gen_rdata[6]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[7] ),
        .Q(freq_gen_rdata[7]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[8] ),
        .Q(freq_gen_rdata[8]),
        .R(\data_o_reg[11]_0 ));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\ctrl_reg_n_0_[9] ),
        .Q(freq_gen_rdata[9]),
        .R(\data_o_reg[11]_0 ));
  FDRE \freq_gen_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\nco_phase_accu_reg[0]_3 ),
        .Q(freq_gen_o),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \nco_phase_accu[0][0]_i_1 
       (.I0(\ctrl_reg_n_0_[0] ),
        .O(\nco_phase_accu[0][0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][0]_i_3 
       (.I0(in[3]),
        .I1(\nco_phase_accu_reg_n_0_[0][3] ),
        .O(\nco_phase_accu[0][0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][0]_i_4 
       (.I0(in[2]),
        .I1(\nco_phase_accu_reg_n_0_[0][2] ),
        .O(\nco_phase_accu[0][0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][0]_i_5 
       (.I0(in[1]),
        .I1(\nco_phase_accu_reg_n_0_[0][1] ),
        .O(\nco_phase_accu[0][0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][0]_i_6 
       (.I0(in[0]),
        .I1(\nco_phase_accu_reg_n_0_[0][0] ),
        .O(\nco_phase_accu[0][0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][12]_i_2 
       (.I0(in[15]),
        .I1(\nco_phase_accu_reg_n_0_[0][15] ),
        .O(\nco_phase_accu[0][12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][12]_i_3 
       (.I0(in[14]),
        .I1(\nco_phase_accu_reg_n_0_[0][14] ),
        .O(\nco_phase_accu[0][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][12]_i_4 
       (.I0(in[13]),
        .I1(\nco_phase_accu_reg_n_0_[0][13] ),
        .O(\nco_phase_accu[0][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][12]_i_5 
       (.I0(in[12]),
        .I1(\nco_phase_accu_reg_n_0_[0][12] ),
        .O(\nco_phase_accu[0][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][4]_i_2 
       (.I0(in[7]),
        .I1(\nco_phase_accu_reg_n_0_[0][7] ),
        .O(\nco_phase_accu[0][4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][4]_i_3 
       (.I0(in[6]),
        .I1(\nco_phase_accu_reg_n_0_[0][6] ),
        .O(\nco_phase_accu[0][4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][4]_i_4 
       (.I0(in[5]),
        .I1(\nco_phase_accu_reg_n_0_[0][5] ),
        .O(\nco_phase_accu[0][4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][4]_i_5 
       (.I0(in[4]),
        .I1(\nco_phase_accu_reg_n_0_[0][4] ),
        .O(\nco_phase_accu[0][4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][8]_i_2 
       (.I0(in[11]),
        .I1(\nco_phase_accu_reg_n_0_[0][11] ),
        .O(\nco_phase_accu[0][8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][8]_i_3 
       (.I0(in[10]),
        .I1(\nco_phase_accu_reg_n_0_[0][10] ),
        .O(\nco_phase_accu[0][8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][8]_i_4 
       (.I0(in[9]),
        .I1(\nco_phase_accu_reg_n_0_[0][9] ),
        .O(\nco_phase_accu[0][8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \nco_phase_accu[0][8]_i_5 
       (.I0(in[8]),
        .I1(\nco_phase_accu_reg_n_0_[0][8] ),
        .O(\nco_phase_accu[0][8]_i_5_n_0 ));
  FDRE \nco_phase_accu_reg[0][0] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][0]_i_2_n_7 ),
        .Q(\nco_phase_accu_reg_n_0_[0][0] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nco_phase_accu_reg[0][0]_i_2 
       (.CI(1'b0),
        .CO({\nco_phase_accu_reg[0][0]_i_2_n_0 ,\nco_phase_accu_reg[0][0]_i_2_n_1 ,\nco_phase_accu_reg[0][0]_i_2_n_2 ,\nco_phase_accu_reg[0][0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\nco_phase_accu_reg[0][0]_i_2_n_4 ,\nco_phase_accu_reg[0][0]_i_2_n_5 ,\nco_phase_accu_reg[0][0]_i_2_n_6 ,\nco_phase_accu_reg[0][0]_i_2_n_7 }),
        .S({\nco_phase_accu[0][0]_i_3_n_0 ,\nco_phase_accu[0][0]_i_4_n_0 ,\nco_phase_accu[0][0]_i_5_n_0 ,\nco_phase_accu[0][0]_i_6_n_0 }));
  FDRE \nco_phase_accu_reg[0][10] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][8]_i_1_n_5 ),
        .Q(\nco_phase_accu_reg_n_0_[0][10] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][11] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][8]_i_1_n_4 ),
        .Q(\nco_phase_accu_reg_n_0_[0][11] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][12] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][12]_i_1_n_7 ),
        .Q(\nco_phase_accu_reg_n_0_[0][12] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nco_phase_accu_reg[0][12]_i_1 
       (.CI(\nco_phase_accu_reg[0][8]_i_1_n_0 ),
        .CO({\nco_phase_accu_reg[0][12]_i_1_n_0 ,\nco_phase_accu_reg[0][12]_i_1_n_1 ,\nco_phase_accu_reg[0][12]_i_1_n_2 ,\nco_phase_accu_reg[0][12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[15:12]),
        .O({\nco_phase_accu_reg[0][12]_i_1_n_4 ,\nco_phase_accu_reg[0][12]_i_1_n_5 ,\nco_phase_accu_reg[0][12]_i_1_n_6 ,\nco_phase_accu_reg[0][12]_i_1_n_7 }),
        .S({\nco_phase_accu[0][12]_i_2_n_0 ,\nco_phase_accu[0][12]_i_3_n_0 ,\nco_phase_accu[0][12]_i_4_n_0 ,\nco_phase_accu[0][12]_i_5_n_0 }));
  FDRE \nco_phase_accu_reg[0][13] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][12]_i_1_n_6 ),
        .Q(\nco_phase_accu_reg_n_0_[0][13] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][14] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][12]_i_1_n_5 ),
        .Q(\nco_phase_accu_reg_n_0_[0][14] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][15] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][12]_i_1_n_4 ),
        .Q(\nco_phase_accu_reg_n_0_[0][15] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][16] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][16]_i_1_n_7 ),
        .Q(\nco_phase_accu_reg[0]_3 ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nco_phase_accu_reg[0][16]_i_1 
       (.CI(\nco_phase_accu_reg[0][12]_i_1_n_0 ),
        .CO(\NLW_nco_phase_accu_reg[0][16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_nco_phase_accu_reg[0][16]_i_1_O_UNCONNECTED [3:1],\nco_phase_accu_reg[0][16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\nco_phase_accu_reg[0]_3 }));
  FDRE \nco_phase_accu_reg[0][1] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][0]_i_2_n_6 ),
        .Q(\nco_phase_accu_reg_n_0_[0][1] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][2] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][0]_i_2_n_5 ),
        .Q(\nco_phase_accu_reg_n_0_[0][2] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][3] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][0]_i_2_n_4 ),
        .Q(\nco_phase_accu_reg_n_0_[0][3] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][4] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][4]_i_1_n_7 ),
        .Q(\nco_phase_accu_reg_n_0_[0][4] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nco_phase_accu_reg[0][4]_i_1 
       (.CI(\nco_phase_accu_reg[0][0]_i_2_n_0 ),
        .CO({\nco_phase_accu_reg[0][4]_i_1_n_0 ,\nco_phase_accu_reg[0][4]_i_1_n_1 ,\nco_phase_accu_reg[0][4]_i_1_n_2 ,\nco_phase_accu_reg[0][4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\nco_phase_accu_reg[0][4]_i_1_n_4 ,\nco_phase_accu_reg[0][4]_i_1_n_5 ,\nco_phase_accu_reg[0][4]_i_1_n_6 ,\nco_phase_accu_reg[0][4]_i_1_n_7 }),
        .S({\nco_phase_accu[0][4]_i_2_n_0 ,\nco_phase_accu[0][4]_i_3_n_0 ,\nco_phase_accu[0][4]_i_4_n_0 ,\nco_phase_accu[0][4]_i_5_n_0 }));
  FDRE \nco_phase_accu_reg[0][5] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][4]_i_1_n_6 ),
        .Q(\nco_phase_accu_reg_n_0_[0][5] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][6] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][4]_i_1_n_5 ),
        .Q(\nco_phase_accu_reg_n_0_[0][6] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][7] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][4]_i_1_n_4 ),
        .Q(\nco_phase_accu_reg_n_0_[0][7] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  FDRE \nco_phase_accu_reg[0][8] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][8]_i_1_n_7 ),
        .Q(\nco_phase_accu_reg_n_0_[0][8] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nco_phase_accu_reg[0][8]_i_1 
       (.CI(\nco_phase_accu_reg[0][4]_i_1_n_0 ),
        .CO({\nco_phase_accu_reg[0][8]_i_1_n_0 ,\nco_phase_accu_reg[0][8]_i_1_n_1 ,\nco_phase_accu_reg[0][8]_i_1_n_2 ,\nco_phase_accu_reg[0][8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\nco_phase_accu_reg[0][8]_i_1_n_4 ,\nco_phase_accu_reg[0][8]_i_1_n_5 ,\nco_phase_accu_reg[0][8]_i_1_n_6 ,\nco_phase_accu_reg[0][8]_i_1_n_7 }),
        .S({\nco_phase_accu[0][8]_i_2_n_0 ,\nco_phase_accu[0][8]_i_3_n_0 ,\nco_phase_accu[0][8]_i_4_n_0 ,\nco_phase_accu[0][8]_i_5_n_0 }));
  FDRE \nco_phase_accu_reg[0][9] 
       (.C(clk_i),
        .CE(\nco_prsc_tick_reg_n_0_[0] ),
        .D(\nco_phase_accu_reg[0][8]_i_1_n_6 ),
        .Q(\nco_phase_accu_reg_n_0_[0][9] ),
        .R(\nco_phase_accu[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \nco_prsc_tick[0]_i_2 
       (.I0(\nco_prsc_tick_reg[0]_0 ),
        .I1(\nco_prsc_tick_reg[0]_1 ),
        .I2(\nco_prsc_tick_reg[0]_2 ),
        .I3(\ctrl_reg_n_0_[3] ),
        .I4(\nco_prsc_tick_reg[0]_3 ),
        .I5(\ctrl_reg_n_0_[4] ),
        .O(\nco_prsc_tick[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \nco_prsc_tick[0]_i_3 
       (.I0(\nco_prsc_tick_reg[0]_4 ),
        .I1(\nco_prsc_tick_reg[0]_5 ),
        .I2(\nco_prsc_tick_reg[0]_6 ),
        .I3(\ctrl_reg_n_0_[3] ),
        .I4(\nco_prsc_tick_reg[0]_7 ),
        .I5(\ctrl_reg_n_0_[4] ),
        .O(\nco_prsc_tick[0]_i_3_n_0 ));
  FDRE \nco_prsc_tick_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_1_out),
        .Q(\nco_prsc_tick_reg_n_0_[0] ),
        .R(1'b0));
  MUXF7 \nco_prsc_tick_reg[0]_i_1 
       (.I0(\nco_prsc_tick[0]_i_2_n_0 ),
        .I1(\nco_prsc_tick[0]_i_3_n_0 ),
        .O(p_1_out),
        .S(\ctrl_reg_n_0_[5] ));
  FDRE \tuning_word_reg[0][0] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[0]),
        .Q(in[0]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][10] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[10]),
        .Q(in[10]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][11] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[11]),
        .Q(in[11]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][12] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[12]),
        .Q(in[12]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][13] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[13]),
        .Q(in[13]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][14] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[14]),
        .Q(in[14]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][15] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[15]),
        .Q(in[15]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][1] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[1]),
        .Q(in[1]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][2] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[2]),
        .Q(in[2]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][3] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[3]),
        .Q(in[3]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][4] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[4]),
        .Q(in[4]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][5] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[5]),
        .Q(in[5]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][6] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[6]),
        .Q(in[6]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][7] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[7]),
        .Q(in[7]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][8] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[8]),
        .Q(in[8]),
        .R(1'b0));
  FDRE \tuning_word_reg[0][9] 
       (.C(clk_i),
        .CE(\tuning_word_reg[0][15]_0 ),
        .D(D[9]),
        .Q(in[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neo430_gpio" *) 
module SystemTop_neo430_gpio
   (irq_o,
    \data_o_reg[12]_0 ,
    \data_o_reg[12]_1 ,
    mem_data_i,
    Q,
    \data_o_reg[5]_0 ,
    \din_reg[15]_0 ,
    \dout_reg[15]_0 ,
    clk_i,
    \ctrl_reg[15] ,
    \ctrl_reg[15]_0 ,
    \ir_reg[12] ,
    timer_rdata,
    uart_rdata,
    \ir_reg[12]_0 ,
    \ir_reg[5] ,
    \ir_reg[5]_0 ,
    \ir_reg[5]_1 ,
    gpio_i,
    E,
    \dout_reg[15]_1 ,
    SR,
    D,
    \irq_mask_reg[15]_0 );
  output irq_o;
  output \data_o_reg[12]_0 ;
  output \data_o_reg[12]_1 ;
  output [1:0]mem_data_i;
  output [13:0]Q;
  output \data_o_reg[5]_0 ;
  output [15:0]\din_reg[15]_0 ;
  output [15:0]\dout_reg[15]_0 ;
  input clk_i;
  input \ctrl_reg[15] ;
  input \ctrl_reg[15]_0 ;
  input [0:0]\ir_reg[12] ;
  input [1:0]timer_rdata;
  input [1:0]uart_rdata;
  input \ir_reg[12]_0 ;
  input [0:0]\ir_reg[5] ;
  input \ir_reg[5]_0 ;
  input \ir_reg[5]_1 ;
  input [15:0]gpio_i;
  input [0:0]E;
  input [15:0]\dout_reg[15]_1 ;
  input [0:0]SR;
  input [15:0]D;
  input [0:0]\irq_mask_reg[15]_0 ;

  wire [15:0]D;
  wire [0:0]E;
  wire [13:0]Q;
  wire [0:0]SR;
  wire clk_i;
  wire \ctrl_reg[15] ;
  wire \ctrl_reg[15]_0 ;
  wire \data_o_reg[12]_0 ;
  wire \data_o_reg[12]_1 ;
  wire \data_o_reg[5]_0 ;
  wire [15:0]\din_reg[15]_0 ;
  wire [15:0]\dout_reg[15]_0 ;
  wire [15:0]\dout_reg[15]_1 ;
  wire [15:0]gpio_i;
  wire [12:5]gpio_rdata;
  wire [15:0]in_buf;
  wire [0:0]\ir_reg[12] ;
  wire \ir_reg[12]_0 ;
  wire [0:0]\ir_reg[5] ;
  wire \ir_reg[5]_0 ;
  wire \ir_reg[5]_1 ;
  wire [0:0]\irq_mask_reg[15]_0 ;
  wire \irq_mask_reg_n_0_[0] ;
  wire \irq_mask_reg_n_0_[10] ;
  wire \irq_mask_reg_n_0_[11] ;
  wire \irq_mask_reg_n_0_[12] ;
  wire \irq_mask_reg_n_0_[13] ;
  wire \irq_mask_reg_n_0_[14] ;
  wire \irq_mask_reg_n_0_[15] ;
  wire \irq_mask_reg_n_0_[1] ;
  wire \irq_mask_reg_n_0_[2] ;
  wire \irq_mask_reg_n_0_[3] ;
  wire \irq_mask_reg_n_0_[4] ;
  wire \irq_mask_reg_n_0_[5] ;
  wire \irq_mask_reg_n_0_[6] ;
  wire \irq_mask_reg_n_0_[7] ;
  wire \irq_mask_reg_n_0_[8] ;
  wire \irq_mask_reg_n_0_[9] ;
  wire irq_o;
  wire irq_o_i_10_n_0;
  wire irq_o_i_2_n_0;
  wire irq_o_i_3_n_0;
  wire irq_o_i_4_n_0;
  wire irq_o_i_5_n_0;
  wire irq_o_i_6_n_0;
  wire irq_o_i_7_n_0;
  wire irq_o_i_8_n_0;
  wire irq_o_i_9_n_0;
  wire [1:0]mem_data_i;
  wire or_all_f;
  wire [15:0]sync_in;
  wire [1:0]timer_rdata;
  wire [1:0]uart_rdata;

  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctrl[15]_i_3 
       (.I0(\data_o_reg[12]_1 ),
        .I1(\ctrl_reg[15] ),
        .I2(\ctrl_reg[15]_0 ),
        .O(\data_o_reg[12]_0 ));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[9]),
        .R(SR));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[10]),
        .R(SR));
  FDRE \data_o_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[12]),
        .Q(gpio_rdata[12]),
        .R(SR));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[11]),
        .R(SR));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[12]),
        .R(SR));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[13]),
        .R(SR));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[5]),
        .Q(gpio_rdata[5]),
        .R(SR));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[7]),
        .R(SR));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[8]),
        .R(SR));
  FDRE \din_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[0]),
        .Q(\din_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \din_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[10]),
        .Q(\din_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \din_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[11]),
        .Q(\din_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \din_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[12]),
        .Q(\din_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \din_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[13]),
        .Q(\din_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \din_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[14]),
        .Q(\din_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \din_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[15]),
        .Q(\din_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \din_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[1]),
        .Q(\din_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \din_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[2]),
        .Q(\din_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \din_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[3]),
        .Q(\din_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \din_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[4]),
        .Q(\din_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \din_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[5]),
        .Q(\din_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \din_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[6]),
        .Q(\din_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \din_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[7]),
        .Q(\din_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \din_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[8]),
        .Q(\din_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \din_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(in_buf[9]),
        .Q(\din_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [0]),
        .Q(\dout_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [10]),
        .Q(\dout_reg[15]_0 [10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [11]),
        .Q(\dout_reg[15]_0 [11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [12]),
        .Q(\dout_reg[15]_0 [12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [13]),
        .Q(\dout_reg[15]_0 [13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [14]),
        .Q(\dout_reg[15]_0 [14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [15]),
        .Q(\dout_reg[15]_0 [15]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [1]),
        .Q(\dout_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [2]),
        .Q(\dout_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [3]),
        .Q(\dout_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [4]),
        .Q(\dout_reg[15]_0 [4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [5]),
        .Q(\dout_reg[15]_0 [5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [6]),
        .Q(\dout_reg[15]_0 [6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [7]),
        .Q(\dout_reg[15]_0 [7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [8]),
        .Q(\dout_reg[15]_0 [8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(clk_i),
        .CE(E),
        .D(\dout_reg[15]_1 [9]),
        .Q(\dout_reg[15]_0 [9]),
        .R(1'b0));
  FDRE \in_buf_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[0]),
        .Q(in_buf[0]),
        .R(1'b0));
  FDRE \in_buf_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[10]),
        .Q(in_buf[10]),
        .R(1'b0));
  FDRE \in_buf_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[11]),
        .Q(in_buf[11]),
        .R(1'b0));
  FDRE \in_buf_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[12]),
        .Q(in_buf[12]),
        .R(1'b0));
  FDRE \in_buf_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[13]),
        .Q(in_buf[13]),
        .R(1'b0));
  FDRE \in_buf_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[14]),
        .Q(in_buf[14]),
        .R(1'b0));
  FDRE \in_buf_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[15]),
        .Q(in_buf[15]),
        .R(1'b0));
  FDRE \in_buf_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[1]),
        .Q(in_buf[1]),
        .R(1'b0));
  FDRE \in_buf_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[2]),
        .Q(in_buf[2]),
        .R(1'b0));
  FDRE \in_buf_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[3]),
        .Q(in_buf[3]),
        .R(1'b0));
  FDRE \in_buf_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[4]),
        .Q(in_buf[4]),
        .R(1'b0));
  FDRE \in_buf_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[5]),
        .Q(in_buf[5]),
        .R(1'b0));
  FDRE \in_buf_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[6]),
        .Q(in_buf[6]),
        .R(1'b0));
  FDRE \in_buf_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[7]),
        .Q(in_buf[7]),
        .R(1'b0));
  FDRE \in_buf_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[8]),
        .Q(in_buf[8]),
        .R(1'b0));
  FDRE \in_buf_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(gpio_i[9]),
        .Q(in_buf[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[12]_i_1 
       (.I0(\data_o_reg[12]_1 ),
        .O(mem_data_i[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \ir[5]_i_1 
       (.I0(\data_o_reg[5]_0 ),
        .O(mem_data_i[0]));
  FDRE \irq_mask_reg[0] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [0]),
        .Q(\irq_mask_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \irq_mask_reg[10] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [10]),
        .Q(\irq_mask_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \irq_mask_reg[11] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [11]),
        .Q(\irq_mask_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \irq_mask_reg[12] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [12]),
        .Q(\irq_mask_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \irq_mask_reg[13] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [13]),
        .Q(\irq_mask_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \irq_mask_reg[14] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [14]),
        .Q(\irq_mask_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \irq_mask_reg[15] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [15]),
        .Q(\irq_mask_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \irq_mask_reg[1] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [1]),
        .Q(\irq_mask_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \irq_mask_reg[2] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [2]),
        .Q(\irq_mask_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \irq_mask_reg[3] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [3]),
        .Q(\irq_mask_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \irq_mask_reg[4] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [4]),
        .Q(\irq_mask_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \irq_mask_reg[5] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [5]),
        .Q(\irq_mask_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \irq_mask_reg[6] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [6]),
        .Q(\irq_mask_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \irq_mask_reg[7] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [7]),
        .Q(\irq_mask_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \irq_mask_reg[8] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [8]),
        .Q(\irq_mask_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \irq_mask_reg[9] 
       (.C(clk_i),
        .CE(\irq_mask_reg[15]_0 ),
        .D(\dout_reg[15]_1 [9]),
        .Q(\irq_mask_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    irq_o_i_1
       (.I0(irq_o_i_2_n_0),
        .I1(irq_o_i_3_n_0),
        .I2(irq_o_i_4_n_0),
        .I3(irq_o_i_5_n_0),
        .I4(irq_o_i_6_n_0),
        .O(or_all_f));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_10
       (.I0(sync_in[8]),
        .I1(\din_reg[15]_0 [8]),
        .I2(\irq_mask_reg_n_0_[8] ),
        .I3(sync_in[11]),
        .I4(\din_reg[15]_0 [11]),
        .I5(\irq_mask_reg_n_0_[11] ),
        .O(irq_o_i_10_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_2
       (.I0(sync_in[5]),
        .I1(\din_reg[15]_0 [5]),
        .I2(\irq_mask_reg_n_0_[5] ),
        .I3(sync_in[3]),
        .I4(\din_reg[15]_0 [3]),
        .I5(\irq_mask_reg_n_0_[3] ),
        .O(irq_o_i_2_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_3
       (.I0(sync_in[2]),
        .I1(\din_reg[15]_0 [2]),
        .I2(\irq_mask_reg_n_0_[2] ),
        .I3(sync_in[12]),
        .I4(\din_reg[15]_0 [12]),
        .I5(\irq_mask_reg_n_0_[12] ),
        .O(irq_o_i_3_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_4
       (.I0(sync_in[4]),
        .I1(\din_reg[15]_0 [4]),
        .I2(\irq_mask_reg_n_0_[4] ),
        .I3(sync_in[7]),
        .I4(\din_reg[15]_0 [7]),
        .I5(\irq_mask_reg_n_0_[7] ),
        .O(irq_o_i_4_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_5
       (.I0(sync_in[9]),
        .I1(\din_reg[15]_0 [9]),
        .I2(\irq_mask_reg_n_0_[9] ),
        .I3(sync_in[6]),
        .I4(\din_reg[15]_0 [6]),
        .I5(\irq_mask_reg_n_0_[6] ),
        .O(irq_o_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_o_i_6
       (.I0(irq_o_i_7_n_0),
        .I1(irq_o_i_8_n_0),
        .I2(irq_o_i_9_n_0),
        .I3(irq_o_i_10_n_0),
        .O(irq_o_i_6_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_7
       (.I0(sync_in[13]),
        .I1(\din_reg[15]_0 [13]),
        .I2(\irq_mask_reg_n_0_[13] ),
        .I3(sync_in[15]),
        .I4(\din_reg[15]_0 [15]),
        .I5(\irq_mask_reg_n_0_[15] ),
        .O(irq_o_i_7_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_8
       (.I0(sync_in[10]),
        .I1(\din_reg[15]_0 [10]),
        .I2(\irq_mask_reg_n_0_[10] ),
        .I3(sync_in[14]),
        .I4(\din_reg[15]_0 [14]),
        .I5(\irq_mask_reg_n_0_[14] ),
        .O(irq_o_i_8_n_0));
  LUT6 #(
    .INIT(64'h60FFFF6060606060)) 
    irq_o_i_9
       (.I0(sync_in[1]),
        .I1(\din_reg[15]_0 [1]),
        .I2(\irq_mask_reg_n_0_[1] ),
        .I3(sync_in[0]),
        .I4(\din_reg[15]_0 [0]),
        .I5(\irq_mask_reg_n_0_[0] ),
        .O(irq_o_i_9_n_0));
  FDRE irq_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(or_all_f),
        .Q(irq_o),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sam[1]_i_2 
       (.I0(gpio_rdata[5]),
        .I1(uart_rdata[0]),
        .I2(\ir_reg[5] ),
        .I3(timer_rdata[0]),
        .I4(\ir_reg[5]_0 ),
        .I5(\ir_reg[5]_1 ),
        .O(\data_o_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \src[3]_i_5 
       (.I0(gpio_rdata[12]),
        .I1(\ir_reg[12] ),
        .I2(timer_rdata[1]),
        .I3(uart_rdata[1]),
        .I4(\ir_reg[12]_0 ),
        .O(\data_o_reg[12]_1 ));
  FDRE \sync_in_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [0]),
        .Q(sync_in[0]),
        .R(1'b0));
  FDRE \sync_in_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [10]),
        .Q(sync_in[10]),
        .R(1'b0));
  FDRE \sync_in_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [11]),
        .Q(sync_in[11]),
        .R(1'b0));
  FDRE \sync_in_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [12]),
        .Q(sync_in[12]),
        .R(1'b0));
  FDRE \sync_in_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [13]),
        .Q(sync_in[13]),
        .R(1'b0));
  FDRE \sync_in_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [14]),
        .Q(sync_in[14]),
        .R(1'b0));
  FDRE \sync_in_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [15]),
        .Q(sync_in[15]),
        .R(1'b0));
  FDRE \sync_in_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [1]),
        .Q(sync_in[1]),
        .R(1'b0));
  FDRE \sync_in_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [2]),
        .Q(sync_in[2]),
        .R(1'b0));
  FDRE \sync_in_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [3]),
        .Q(sync_in[3]),
        .R(1'b0));
  FDRE \sync_in_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [4]),
        .Q(sync_in[4]),
        .R(1'b0));
  FDRE \sync_in_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [5]),
        .Q(sync_in[5]),
        .R(1'b0));
  FDRE \sync_in_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [6]),
        .Q(sync_in[6]),
        .R(1'b0));
  FDRE \sync_in_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [7]),
        .Q(sync_in[7]),
        .R(1'b0));
  FDRE \sync_in_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [8]),
        .Q(sync_in[8]),
        .R(1'b0));
  FDRE \sync_in_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\din_reg[15]_0 [9]),
        .Q(sync_in[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neo430_imem" *) 
module SystemTop_neo430_imem
   (rden,
    \FSM_sequential_state_reg[3] ,
    mem_data_i,
    \FSM_sequential_state_reg[1] ,
    \data_o_reg[13] ,
    \data_o_reg[15] ,
    rdata_reg,
    imem_file_ram_l_reg_3_0,
    imem_file_ram_h_reg_2_0,
    imem_file_ram_h_reg_1_0,
    imem_file_ram_h_reg_1_1,
    imem_file_ram_h_reg_0_0,
    imem_file_ram_h_reg_0_1,
    imem_file_ram_l_reg_3_1,
    imem_file_ram_l_reg_2_0,
    imem_file_ram_l_reg_2_1,
    imem_file_ram_l_reg_1_0,
    imem_file_ram_l_reg_1_1,
    imem_file_ram_l_reg_0_0,
    imem_file_ram_l_reg_0_1,
    rden_reg_0,
    clk_i,
    \FSM_sequential_state_reg[1]_0 ,
    \FSM_sequential_state_reg[1]_1 ,
    \FSM_sequential_state_reg[1]_2 ,
    \FSM_sequential_state_reg[1]_3 ,
    \ir_reg[15] ,
    Q,
    \ir_reg[15]_0 ,
    \ir_reg[15]_1 ,
    rden_0,
    DOADO,
    \ir_reg[11] ,
    rden_1,
    \ir_reg[14] ,
    uart_rdata,
    timer_rdata,
    acc_en,
    \cpu_bus[addr] ,
    imem_file_ram_h_reg_3_0,
    imem_file_ram_l_reg_3_2,
    WEA);
  output rden;
  output \FSM_sequential_state_reg[3] ;
  output [1:0]mem_data_i;
  output \FSM_sequential_state_reg[1] ;
  output \data_o_reg[13] ;
  output \data_o_reg[15] ;
  output [0:0]rdata_reg;
  output imem_file_ram_l_reg_3_0;
  output imem_file_ram_h_reg_2_0;
  output imem_file_ram_h_reg_1_0;
  output imem_file_ram_h_reg_1_1;
  output imem_file_ram_h_reg_0_0;
  output imem_file_ram_h_reg_0_1;
  output imem_file_ram_l_reg_3_1;
  output imem_file_ram_l_reg_2_0;
  output imem_file_ram_l_reg_2_1;
  output imem_file_ram_l_reg_1_0;
  output imem_file_ram_l_reg_1_1;
  output imem_file_ram_l_reg_0_0;
  output imem_file_ram_l_reg_0_1;
  input rden_reg_0;
  input clk_i;
  input \FSM_sequential_state_reg[1]_0 ;
  input \FSM_sequential_state_reg[1]_1 ;
  input [1:0]\FSM_sequential_state_reg[1]_2 ;
  input \FSM_sequential_state_reg[1]_3 ;
  input \ir_reg[15] ;
  input [1:0]Q;
  input [1:0]\ir_reg[15]_0 ;
  input [1:0]\ir_reg[15]_1 ;
  input rden_0;
  input [1:0]DOADO;
  input [11:0]\ir_reg[11] ;
  input rden_1;
  input \ir_reg[14] ;
  input [0:0]uart_rdata;
  input [0:0]timer_rdata;
  input acc_en;
  input [13:0]\cpu_bus[addr] ;
  input [15:0]imem_file_ram_h_reg_3_0;
  input [0:0]imem_file_ram_l_reg_3_2;
  input [0:0]WEA;

  wire [1:0]DOADO;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [1:0]\FSM_sequential_state_reg[1]_2 ;
  wire \FSM_sequential_state_reg[1]_3 ;
  wire \FSM_sequential_state_reg[3] ;
  wire [1:0]Q;
  wire [0:0]WEA;
  wire acc_en;
  wire clk_i;
  wire [13:0]\cpu_bus[addr] ;
  wire \data_o_reg[13] ;
  wire \data_o_reg[15] ;
  wire imem_file_ram_h_reg_0_0;
  wire imem_file_ram_h_reg_0_1;
  wire imem_file_ram_h_reg_1_0;
  wire imem_file_ram_h_reg_1_1;
  wire imem_file_ram_h_reg_2_0;
  wire [15:0]imem_file_ram_h_reg_3_0;
  wire imem_file_ram_l_reg_0_0;
  wire imem_file_ram_l_reg_0_1;
  wire imem_file_ram_l_reg_1_0;
  wire imem_file_ram_l_reg_1_1;
  wire imem_file_ram_l_reg_2_0;
  wire imem_file_ram_l_reg_2_1;
  wire imem_file_ram_l_reg_3_0;
  wire imem_file_ram_l_reg_3_1;
  wire [0:0]imem_file_ram_l_reg_3_2;
  wire \ir[14]_i_2_n_0 ;
  wire \ir[15]_i_3_n_0 ;
  wire [11:0]\ir_reg[11] ;
  wire \ir_reg[14] ;
  wire \ir_reg[15] ;
  wire [1:0]\ir_reg[15]_0 ;
  wire [1:0]\ir_reg[15]_1 ;
  wire [1:0]mem_data_i;
  wire [0:0]rdata_reg;
  wire [15:0]rdata_reg_0;
  wire rden;
  wire rden_0;
  wire rden_1;
  wire rden_reg_0;
  wire [0:0]timer_rdata;
  wire [0:0]uart_rdata;
  wire NLW_imem_file_ram_h_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_0_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_h_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_h_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_h_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_h_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_h_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_h_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_h_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_h_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_h_reg_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_h_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_h_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_h_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_h_reg_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_h_reg_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_h_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_h_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_h_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_h_reg_3_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_0_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_l_reg_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_l_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_l_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_l_reg_0_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_1_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_l_reg_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_l_reg_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_l_reg_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_l_reg_1_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_2_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_l_reg_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_l_reg_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_l_reg_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_l_reg_2_RDADDRECC_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_DBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_imem_file_ram_l_reg_3_SBITERR_UNCONNECTED;
  wire [31:2]NLW_imem_file_ram_l_reg_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_imem_file_ram_l_reg_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_imem_file_ram_l_reg_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_imem_file_ram_l_reg_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_imem_file_ram_l_reg_3_RDADDRECC_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00001505)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(mem_data_i[0]),
        .I1(\FSM_sequential_state_reg[1]_3 ),
        .I2(mem_data_i[1]),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\FSM_sequential_state_reg[1]_2 [0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000000E0A0F0)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .I2(\FSM_sequential_state_reg[1]_2 [1]),
        .I3(mem_data_i[1]),
        .I4(\FSM_sequential_state_reg[1]_3 ),
        .I5(mem_data_i[0]),
        .O(\FSM_sequential_state_reg[3] ));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\data_o_reg[15] ),
        .I1(\FSM_sequential_state_reg[1]_3 ),
        .I2(mem_data_i[0]),
        .O(\data_o_reg[13] ));
  LUT4 #(
    .INIT(16'hF888)) 
    \am[0]_i_3 
       (.I0(rdata_reg_0[7]),
        .I1(rden),
        .I2(\ir_reg[11] [7]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_3_0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \am[3]_i_1 
       (.I0(mem_data_i[1]),
        .I1(mem_data_i[0]),
        .O(\data_o_reg[15] ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_h" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_h_reg_0
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_h_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_h_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_h_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[9:8]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_h_reg_0_DOADO_UNCONNECTED[31:2],rdata_reg_0[9:8]}),
        .DOBDO(NLW_imem_file_ram_h_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_h_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_h_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_h_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_h_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_h_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_h_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_h_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_h" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_h_reg_1
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_h_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_h_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_h_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[11:10]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_h_reg_1_DOADO_UNCONNECTED[31:2],rdata_reg_0[11:10]}),
        .DOBDO(NLW_imem_file_ram_h_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_h_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_h_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_h_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_h_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_h_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_h_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_h_reg_1_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_h" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_h_reg_2
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_h_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_h_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_h_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[13:12]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_h_reg_2_DOADO_UNCONNECTED[31:2],rdata_reg_0[13],rdata_reg}),
        .DOBDO(NLW_imem_file_ram_h_reg_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_h_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_h_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_h_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_h_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_h_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_h_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_h_reg_2_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_h" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_h_reg_3
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_h_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_h_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_h_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[15:14]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_h_reg_3_DOADO_UNCONNECTED[31:2],rdata_reg_0[15:14]}),
        .DOBDO(NLW_imem_file_ram_h_reg_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_h_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_h_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_h_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_h_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_h_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_h_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_h_reg_3_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_l" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_l_reg_0
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_l_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_l_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_l_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[1:0]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_l_reg_0_DOADO_UNCONNECTED[31:2],rdata_reg_0[1:0]}),
        .DOBDO(NLW_imem_file_ram_l_reg_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_l_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_l_reg_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_l_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_l_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_l_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_l_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_l_reg_0_SBITERR_UNCONNECTED),
        .WEA({imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_l" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_l_reg_1
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_l_reg_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_l_reg_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_l_reg_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[3:2]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_l_reg_1_DOADO_UNCONNECTED[31:2],rdata_reg_0[3:2]}),
        .DOBDO(NLW_imem_file_ram_l_reg_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_l_reg_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_l_reg_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_l_reg_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_l_reg_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_l_reg_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_l_reg_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_l_reg_1_SBITERR_UNCONNECTED),
        .WEA({imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_l" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_l_reg_2
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_l_reg_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_l_reg_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_l_reg_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[5:4]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_l_reg_2_DOADO_UNCONNECTED[31:2],rdata_reg_0[5:4]}),
        .DOBDO(NLW_imem_file_ram_l_reg_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_l_reg_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_l_reg_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_l_reg_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_l_reg_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_l_reg_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_l_reg_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_l_reg_2_SBITERR_UNCONNECTED),
        .WEA({imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d2" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/neo430_imem_inst/imem_file_ram_l" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(0)) 
    imem_file_ram_l_reg_3
       (.ADDRARDADDR({1'b1,\cpu_bus[addr] ,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(NLW_imem_file_ram_l_reg_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_imem_file_ram_l_reg_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clk_i),
        .CLKBWRCLK(1'b0),
        .DBITERR(NLW_imem_file_ram_l_reg_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,imem_file_ram_h_reg_3_0[7:6]}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO({NLW_imem_file_ram_l_reg_3_DOADO_UNCONNECTED[31:2],rdata_reg_0[7:6]}),
        .DOBDO(NLW_imem_file_ram_l_reg_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_imem_file_ram_l_reg_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_imem_file_ram_l_reg_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_imem_file_ram_l_reg_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(acc_en),
        .ENBWREN(1'b0),
        .INJECTDBITERR(NLW_imem_file_ram_l_reg_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_imem_file_ram_l_reg_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_imem_file_ram_l_reg_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_imem_file_ram_l_reg_3_SBITERR_UNCONNECTED),
        .WEA({imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2,imem_file_ram_l_reg_3_2}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    \ir[10]_i_2 
       (.I0(rdata_reg_0[10]),
        .I1(rden),
        .I2(\ir_reg[11] [10]),
        .I3(rden_1),
        .O(imem_file_ram_h_reg_1_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \ir[11]_i_2 
       (.I0(rdata_reg_0[11]),
        .I1(rden),
        .I2(\ir_reg[11] [11]),
        .I3(rden_1),
        .O(imem_file_ram_h_reg_1_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ir[14]_i_1 
       (.I0(\ir[14]_i_2_n_0 ),
        .I1(\ir_reg[14] ),
        .I2(\ir_reg[15]_1 [0]),
        .I3(Q[0]),
        .I4(uart_rdata),
        .O(mem_data_i[0]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \ir[14]_i_2 
       (.I0(rdata_reg_0[14]),
        .I1(rden),
        .I2(\ir_reg[15]_0 [0]),
        .I3(timer_rdata),
        .O(\ir[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \ir[15]_i_2 
       (.I0(\ir[15]_i_3_n_0 ),
        .I1(\ir_reg[15] ),
        .I2(Q[1]),
        .I3(\ir_reg[15]_0 [1]),
        .I4(\ir_reg[15]_1 [1]),
        .O(mem_data_i[1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \ir[15]_i_3 
       (.I0(rden),
        .I1(rdata_reg_0[15]),
        .I2(rden_0),
        .I3(DOADO[1]),
        .O(\ir[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \ir[6]_i_3 
       (.I0(rdata_reg_0[6]),
        .I1(rden),
        .I2(\ir_reg[11] [6]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_3_1));
  FDRE rden_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(rden_reg_0),
        .Q(rden),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \sam[0]_i_3 
       (.I0(rdata_reg_0[4]),
        .I1(rden),
        .I2(\ir_reg[11] [4]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_2_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \sam[1]_i_3 
       (.I0(rdata_reg_0[5]),
        .I1(rden),
        .I2(\ir_reg[11] [5]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_2_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[0]_i_4 
       (.I0(rdata_reg_0[0]),
        .I1(rden),
        .I2(\ir_reg[11] [0]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_0_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[0]_i_6 
       (.I0(rdata_reg_0[8]),
        .I1(rden),
        .I2(\ir_reg[11] [8]),
        .I3(rden_1),
        .O(imem_file_ram_h_reg_0_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[1]_i_4 
       (.I0(rdata_reg_0[1]),
        .I1(rden),
        .I2(\ir_reg[11] [1]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_0_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[1]_i_6 
       (.I0(rdata_reg_0[9]),
        .I1(rden),
        .I2(\ir_reg[11] [9]),
        .I3(rden_1),
        .O(imem_file_ram_h_reg_0_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[2]_i_3 
       (.I0(rdata_reg_0[2]),
        .I1(rden),
        .I2(\ir_reg[11] [2]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_1_1));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[3]_i_10 
       (.I0(rdata_reg_0[3]),
        .I1(rden),
        .I2(\ir_reg[11] [3]),
        .I3(rden_1),
        .O(imem_file_ram_l_reg_1_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \src[3]_i_7 
       (.I0(rdata_reg_0[13]),
        .I1(rden),
        .I2(DOADO[0]),
        .I3(rden_0),
        .O(imem_file_ram_h_reg_2_0));
endmodule

(* ORIG_REF_NAME = "neo430_pwm" *) 
module SystemTop_neo430_pwm
   (pwm_cg_en,
    pwm_o,
    Q,
    p_1_in,
    \data_o_reg[7]_0 ,
    \data_o_reg[7]_1 ,
    dio_swap_reg,
    dio_swap_reg_0,
    \data_o_reg[7]_2 ,
    \data_o_reg[15]_0 ,
    gpio_o,
    \pwm_ch_reg[2][7]_0 ,
    \prsc_reg[2]_0 ,
    \pwm_ch_reg[1][7]_0 ,
    clk_i,
    \am_reg[0] ,
    \am_reg[0]_0 ,
    \am_reg[0]_1 ,
    dio_swap,
    mem_data_i,
    uart_rdata,
    timer_rdata,
    \ir_reg[7] ,
    \ir_reg[7]_0 ,
    \ir_reg[7]_1 ,
    \pwm_cnt_reg[0]_0 ,
    \pwm_cnt_reg[0]_1 ,
    \pwm_cnt_reg[0]_2 ,
    \pwm_cnt_reg[0]_3 ,
    \pwm_cnt_reg[0]_4 ,
    \pwm_cnt_reg[0]_5 ,
    \pwm_cnt_reg[0]_6 ,
    \pwm_cnt_reg[0]_7 ,
    \register_sr_reg[3] ,
    E,
    \pwm_ch_reg[2][0]_0 ,
    SR,
    D);
  output pwm_cg_en;
  output [0:0]pwm_o;
  output [7:0]Q;
  output [15:0]p_1_in;
  output [0:0]\data_o_reg[7]_0 ;
  output \data_o_reg[7]_1 ;
  output dio_swap_reg;
  output dio_swap_reg_0;
  output [0:0]\data_o_reg[7]_2 ;
  output [14:0]\data_o_reg[15]_0 ;
  output [15:0]gpio_o;
  output [7:0]\pwm_ch_reg[2][7]_0 ;
  input \prsc_reg[2]_0 ;
  input [15:0]\pwm_ch_reg[1][7]_0 ;
  input clk_i;
  input \am_reg[0] ;
  input \am_reg[0]_0 ;
  input \am_reg[0]_1 ;
  input dio_swap;
  input [0:0]mem_data_i;
  input [0:0]uart_rdata;
  input [0:0]timer_rdata;
  input [0:0]\ir_reg[7] ;
  input \ir_reg[7]_0 ;
  input \ir_reg[7]_1 ;
  input \pwm_cnt_reg[0]_0 ;
  input \pwm_cnt_reg[0]_1 ;
  input \pwm_cnt_reg[0]_2 ;
  input \pwm_cnt_reg[0]_3 ;
  input \pwm_cnt_reg[0]_4 ;
  input \pwm_cnt_reg[0]_5 ;
  input \pwm_cnt_reg[0]_6 ;
  input \pwm_cnt_reg[0]_7 ;
  input [15:0]\register_sr_reg[3] ;
  input [0:0]E;
  input [0:0]\pwm_ch_reg[2][0]_0 ;
  input [0:0]SR;
  input [15:0]D;

  wire [15:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \am_reg[0] ;
  wire \am_reg[0]_0 ;
  wire \am_reg[0]_1 ;
  wire clk_i;
  wire [14:0]\data_o_reg[15]_0 ;
  wire [0:0]\data_o_reg[7]_0 ;
  wire \data_o_reg[7]_1 ;
  wire [0:0]\data_o_reg[7]_2 ;
  wire dio_swap;
  wire dio_swap_reg;
  wire dio_swap_reg_0;
  wire [15:0]gpio_o;
  wire gpio_pwm;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire [0:0]\ir_reg[7] ;
  wire \ir_reg[7]_0 ;
  wire \ir_reg[7]_1 ;
  wire [0:0]mem_data_i;
  wire p_0_in;
  wire [15:0]p_1_in;
  wire [7:0]plusOp;
  wire \prsc_reg[2]_0 ;
  wire \prsc_reg_n_0_[0] ;
  wire \prsc_reg_n_0_[1] ;
  wire \prsc_reg_n_0_[2] ;
  wire prsc_tick;
  wire pwm_cg_en;
  wire [15:0]\pwm_ch_reg[1][7]_0 ;
  wire [0:0]\pwm_ch_reg[2][0]_0 ;
  wire [7:0]\pwm_ch_reg[2][7]_0 ;
  wire \pwm_cnt[7]_i_1_n_0 ;
  wire \pwm_cnt[7]_i_4_n_0 ;
  wire \pwm_cnt[7]_i_5_n_0 ;
  wire \pwm_cnt[7]_i_6_n_0 ;
  wire [7:0]pwm_cnt_reg;
  wire \pwm_cnt_reg[0]_0 ;
  wire \pwm_cnt_reg[0]_1 ;
  wire \pwm_cnt_reg[0]_2 ;
  wire \pwm_cnt_reg[0]_3 ;
  wire \pwm_cnt_reg[0]_4 ;
  wire \pwm_cnt_reg[0]_5 ;
  wire \pwm_cnt_reg[0]_6 ;
  wire \pwm_cnt_reg[0]_7 ;
  wire [0:0]pwm_o;
  wire pwm_out12_in;
  wire pwm_out14_in;
  wire \pwm_out1_inferred__1/i__carry_n_1 ;
  wire \pwm_out1_inferred__1/i__carry_n_2 ;
  wire \pwm_out1_inferred__1/i__carry_n_3 ;
  wire \pwm_out1_inferred__2/i__carry_n_1 ;
  wire \pwm_out1_inferred__2/i__carry_n_2 ;
  wire \pwm_out1_inferred__2/i__carry_n_3 ;
  wire \pwm_out[0]_i_1_n_0 ;
  wire \pwm_out[3]_i_1_n_0 ;
  wire [7:7]pwm_rdata;
  wire [15:0]\register_sr_reg[3] ;
  wire size_sel;
  wire [0:0]timer_rdata;
  wire [0:0]uart_rdata;
  wire [3:0]\NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm_out1_inferred__2/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4777)) 
    \am[0]_i_1 
       (.I0(\data_o_reg[7]_1 ),
        .I1(\am_reg[0] ),
        .I2(\am_reg[0]_0 ),
        .I3(\am_reg[0]_1 ),
        .O(\data_o_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \am[0]_i_2 
       (.I0(pwm_rdata),
        .I1(uart_rdata),
        .I2(timer_rdata),
        .I3(\ir_reg[7] ),
        .I4(\ir_reg[7]_0 ),
        .I5(\ir_reg[7]_1 ),
        .O(\data_o_reg[7]_1 ));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[0]),
        .Q(\data_o_reg[15]_0 [0]),
        .R(SR));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[10]),
        .Q(\data_o_reg[15]_0 [9]),
        .R(SR));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[11]),
        .Q(\data_o_reg[15]_0 [10]),
        .R(SR));
  FDRE \data_o_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[12]),
        .Q(\data_o_reg[15]_0 [11]),
        .R(SR));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[13]),
        .Q(\data_o_reg[15]_0 [12]),
        .R(SR));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[14]),
        .Q(\data_o_reg[15]_0 [13]),
        .R(SR));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[15]),
        .Q(\data_o_reg[15]_0 [14]),
        .R(SR));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[1]),
        .Q(\data_o_reg[15]_0 [1]),
        .R(SR));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[2]),
        .Q(\data_o_reg[15]_0 [2]),
        .R(SR));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[3]),
        .Q(\data_o_reg[15]_0 [3]),
        .R(SR));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[4]),
        .Q(\data_o_reg[15]_0 [4]),
        .R(SR));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[5]),
        .Q(\data_o_reg[15]_0 [5]),
        .R(SR));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[6]),
        .Q(\data_o_reg[15]_0 [6]),
        .R(SR));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[7]),
        .Q(pwm_rdata),
        .R(SR));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[8]),
        .Q(\data_o_reg[15]_0 [7]),
        .R(SR));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[9]),
        .Q(\data_o_reg[15]_0 [8]),
        .R(SR));
  FDRE enable_reg
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [0]),
        .Q(pwm_cg_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[0]_INST_0 
       (.I0(\register_sr_reg[3] [0]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[10]_INST_0 
       (.I0(\register_sr_reg[3] [10]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[10]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[11]_INST_0 
       (.I0(\register_sr_reg[3] [11]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[11]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[12]_INST_0 
       (.I0(\register_sr_reg[3] [12]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[12]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[13]_INST_0 
       (.I0(\register_sr_reg[3] [13]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[13]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[14]_INST_0 
       (.I0(\register_sr_reg[3] [14]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[14]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[15]_INST_0 
       (.I0(\register_sr_reg[3] [15]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[15]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[1]_INST_0 
       (.I0(\register_sr_reg[3] [1]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[1]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[2]_INST_0 
       (.I0(\register_sr_reg[3] [2]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[2]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[3]_INST_0 
       (.I0(\register_sr_reg[3] [3]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[4]_INST_0 
       (.I0(\register_sr_reg[3] [4]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[4]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[5]_INST_0 
       (.I0(\register_sr_reg[3] [5]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[6]_INST_0 
       (.I0(\register_sr_reg[3] [6]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[6]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[7]_INST_0 
       (.I0(\register_sr_reg[3] [7]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[8]_INST_0 
       (.I0(\register_sr_reg[3] [8]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \gpio_o[9]_INST_0 
       (.I0(\register_sr_reg[3] [9]),
        .I1(p_0_in),
        .I2(gpio_pwm),
        .O(gpio_o[9]));
  FDRE gpio_pwm_reg
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [4]),
        .Q(gpio_pwm),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4000F400)) 
    i__carry_i_1
       (.I0(p_1_in[6]),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[7]),
        .I3(size_sel),
        .I4(p_1_in[7]),
        .O(i__carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h4000F400)) 
    i__carry_i_1__0
       (.I0(Q[6]),
        .I1(pwm_cnt_reg[6]),
        .I2(pwm_cnt_reg[7]),
        .I3(size_sel),
        .I4(Q[7]),
        .O(i__carry_i_1__0_n_0));
  LUT5 #(
    .INIT(32'h4000F400)) 
    i__carry_i_2
       (.I0(p_1_in[4]),
        .I1(pwm_cnt_reg[4]),
        .I2(pwm_cnt_reg[5]),
        .I3(size_sel),
        .I4(p_1_in[5]),
        .O(i__carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4000F400)) 
    i__carry_i_2__0
       (.I0(Q[4]),
        .I1(pwm_cnt_reg[4]),
        .I2(pwm_cnt_reg[5]),
        .I3(size_sel),
        .I4(Q[5]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(pwm_cnt_reg[3]),
        .I1(Q[3]),
        .I2(pwm_cnt_reg[2]),
        .I3(Q[2]),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3__0
       (.I0(pwm_cnt_reg[3]),
        .I1(p_1_in[3]),
        .I2(pwm_cnt_reg[2]),
        .I3(p_1_in[2]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(pwm_cnt_reg[1]),
        .I1(Q[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(Q[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4__0
       (.I0(pwm_cnt_reg[1]),
        .I1(p_1_in[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(p_1_in[0]),
        .O(i__carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h9009FFFF)) 
    i__carry_i_5
       (.I0(pwm_cnt_reg[6]),
        .I1(Q[6]),
        .I2(pwm_cnt_reg[7]),
        .I3(Q[7]),
        .I4(size_sel),
        .O(i__carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h9009FFFF)) 
    i__carry_i_5__0
       (.I0(pwm_cnt_reg[6]),
        .I1(p_1_in[6]),
        .I2(pwm_cnt_reg[7]),
        .I3(p_1_in[7]),
        .I4(size_sel),
        .O(i__carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h9009FFFF)) 
    i__carry_i_6
       (.I0(pwm_cnt_reg[4]),
        .I1(Q[4]),
        .I2(pwm_cnt_reg[5]),
        .I3(Q[5]),
        .I4(size_sel),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h9009FFFF)) 
    i__carry_i_6__0
       (.I0(pwm_cnt_reg[4]),
        .I1(p_1_in[4]),
        .I2(pwm_cnt_reg[5]),
        .I3(p_1_in[5]),
        .I4(size_sel),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(Q[3]),
        .I1(pwm_cnt_reg[3]),
        .I2(Q[2]),
        .I3(pwm_cnt_reg[2]),
        .O(i__carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7__0
       (.I0(p_1_in[3]),
        .I1(pwm_cnt_reg[3]),
        .I2(p_1_in[2]),
        .I3(pwm_cnt_reg[2]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(Q[1]),
        .I1(pwm_cnt_reg[1]),
        .I2(Q[0]),
        .I3(pwm_cnt_reg[0]),
        .O(i__carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8__0
       (.I0(p_1_in[1]),
        .I1(pwm_cnt_reg[1]),
        .I2(p_1_in[0]),
        .I3(pwm_cnt_reg[0]),
        .O(i__carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[7]_i_1 
       (.I0(\data_o_reg[7]_1 ),
        .O(\data_o_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h74)) 
    mem_addr_reg0_carry__2_i_8
       (.I0(\data_o_reg[7]_1 ),
        .I1(dio_swap),
        .I2(mem_data_i),
        .O(dio_swap_reg));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \op_b_ff[7]_i_2 
       (.I0(\data_o_reg[7]_1 ),
        .I1(mem_data_i),
        .I2(dio_swap),
        .O(dio_swap_reg_0));
  FDRE \prsc_reg[0] 
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [1]),
        .Q(\prsc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \prsc_reg[1] 
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [2]),
        .Q(\prsc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \prsc_reg[2] 
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [3]),
        .Q(\prsc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][0] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [0]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][1] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [1]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][2] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [2]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][3] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [3]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][4] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [4]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][5] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [5]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][6] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [6]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \pwm_ch_reg[0][7] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [7]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][0] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [8]),
        .Q(p_1_in[8]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][1] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [9]),
        .Q(p_1_in[9]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][2] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [10]),
        .Q(p_1_in[10]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][3] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [11]),
        .Q(p_1_in[11]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][4] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [12]),
        .Q(p_1_in[12]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][5] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [13]),
        .Q(p_1_in[13]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][6] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [14]),
        .Q(p_1_in[14]),
        .R(1'b0));
  FDRE \pwm_ch_reg[1][7] 
       (.C(clk_i),
        .CE(E),
        .D(\pwm_ch_reg[1][7]_0 [15]),
        .Q(p_1_in[15]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][0] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [0]),
        .Q(\pwm_ch_reg[2][7]_0 [0]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][1] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [1]),
        .Q(\pwm_ch_reg[2][7]_0 [1]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][2] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [2]),
        .Q(\pwm_ch_reg[2][7]_0 [2]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][3] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [3]),
        .Q(\pwm_ch_reg[2][7]_0 [3]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][4] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [4]),
        .Q(\pwm_ch_reg[2][7]_0 [4]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][5] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [5]),
        .Q(\pwm_ch_reg[2][7]_0 [5]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][6] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [6]),
        .Q(\pwm_ch_reg[2][7]_0 [6]),
        .R(1'b0));
  FDRE \pwm_ch_reg[2][7] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [7]),
        .Q(\pwm_ch_reg[2][7]_0 [7]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][0] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [8]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][1] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [9]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][2] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [10]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][3] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [11]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][4] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [12]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][5] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [13]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][6] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [14]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \pwm_ch_reg[3][7] 
       (.C(clk_i),
        .CE(\pwm_ch_reg[2][0]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [15]),
        .Q(Q[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[0]_i_1 
       (.I0(pwm_cnt_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[1]_i_1 
       (.I0(pwm_cnt_reg[1]),
        .I1(pwm_cnt_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_cnt[2]_i_1 
       (.I0(pwm_cnt_reg[2]),
        .I1(pwm_cnt_reg[0]),
        .I2(pwm_cnt_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pwm_cnt[3]_i_1 
       (.I0(pwm_cnt_reg[3]),
        .I1(pwm_cnt_reg[1]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pwm_cnt[4]_i_1 
       (.I0(pwm_cnt_reg[4]),
        .I1(pwm_cnt_reg[2]),
        .I2(pwm_cnt_reg[0]),
        .I3(pwm_cnt_reg[1]),
        .I4(pwm_cnt_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pwm_cnt[5]_i_1 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pwm_cnt[6]_i_1 
       (.I0(pwm_cnt_reg[6]),
        .I1(\pwm_cnt[7]_i_6_n_0 ),
        .O(plusOp[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \pwm_cnt[7]_i_1 
       (.I0(pwm_cg_en),
        .O(\pwm_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pwm_cnt[7]_i_3 
       (.I0(pwm_cnt_reg[7]),
        .I1(\pwm_cnt[7]_i_6_n_0 ),
        .I2(pwm_cnt_reg[6]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \pwm_cnt[7]_i_4 
       (.I0(\pwm_cnt_reg[0]_0 ),
        .I1(\pwm_cnt_reg[0]_1 ),
        .I2(\pwm_cnt_reg[0]_2 ),
        .I3(\prsc_reg_n_0_[0] ),
        .I4(\pwm_cnt_reg[0]_3 ),
        .I5(\prsc_reg_n_0_[1] ),
        .O(\pwm_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \pwm_cnt[7]_i_5 
       (.I0(\pwm_cnt_reg[0]_4 ),
        .I1(\pwm_cnt_reg[0]_5 ),
        .I2(\pwm_cnt_reg[0]_6 ),
        .I3(\prsc_reg_n_0_[0] ),
        .I4(\pwm_cnt_reg[0]_7 ),
        .I5(\prsc_reg_n_0_[1] ),
        .O(\pwm_cnt[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \pwm_cnt[7]_i_6 
       (.I0(pwm_cnt_reg[5]),
        .I1(pwm_cnt_reg[3]),
        .I2(pwm_cnt_reg[1]),
        .I3(pwm_cnt_reg[0]),
        .I4(pwm_cnt_reg[2]),
        .I5(pwm_cnt_reg[4]),
        .O(\pwm_cnt[7]_i_6_n_0 ));
  FDRE \pwm_cnt_reg[0] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[0]),
        .Q(pwm_cnt_reg[0]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[1] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[1]),
        .Q(pwm_cnt_reg[1]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[2] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[2]),
        .Q(pwm_cnt_reg[2]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[3] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[3]),
        .Q(pwm_cnt_reg[3]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[4] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[4]),
        .Q(pwm_cnt_reg[4]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[5] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[5]),
        .Q(pwm_cnt_reg[5]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[6] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[6]),
        .Q(pwm_cnt_reg[6]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  FDRE \pwm_cnt_reg[7] 
       (.C(clk_i),
        .CE(prsc_tick),
        .D(plusOp[7]),
        .Q(pwm_cnt_reg[7]),
        .R(\pwm_cnt[7]_i_1_n_0 ));
  MUXF7 \pwm_cnt_reg[7]_i_2 
       (.I0(\pwm_cnt[7]_i_4_n_0 ),
        .I1(\pwm_cnt[7]_i_5_n_0 ),
        .O(prsc_tick),
        .S(\prsc_reg_n_0_[2] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_out1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({pwm_out12_in,\pwm_out1_inferred__1/i__carry_n_1 ,\pwm_out1_inferred__1/i__carry_n_2 ,\pwm_out1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_pwm_out1_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \pwm_out1_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({pwm_out14_in,\pwm_out1_inferred__2/i__carry_n_1 ,\pwm_out1_inferred__2/i__carry_n_2 ,\pwm_out1_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_pwm_out1_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7__0_n_0,i__carry_i_8__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pwm_out[0]_i_1 
       (.I0(pwm_cg_en),
        .I1(pwm_out14_in),
        .O(\pwm_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pwm_out[3]_i_1 
       (.I0(pwm_cg_en),
        .I1(pwm_out12_in),
        .O(\pwm_out[3]_i_1_n_0 ));
  FDRE \pwm_out_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\pwm_out[0]_i_1_n_0 ),
        .Q(pwm_o),
        .R(1'b0));
  FDRE \pwm_out_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\pwm_out[3]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE size_sel_reg
       (.C(clk_i),
        .CE(\prsc_reg[2]_0 ),
        .D(\pwm_ch_reg[1][7]_0 [5]),
        .Q(size_sel),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neo430_reg_file" *) 
module SystemTop_neo430_reg_file
   (WEA,
    imem_up_en,
    \sreg_reg[15]_0 ,
    \sreg_reg[8]_0 ,
    Q,
    \rst_gen_reg[3] ,
    data_o0,
    \sreg_reg[4]_0 ,
    sreg,
    \cpu_bus[wr_en] ,
    \ctrl_reg[8] ,
    mem_data_i,
    \sreg_reg[0]_0 ,
    clk_i,
    in_data,
    \sreg_reg[4]_1 ,
    D,
    E,
    \sreg_reg[3]_0 ,
    \sreg_reg[4]_2 );
  output [0:0]WEA;
  output imem_up_en;
  output [0:0]\sreg_reg[15]_0 ;
  output \sreg_reg[8]_0 ;
  output [4:0]Q;
  output \rst_gen_reg[3] ;
  output [15:0]data_o0;
  output \sreg_reg[4]_0 ;
  output [0:0]sreg;
  input [1:0]\cpu_bus[wr_en] ;
  input \ctrl_reg[8] ;
  input [1:0]mem_data_i;
  input [0:0]\sreg_reg[0]_0 ;
  input clk_i;
  input [15:0]in_data;
  input [4:0]\sreg_reg[4]_1 ;
  input [4:0]D;
  input [0:0]E;
  input [1:0]\sreg_reg[3]_0 ;
  input \sreg_reg[4]_2 ;

  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire [0:0]WEA;
  wire clk_i;
  wire [1:0]\cpu_bus[wr_en] ;
  wire \ctrl[8]_i_8_n_0 ;
  wire \ctrl_reg[8] ;
  wire [15:0]data_o0;
  wire imem_up_en;
  wire [15:0]in_data;
  wire [1:0]mem_data_i;
  wire \rst_gen_reg[3] ;
  wire [0:0]sreg;
  wire \sreg[15]_i_1_n_0 ;
  wire \sreg[3]_i_1_n_0 ;
  wire \sreg[4]_i_1_n_0 ;
  wire [0:0]\sreg_reg[0]_0 ;
  wire [0:0]\sreg_reg[15]_0 ;
  wire [1:0]\sreg_reg[3]_0 ;
  wire \sreg_reg[4]_0 ;
  wire [4:0]\sreg_reg[4]_1 ;
  wire \sreg_reg[4]_2 ;
  wire \sreg_reg[8]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[4]_i_3 
       (.I0(\sreg_reg[0]_0 ),
        .O(\rst_gen_reg[3] ));
  LUT6 #(
    .INIT(64'h787B7B787B4B4878)) 
    \ctrl[8]_i_3 
       (.I0(\ctrl[8]_i_8_n_0 ),
        .I1(\ctrl_reg[8] ),
        .I2(mem_data_i[0]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(mem_data_i[1]),
        .O(\sreg_reg[8]_0 ));
  LUT3 #(
    .INIT(8'h47)) 
    \ctrl[8]_i_8 
       (.I0(Q[0]),
        .I1(mem_data_i[1]),
        .I2(Q[1]),
        .O(\ctrl[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    imem_file_ram_h_reg_0_i_3
       (.I0(imem_up_en),
        .I1(\cpu_bus[wr_en] [1]),
        .O(WEA));
  LUT2 #(
    .INIT(4'h8)) 
    imem_file_ram_l_reg_0_i_18
       (.I0(imem_up_en),
        .I1(\cpu_bus[wr_en] [0]),
        .O(\sreg_reg[15]_0 ));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_0_0
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[0]),
        .O(data_o0[0]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_10_10
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[10]),
        .O(data_o0[10]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_11_11
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[11]),
        .O(data_o0[11]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_12_12
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[12]),
        .O(data_o0[12]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_13_13
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[13]),
        .O(data_o0[13]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_14_14
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[14]),
        .O(data_o0[14]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_15_15
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[15]),
        .O(data_o0[15]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_1_1
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[1]),
        .O(data_o0[1]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_2_2
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[2]),
        .O(data_o0[2]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_3_3
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[3]),
        .O(data_o0[3]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_4_4
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[4]),
        .O(data_o0[4]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_5_5
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[5]),
        .O(data_o0[5]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_6_6
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[6]),
        .O(data_o0[6]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_7_7
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[7]),
        .O(data_o0[7]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_8_8
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[8]),
        .O(data_o0[8]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  (* RTL_RAM_BITS = "256" *) 
  (* RTL_RAM_NAME = "U0/neo430_cpu_inst/neo430_reg_file_inst/reg_file" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    reg_file_reg_0_15_9_9
       (.A0(\sreg_reg[4]_1 [0]),
        .A1(\sreg_reg[4]_1 [1]),
        .A2(\sreg_reg[4]_1 [2]),
        .A3(\sreg_reg[4]_1 [3]),
        .A4(1'b0),
        .D(in_data[9]),
        .O(data_o0[9]),
        .WCLK(clk_i),
        .WE(\sreg_reg[4]_1 [4]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \sreg[15]_i_1 
       (.I0(in_data[15]),
        .I1(\sreg_reg[4]_2 ),
        .I2(\sreg_reg[4]_1 [4]),
        .I3(\sreg_reg[4]_1 [0]),
        .I4(imem_up_en),
        .O(\sreg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33333A3300000A00)) 
    \sreg[3]_i_1 
       (.I0(in_data[3]),
        .I1(\sreg_reg[3]_0 [1]),
        .I2(\sreg_reg[4]_1 [0]),
        .I3(\sreg_reg[4]_1 [4]),
        .I4(\sreg_reg[4]_2 ),
        .I5(sreg),
        .O(\sreg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h33333A3300000A00)) 
    \sreg[4]_i_1 
       (.I0(in_data[4]),
        .I1(\sreg_reg[3]_0 [0]),
        .I2(\sreg_reg[4]_1 [0]),
        .I3(\sreg_reg[4]_1 [4]),
        .I4(\sreg_reg[4]_2 ),
        .I5(\sreg_reg[4]_0 ),
        .O(\sreg[4]_i_1_n_0 ));
  FDCE \sreg_reg[0] 
       (.C(clk_i),
        .CE(E),
        .CLR(\rst_gen_reg[3] ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \sreg_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\rst_gen_reg[3] ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \sreg_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\rst_gen_reg[3] ),
        .D(\sreg[15]_i_1_n_0 ),
        .Q(imem_up_en));
  FDCE \sreg_reg[1] 
       (.C(clk_i),
        .CE(E),
        .CLR(\rst_gen_reg[3] ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \sreg_reg[2] 
       (.C(clk_i),
        .CE(E),
        .CLR(\rst_gen_reg[3] ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \sreg_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\rst_gen_reg[3] ),
        .D(\sreg[3]_i_1_n_0 ),
        .Q(sreg));
  FDCE \sreg_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(\rst_gen_reg[3] ),
        .D(\sreg[4]_i_1_n_0 ),
        .Q(\sreg_reg[4]_0 ));
  FDCE \sreg_reg[8] 
       (.C(clk_i),
        .CE(E),
        .CLR(\rst_gen_reg[3] ),
        .D(D[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "neo430_sysconfig" *) 
module SystemTop_neo430_sysconfig
   (dio_swap_reg,
    \data_o_reg[13]_0 ,
    dio_swap_reg_0,
    \data_o_reg[8]_0 ,
    \data_o_reg[8]_1 ,
    dio_swap_reg_1,
    \data_o_reg[6]_0 ,
    dio_swap_reg_2,
    \data_o_reg[6]_1 ,
    dio_swap_reg_3,
    dio_swap_reg_4,
    \data_o_reg[3]_0 ,
    dio_swap_reg_5,
    \data_o_reg[3]_1 ,
    dio_swap_reg_6,
    \data_o_reg[2]_0 ,
    dio_swap_reg_7,
    dio_swap_reg_8,
    \data_o_reg[1]_0 ,
    \data_o_reg[1]_1 ,
    dio_swap_reg_9,
    \data_o_reg[0]_0 ,
    dio_swap_reg_10,
    \data_o_reg[5] ,
    \data_o_reg[7] ,
    \data_o_reg[1]_2 ,
    \FSM_sequential_state_reg[1] ,
    \data_o_reg[12] ,
    \data_o_reg[13]_1 ,
    \data_o_reg[13]_2 ,
    Q,
    dio_swap,
    \am_reg[1] ,
    \src_reg[3] ,
    mem_data_i,
    \FSM_sequential_state_reg[4] ,
    \am_reg[2] ,
    \FSM_sequential_state_reg[4]_0 ,
    \FSM_sequential_state_reg[0] ,
    \ir_reg[13] ,
    \ir_reg[13]_0 ,
    \ir_reg[13]_1 ,
    \ir_reg[13]_2 ,
    uart_rdata,
    \ir_reg[9] ,
    \ir_reg[9]_0 ,
    timer_rdata,
    \am_reg[1]_0 ,
    \am_reg[1]_1 ,
    \ir_reg[6] ,
    \ir_reg[6]_0 ,
    \am_reg[1]_2 ,
    \am_reg[1]_3 ,
    \ir_reg[3] ,
    \ir_reg[3]_0 ,
    \ir_reg[2] ,
    \ir_reg[2]_0 ,
    \ir_reg[1] ,
    \ir_reg[1]_0 ,
    \ir_reg[0] ,
    \ir_reg[0]_0 ,
    SR,
    D,
    clk_i);
  output dio_swap_reg;
  output \data_o_reg[13]_0 ;
  output dio_swap_reg_0;
  output \data_o_reg[8]_0 ;
  output \data_o_reg[8]_1 ;
  output dio_swap_reg_1;
  output \data_o_reg[6]_0 ;
  output dio_swap_reg_2;
  output \data_o_reg[6]_1 ;
  output dio_swap_reg_3;
  output dio_swap_reg_4;
  output \data_o_reg[3]_0 ;
  output dio_swap_reg_5;
  output [3:0]\data_o_reg[3]_1 ;
  output dio_swap_reg_6;
  output \data_o_reg[2]_0 ;
  output dio_swap_reg_7;
  output dio_swap_reg_8;
  output \data_o_reg[1]_0 ;
  output \data_o_reg[1]_1 ;
  output dio_swap_reg_9;
  output \data_o_reg[0]_0 ;
  output dio_swap_reg_10;
  output [1:0]\data_o_reg[5] ;
  output \data_o_reg[7] ;
  output \data_o_reg[1]_2 ;
  output \FSM_sequential_state_reg[1] ;
  output \data_o_reg[12] ;
  output \data_o_reg[13]_1 ;
  output [8:0]\data_o_reg[13]_2 ;
  output [4:0]Q;
  input dio_swap;
  input \am_reg[1] ;
  input \src_reg[3] ;
  input [3:0]mem_data_i;
  input \FSM_sequential_state_reg[4] ;
  input \am_reg[2] ;
  input \FSM_sequential_state_reg[4]_0 ;
  input \FSM_sequential_state_reg[0] ;
  input [2:0]\ir_reg[13] ;
  input [8:0]\ir_reg[13]_0 ;
  input \ir_reg[13]_1 ;
  input \ir_reg[13]_2 ;
  input [7:0]uart_rdata;
  input \ir_reg[9] ;
  input \ir_reg[9]_0 ;
  input [5:0]timer_rdata;
  input \am_reg[1]_0 ;
  input \am_reg[1]_1 ;
  input \ir_reg[6] ;
  input \ir_reg[6]_0 ;
  input \am_reg[1]_2 ;
  input \am_reg[1]_3 ;
  input \ir_reg[3] ;
  input \ir_reg[3]_0 ;
  input \ir_reg[2] ;
  input \ir_reg[2]_0 ;
  input \ir_reg[1] ;
  input \ir_reg[1]_0 ;
  input \ir_reg[0] ;
  input \ir_reg[0]_0 ;
  input [0:0]SR;
  input [10:0]D;
  input clk_i;

  wire [10:0]D;
  wire \FSM_sequential_state_reg[0] ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[4] ;
  wire \FSM_sequential_state_reg[4]_0 ;
  wire [4:0]Q;
  wire [0:0]SR;
  wire \am[2]_i_2_n_0 ;
  wire \am[2]_i_3_n_0 ;
  wire \am_reg[1] ;
  wire \am_reg[1]_0 ;
  wire \am_reg[1]_1 ;
  wire \am_reg[1]_2 ;
  wire \am_reg[1]_3 ;
  wire \am_reg[2] ;
  wire clk_i;
  wire \data_o_reg[0]_0 ;
  wire \data_o_reg[12] ;
  wire \data_o_reg[13]_0 ;
  wire \data_o_reg[13]_1 ;
  wire [8:0]\data_o_reg[13]_2 ;
  wire \data_o_reg[1]_0 ;
  wire \data_o_reg[1]_1 ;
  wire \data_o_reg[1]_2 ;
  wire \data_o_reg[2]_0 ;
  wire \data_o_reg[3]_0 ;
  wire [3:0]\data_o_reg[3]_1 ;
  wire [1:0]\data_o_reg[5] ;
  wire \data_o_reg[6]_0 ;
  wire \data_o_reg[6]_1 ;
  wire \data_o_reg[7] ;
  wire \data_o_reg[8]_0 ;
  wire \data_o_reg[8]_1 ;
  wire dio_swap;
  wire dio_swap_reg;
  wire dio_swap_reg_0;
  wire dio_swap_reg_1;
  wire dio_swap_reg_10;
  wire dio_swap_reg_2;
  wire dio_swap_reg_3;
  wire dio_swap_reg_4;
  wire dio_swap_reg_5;
  wire dio_swap_reg_6;
  wire dio_swap_reg_7;
  wire dio_swap_reg_8;
  wire dio_swap_reg_9;
  wire \ir_reg[0] ;
  wire \ir_reg[0]_0 ;
  wire [2:0]\ir_reg[13] ;
  wire [8:0]\ir_reg[13]_0 ;
  wire \ir_reg[13]_1 ;
  wire \ir_reg[13]_2 ;
  wire \ir_reg[1] ;
  wire \ir_reg[1]_0 ;
  wire \ir_reg[2] ;
  wire \ir_reg[2]_0 ;
  wire \ir_reg[3] ;
  wire \ir_reg[3]_0 ;
  wire \ir_reg[6] ;
  wire \ir_reg[6]_0 ;
  wire \ir_reg[9] ;
  wire \ir_reg[9]_0 ;
  wire [3:0]mem_data_i;
  wire \src_reg[3] ;
  wire [13:0]sysconfig_rdata;
  wire [5:0]timer_rdata;
  wire [7:0]uart_rdata;

  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state_reg[0] ),
        .I1(\data_o_reg[1]_2 ),
        .I2(\am_reg[2] ),
        .I3(\data_o_reg[13]_0 ),
        .I4(\FSM_sequential_state_reg[4] ),
        .O(\FSM_sequential_state_reg[1] ));
  LUT4 #(
    .INIT(16'hF0FD)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\data_o_reg[13]_0 ),
        .I1(\am_reg[2] ),
        .I2(\FSM_sequential_state_reg[4] ),
        .I3(mem_data_i[3]),
        .O(\data_o_reg[13]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[4]_i_10 
       (.I0(\data_o_reg[1]_1 ),
        .I1(\data_o_reg[8]_1 ),
        .O(\data_o_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_state[4]_i_6 
       (.I0(\src_reg[3] ),
        .I1(\data_o_reg[1]_2 ),
        .I2(\FSM_sequential_state_reg[4]_0 ),
        .I3(\am_reg[2] ),
        .I4(\data_o_reg[13]_0 ),
        .I5(\FSM_sequential_state_reg[4] ),
        .O(\data_o_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h0000008F)) 
    \am[1]_i_1 
       (.I0(\data_o_reg[8]_1 ),
        .I1(\am_reg[1] ),
        .I2(\am[2]_i_2_n_0 ),
        .I3(\am[2]_i_3_n_0 ),
        .I4(\data_o_reg[6]_1 ),
        .O(\data_o_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \am[2]_i_1 
       (.I0(\am[2]_i_2_n_0 ),
        .I1(\am_reg[1] ),
        .I2(\am[2]_i_3_n_0 ),
        .O(\data_o_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \am[2]_i_2 
       (.I0(\data_o_reg[1]_1 ),
        .I1(\src_reg[3] ),
        .I2(\am_reg[2] ),
        .O(\am[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100010001000)) 
    \am[2]_i_3 
       (.I0(\src_reg[3] ),
        .I1(\data_o_reg[1]_0 ),
        .I2(\data_o_reg[3]_0 ),
        .I3(\data_o_reg[2]_0 ),
        .I4(\am_reg[1] ),
        .I5(\data_o_reg[0]_0 ),
        .O(\am[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \ctrl[16]_i_3 
       (.I0(\data_o_reg[8]_1 ),
        .I1(\data_o_reg[13]_0 ),
        .I2(\src_reg[3] ),
        .O(\data_o_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \ctrl[17]_i_4 
       (.I0(\FSM_sequential_state_reg[4] ),
        .I1(\data_o_reg[13]_0 ),
        .I2(\am_reg[2] ),
        .I3(\src_reg[3] ),
        .I4(\data_o_reg[1]_1 ),
        .O(\data_o_reg[12] ));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[0]),
        .Q(sysconfig_rdata[0]),
        .R(SR));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[1]),
        .R(SR));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[2]),
        .R(SR));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[8]),
        .Q(sysconfig_rdata[13]),
        .R(SR));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[3]),
        .R(SR));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[4]),
        .R(SR));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[1]),
        .Q(sysconfig_rdata[1]),
        .R(SR));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[2]),
        .Q(sysconfig_rdata[2]),
        .R(SR));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[3]),
        .Q(sysconfig_rdata[3]),
        .R(SR));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[0]),
        .R(SR));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(D[5]),
        .Q(sysconfig_rdata[8]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \ir[0]_i_1 
       (.I0(\data_o_reg[0]_0 ),
        .O(\data_o_reg[13]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[13]_i_1 
       (.I0(\data_o_reg[13]_0 ),
        .O(\data_o_reg[13]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[1]_i_1 
       (.I0(\data_o_reg[1]_0 ),
        .O(\data_o_reg[13]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[2]_i_1 
       (.I0(\data_o_reg[2]_0 ),
        .O(\data_o_reg[13]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[3]_i_1 
       (.I0(\data_o_reg[3]_0 ),
        .O(\data_o_reg[13]_2 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    \ir[4]_i_1 
       (.I0(\data_o_reg[6]_1 ),
        .O(\data_o_reg[13]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ir[6]_i_1 
       (.I0(\data_o_reg[6]_0 ),
        .O(\data_o_reg[13]_2 [5]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ir[6]_i_2 
       (.I0(Q[0]),
        .I1(\ir_reg[13]_0 [5]),
        .I2(\ir_reg[13] [0]),
        .I3(uart_rdata[5]),
        .I4(\ir_reg[6] ),
        .I5(\ir_reg[6]_0 ),
        .O(\data_o_reg[6]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ir[8]_i_1 
       (.I0(\data_o_reg[8]_1 ),
        .O(\data_o_reg[13]_2 [6]));
  LUT1 #(
    .INIT(2'h1)) 
    \ir[9]_i_1 
       (.I0(\data_o_reg[1]_1 ),
        .O(\data_o_reg[13]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h35)) 
    mem_addr_reg0_carry__0_i_12
       (.I0(\data_o_reg[6]_1 ),
        .I1(\FSM_sequential_state_reg[4] ),
        .I2(dio_swap),
        .O(dio_swap_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    mem_addr_reg0_carry_i_9
       (.I0(\data_o_reg[3]_0 ),
        .I1(mem_data_i[1]),
        .I2(dio_swap),
        .O(dio_swap_reg_4));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \op_b_ff[10]_i_2 
       (.I0(\data_o_reg[2]_0 ),
        .I1(dio_swap),
        .I2(mem_data_i[0]),
        .O(dio_swap_reg_7));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \op_b_ff[11]_i_2 
       (.I0(\data_o_reg[3]_0 ),
        .I1(dio_swap),
        .I2(mem_data_i[1]),
        .O(dio_swap_reg_5));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \op_b_ff[12]_i_2 
       (.I0(\data_o_reg[6]_1 ),
        .I1(dio_swap),
        .I2(\FSM_sequential_state_reg[4] ),
        .O(dio_swap_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \op_b_ff[13]_i_2 
       (.I0(\data_o_reg[13]_0 ),
        .I1(\am_reg[1] ),
        .I2(dio_swap),
        .O(dio_swap_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \op_b_ff[1]_i_2 
       (.I0(\data_o_reg[1]_0 ),
        .I1(\data_o_reg[1]_1 ),
        .I2(dio_swap),
        .O(dio_swap_reg_9));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \op_b_ff[2]_i_2 
       (.I0(\data_o_reg[2]_0 ),
        .I1(mem_data_i[0]),
        .I2(dio_swap),
        .O(dio_swap_reg_6));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \op_b_ff[5]_i_2 
       (.I0(\data_o_reg[13]_0 ),
        .I1(dio_swap),
        .I2(\am_reg[1] ),
        .O(dio_swap_reg));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \op_b_ff[6]_i_2 
       (.I0(\data_o_reg[6]_0 ),
        .I1(mem_data_i[2]),
        .I2(dio_swap),
        .O(dio_swap_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \op_b_ff[8]_i_2 
       (.I0(\data_o_reg[0]_0 ),
        .I1(\data_o_reg[8]_1 ),
        .I2(dio_swap),
        .O(dio_swap_reg_10));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h53)) 
    \op_b_ff[9]_i_2 
       (.I0(\data_o_reg[1]_0 ),
        .I1(\data_o_reg[1]_1 ),
        .I2(dio_swap),
        .O(dio_swap_reg_8));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sam[0]_i_2 
       (.I0(Q[0]),
        .I1(\ir_reg[13]_0 [4]),
        .I2(timer_rdata[4]),
        .I3(uart_rdata[4]),
        .I4(\am_reg[1]_2 ),
        .I5(\am_reg[1]_3 ),
        .O(\data_o_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \src[0]_i_1 
       (.I0(\data_o_reg[0]_0 ),
        .I1(\data_o_reg[8]_1 ),
        .I2(\src_reg[3] ),
        .O(\data_o_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[0]_i_2 
       (.I0(sysconfig_rdata[0]),
        .I1(\ir_reg[13]_0 [0]),
        .I2(timer_rdata[0]),
        .I3(uart_rdata[0]),
        .I4(\ir_reg[0] ),
        .I5(\ir_reg[0]_0 ),
        .O(\data_o_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[0]_i_3 
       (.I0(sysconfig_rdata[8]),
        .I1(\ir_reg[13]_0 [6]),
        .I2(timer_rdata[5]),
        .I3(uart_rdata[6]),
        .I4(\am_reg[1]_0 ),
        .I5(\am_reg[1]_1 ),
        .O(\data_o_reg[8]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \src[1]_i_1 
       (.I0(\data_o_reg[1]_0 ),
        .I1(\src_reg[3] ),
        .I2(\data_o_reg[1]_1 ),
        .O(\data_o_reg[3]_1 [1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[1]_i_2 
       (.I0(sysconfig_rdata[1]),
        .I1(\ir_reg[13]_0 [1]),
        .I2(timer_rdata[1]),
        .I3(uart_rdata[1]),
        .I4(\ir_reg[1] ),
        .I5(\ir_reg[1]_0 ),
        .O(\data_o_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[1]_i_3 
       (.I0(sysconfig_rdata[1]),
        .I1(\ir_reg[13]_0 [7]),
        .I2(\ir_reg[13] [1]),
        .I3(uart_rdata[7]),
        .I4(\ir_reg[9] ),
        .I5(\ir_reg[9]_0 ),
        .O(\data_o_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \src[2]_i_1 
       (.I0(\data_o_reg[2]_0 ),
        .I1(mem_data_i[0]),
        .I2(\src_reg[3] ),
        .O(\data_o_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[2]_i_2 
       (.I0(sysconfig_rdata[2]),
        .I1(\ir_reg[13]_0 [2]),
        .I2(timer_rdata[2]),
        .I3(uart_rdata[2]),
        .I4(\ir_reg[2] ),
        .I5(\ir_reg[2]_0 ),
        .O(\data_o_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \src[3]_i_2 
       (.I0(\data_o_reg[3]_0 ),
        .I1(mem_data_i[1]),
        .I2(\src_reg[3] ),
        .O(\data_o_reg[3]_1 [3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \src[3]_i_4 
       (.I0(sysconfig_rdata[13]),
        .I1(\ir_reg[13] [2]),
        .I2(\ir_reg[13]_0 [8]),
        .I3(\ir_reg[13]_1 ),
        .I4(\ir_reg[13]_2 ),
        .O(\data_o_reg[13]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \src[3]_i_6 
       (.I0(sysconfig_rdata[3]),
        .I1(\ir_reg[13]_0 [3]),
        .I2(timer_rdata[3]),
        .I3(uart_rdata[3]),
        .I4(\ir_reg[3] ),
        .I5(\ir_reg[3]_0 ),
        .O(\data_o_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "neo430_timer" *) 
module SystemTop_neo430_timer
   (irq_fire_ff,
    p_2_in3_in,
    cnt_reg,
    Q,
    clk_div0,
    timer_rdata,
    clk_i,
    prsc_tick_reg_0,
    prsc_tick_reg_1,
    prsc_tick_reg_2,
    prsc_tick_reg_3,
    prsc_tick_reg_4,
    prsc_tick_reg_5,
    prsc_tick_reg_6,
    prsc_tick_reg_7,
    \clk_div_reg[0] ,
    freq_gen_cg_en,
    pwm_cg_en,
    E,
    \thres_reg[15]_0 ,
    \thres_reg[15]_1 ,
    \data_o_reg[0]_0 ,
    \data_o_reg[15]_0 ,
    \data_o_reg[14]_0 ,
    \data_o_reg[13]_0 ,
    \data_o_reg[12]_0 ,
    \data_o_reg[11]_0 ,
    \data_o_reg[10]_0 ,
    \data_o_reg[9]_0 ,
    \data_o_reg[8]_0 ,
    \data_o_reg[7]_0 ,
    \data_o_reg[6]_0 ,
    \data_o_reg[5]_0 ,
    \data_o_reg[4]_0 ,
    \data_o_reg[3]_0 ,
    \data_o_reg[2]_0 ,
    \data_o_reg[1]_0 ,
    \data_o_reg[0]_1 );
  output irq_fire_ff;
  output p_2_in3_in;
  output [15:0]cnt_reg;
  output [6:0]Q;
  output clk_div0;
  output [15:0]timer_rdata;
  input clk_i;
  input prsc_tick_reg_0;
  input prsc_tick_reg_1;
  input prsc_tick_reg_2;
  input prsc_tick_reg_3;
  input prsc_tick_reg_4;
  input prsc_tick_reg_5;
  input prsc_tick_reg_6;
  input prsc_tick_reg_7;
  input [0:0]\clk_div_reg[0] ;
  input freq_gen_cg_en;
  input pwm_cg_en;
  input [0:0]E;
  input [15:0]\thres_reg[15]_0 ;
  input [0:0]\thres_reg[15]_1 ;
  input \data_o_reg[0]_0 ;
  input \data_o_reg[15]_0 ;
  input \data_o_reg[14]_0 ;
  input \data_o_reg[13]_0 ;
  input \data_o_reg[12]_0 ;
  input \data_o_reg[11]_0 ;
  input \data_o_reg[10]_0 ;
  input \data_o_reg[9]_0 ;
  input \data_o_reg[8]_0 ;
  input \data_o_reg[7]_0 ;
  input \data_o_reg[6]_0 ;
  input \data_o_reg[5]_0 ;
  input \data_o_reg[4]_0 ;
  input \data_o_reg[3]_0 ;
  input \data_o_reg[2]_0 ;
  input \data_o_reg[1]_0 ;
  input \data_o_reg[0]_1 ;

  wire [0:0]E;
  wire [6:0]Q;
  wire clk_div0;
  wire [0:0]\clk_div_reg[0] ;
  wire clk_i;
  wire cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire [15:0]cnt_reg;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_1 ;
  wire \cnt_reg[0]_i_3_n_2 ;
  wire \cnt_reg[0]_i_3_n_3 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \data_o_reg[0]_0 ;
  wire \data_o_reg[0]_1 ;
  wire \data_o_reg[10]_0 ;
  wire \data_o_reg[11]_0 ;
  wire \data_o_reg[12]_0 ;
  wire \data_o_reg[13]_0 ;
  wire \data_o_reg[14]_0 ;
  wire \data_o_reg[15]_0 ;
  wire \data_o_reg[1]_0 ;
  wire \data_o_reg[2]_0 ;
  wire \data_o_reg[3]_0 ;
  wire \data_o_reg[4]_0 ;
  wire \data_o_reg[5]_0 ;
  wire \data_o_reg[6]_0 ;
  wire \data_o_reg[7]_0 ;
  wire \data_o_reg[8]_0 ;
  wire \data_o_reg[9]_0 ;
  wire freq_gen_cg_en;
  wire irq_fire1_carry__0_i_1_n_0;
  wire irq_fire1_carry__0_i_2_n_0;
  wire irq_fire1_carry__0_n_3;
  wire irq_fire1_carry_i_1_n_0;
  wire irq_fire1_carry_i_2_n_0;
  wire irq_fire1_carry_i_3_n_0;
  wire irq_fire1_carry_i_4_n_0;
  wire irq_fire1_carry_n_0;
  wire irq_fire1_carry_n_1;
  wire irq_fire1_carry_n_2;
  wire irq_fire1_carry_n_3;
  wire irq_fire_ff;
  wire match;
  wire p_2_in3_in;
  wire prsc_tick;
  wire prsc_tick_i_2_n_0;
  wire prsc_tick_i_3_n_0;
  wire prsc_tick_reg_0;
  wire prsc_tick_reg_1;
  wire prsc_tick_reg_2;
  wire prsc_tick_reg_3;
  wire prsc_tick_reg_4;
  wire prsc_tick_reg_5;
  wire prsc_tick_reg_6;
  wire prsc_tick_reg_7;
  wire prsc_tick_reg_i_1_n_0;
  wire pwm_cg_en;
  wire [15:0]\thres_reg[15]_0 ;
  wire [0:0]\thres_reg[15]_1 ;
  wire \thres_reg_n_0_[0] ;
  wire \thres_reg_n_0_[10] ;
  wire \thres_reg_n_0_[11] ;
  wire \thres_reg_n_0_[12] ;
  wire \thres_reg_n_0_[13] ;
  wire \thres_reg_n_0_[14] ;
  wire \thres_reg_n_0_[15] ;
  wire \thres_reg_n_0_[1] ;
  wire \thres_reg_n_0_[2] ;
  wire \thres_reg_n_0_[3] ;
  wire \thres_reg_n_0_[4] ;
  wire \thres_reg_n_0_[5] ;
  wire \thres_reg_n_0_[6] ;
  wire \thres_reg_n_0_[7] ;
  wire \thres_reg_n_0_[8] ;
  wire \thres_reg_n_0_[9] ;
  wire [15:0]timer_rdata;
  wire [3:3]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_irq_fire1_carry_O_UNCONNECTED;
  wire [3:2]NLW_irq_fire1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_irq_fire1_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_div[0]_i_1 
       (.I0(Q[0]),
        .I1(\clk_div_reg[0] ),
        .I2(freq_gen_cg_en),
        .I3(pwm_cg_en),
        .O(clk_div0));
  LUT4 #(
    .INIT(16'hD555)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(match),
        .I3(Q[3]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \cnt[0]_i_2 
       (.I0(Q[3]),
        .I1(prsc_tick),
        .I2(match),
        .O(cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_4_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\cnt_reg[0]_i_3_n_1 ,\cnt_reg[0]_i_3_n_2 ,\cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_4_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[11] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[12] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE \cnt_reg[13] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[14] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[15] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE \cnt_reg[5] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE \cnt_reg[9] 
       (.C(clk_i),
        .CE(cnt),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \ctrl_reg[0] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ctrl_reg[1] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \ctrl_reg[2] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \ctrl_reg[3] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \ctrl_reg[4] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \ctrl_reg[5] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \ctrl_reg[6] 
       (.C(clk_i),
        .CE(E),
        .D(\thres_reg[15]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[0]_1 ),
        .Q(timer_rdata[0]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[10]_0 ),
        .Q(timer_rdata[10]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[11]_0 ),
        .Q(timer_rdata[11]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[12]_0 ),
        .Q(timer_rdata[12]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[13]_0 ),
        .Q(timer_rdata[13]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[14]_0 ),
        .Q(timer_rdata[14]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[15]_0 ),
        .Q(timer_rdata[15]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[1]_0 ),
        .Q(timer_rdata[1]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[2]_0 ),
        .Q(timer_rdata[2]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[3]_0 ),
        .Q(timer_rdata[3]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[4]_0 ),
        .Q(timer_rdata[4]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[5]_0 ),
        .Q(timer_rdata[5]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[6]_0 ),
        .Q(timer_rdata[6]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[7]_0 ),
        .Q(timer_rdata[7]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[8]_0 ),
        .Q(timer_rdata[8]),
        .R(\data_o_reg[0]_0 ));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[9]_0 ),
        .Q(timer_rdata[9]),
        .R(\data_o_reg[0]_0 ));
  CARRY4 irq_fire1_carry
       (.CI(1'b0),
        .CO({irq_fire1_carry_n_0,irq_fire1_carry_n_1,irq_fire1_carry_n_2,irq_fire1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_fire1_carry_O_UNCONNECTED[3:0]),
        .S({irq_fire1_carry_i_1_n_0,irq_fire1_carry_i_2_n_0,irq_fire1_carry_i_3_n_0,irq_fire1_carry_i_4_n_0}));
  CARRY4 irq_fire1_carry__0
       (.CI(irq_fire1_carry_n_0),
        .CO({NLW_irq_fire1_carry__0_CO_UNCONNECTED[3:2],match,irq_fire1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_irq_fire1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,irq_fire1_carry__0_i_1_n_0,irq_fire1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    irq_fire1_carry__0_i_1
       (.I0(\thres_reg_n_0_[15] ),
        .I1(cnt_reg[15]),
        .O(irq_fire1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    irq_fire1_carry__0_i_2
       (.I0(\thres_reg_n_0_[13] ),
        .I1(cnt_reg[13]),
        .I2(\thres_reg_n_0_[14] ),
        .I3(cnt_reg[14]),
        .I4(cnt_reg[12]),
        .I5(\thres_reg_n_0_[12] ),
        .O(irq_fire1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    irq_fire1_carry_i_1
       (.I0(\thres_reg_n_0_[10] ),
        .I1(cnt_reg[10]),
        .I2(\thres_reg_n_0_[11] ),
        .I3(cnt_reg[11]),
        .I4(cnt_reg[9]),
        .I5(\thres_reg_n_0_[9] ),
        .O(irq_fire1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    irq_fire1_carry_i_2
       (.I0(\thres_reg_n_0_[6] ),
        .I1(cnt_reg[6]),
        .I2(\thres_reg_n_0_[8] ),
        .I3(cnt_reg[8]),
        .I4(cnt_reg[7]),
        .I5(\thres_reg_n_0_[7] ),
        .O(irq_fire1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    irq_fire1_carry_i_3
       (.I0(\thres_reg_n_0_[3] ),
        .I1(cnt_reg[3]),
        .I2(\thres_reg_n_0_[5] ),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[4]),
        .I5(\thres_reg_n_0_[4] ),
        .O(irq_fire1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    irq_fire1_carry_i_4
       (.I0(cnt_reg[0]),
        .I1(\thres_reg_n_0_[0] ),
        .I2(\thres_reg_n_0_[1] ),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[2]),
        .I5(\thres_reg_n_0_[2] ),
        .O(irq_fire1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    irq_fire_ff_i_1
       (.I0(Q[2]),
        .I1(match),
        .I2(Q[0]),
        .O(p_2_in3_in));
  FDRE irq_fire_ff_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(p_2_in3_in),
        .Q(irq_fire_ff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    prsc_tick_i_2
       (.I0(prsc_tick_reg_0),
        .I1(prsc_tick_reg_1),
        .I2(prsc_tick_reg_2),
        .I3(Q[4]),
        .I4(prsc_tick_reg_3),
        .I5(Q[5]),
        .O(prsc_tick_i_2_n_0));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    prsc_tick_i_3
       (.I0(prsc_tick_reg_4),
        .I1(prsc_tick_reg_5),
        .I2(prsc_tick_reg_6),
        .I3(Q[4]),
        .I4(prsc_tick_reg_7),
        .I5(Q[5]),
        .O(prsc_tick_i_3_n_0));
  FDRE prsc_tick_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(prsc_tick_reg_i_1_n_0),
        .Q(prsc_tick),
        .R(1'b0));
  MUXF7 prsc_tick_reg_i_1
       (.I0(prsc_tick_i_2_n_0),
        .I1(prsc_tick_i_3_n_0),
        .O(prsc_tick_reg_i_1_n_0),
        .S(Q[6]));
  FDRE \thres_reg[0] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [0]),
        .Q(\thres_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \thres_reg[10] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [10]),
        .Q(\thres_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \thres_reg[11] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [11]),
        .Q(\thres_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \thres_reg[12] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [12]),
        .Q(\thres_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \thres_reg[13] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [13]),
        .Q(\thres_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \thres_reg[14] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [14]),
        .Q(\thres_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \thres_reg[15] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [15]),
        .Q(\thres_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \thres_reg[1] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [1]),
        .Q(\thres_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \thres_reg[2] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [2]),
        .Q(\thres_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \thres_reg[3] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [3]),
        .Q(\thres_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \thres_reg[4] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [4]),
        .Q(\thres_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \thres_reg[5] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [5]),
        .Q(\thres_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \thres_reg[6] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [6]),
        .Q(\thres_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \thres_reg[7] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [7]),
        .Q(\thres_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \thres_reg[8] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [8]),
        .Q(\thres_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \thres_reg[9] 
       (.C(clk_i),
        .CE(\thres_reg[15]_1 ),
        .D(\thres_reg[15]_0 [9]),
        .Q(\thres_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "neo430_top" *) 
module SystemTop_neo430_top
   (uart_txd_o,
    freq_gen_o,
    gpio_o,
    pwm_o,
    clk_i,
    uart_rxd_i,
    gpio_i,
    rst_i);
  output uart_txd_o;
  output [0:0]freq_gen_o;
  output [15:0]gpio_o;
  output [0:0]pwm_o;
  input clk_i;
  input uart_rxd_i;
  input [15:0]gpio_i;
  input rst_i;

  wire acc_en;
  wire acc_en_0;
  wire clk_div0;
  wire \clk_div[0]_i_3_n_0 ;
  wire \clk_div_ff_reg_n_0_[0] ;
  wire \clk_div_ff_reg_n_0_[11] ;
  wire [11:0]clk_div_reg;
  wire \clk_div_reg[0]_i_2_n_0 ;
  wire \clk_div_reg[0]_i_2_n_1 ;
  wire \clk_div_reg[0]_i_2_n_2 ;
  wire \clk_div_reg[0]_i_2_n_3 ;
  wire \clk_div_reg[0]_i_2_n_4 ;
  wire \clk_div_reg[0]_i_2_n_5 ;
  wire \clk_div_reg[0]_i_2_n_6 ;
  wire \clk_div_reg[0]_i_2_n_7 ;
  wire \clk_div_reg[4]_i_1_n_0 ;
  wire \clk_div_reg[4]_i_1_n_1 ;
  wire \clk_div_reg[4]_i_1_n_2 ;
  wire \clk_div_reg[4]_i_1_n_3 ;
  wire \clk_div_reg[4]_i_1_n_4 ;
  wire \clk_div_reg[4]_i_1_n_5 ;
  wire \clk_div_reg[4]_i_1_n_6 ;
  wire \clk_div_reg[4]_i_1_n_7 ;
  wire \clk_div_reg[8]_i_1_n_1 ;
  wire \clk_div_reg[8]_i_1_n_2 ;
  wire \clk_div_reg[8]_i_1_n_3 ;
  wire \clk_div_reg[8]_i_1_n_4 ;
  wire \clk_div_reg[8]_i_1_n_5 ;
  wire \clk_div_reg[8]_i_1_n_6 ;
  wire \clk_div_reg[8]_i_1_n_7 ;
  wire \clk_div_reg_n_0_[3] ;
  wire \clk_div_reg_n_0_[4] ;
  wire \clk_div_reg_n_0_[7] ;
  wire \clk_div_reg_n_0_[8] ;
  wire clk_i;
  wire clkgen_en_o;
  wire [15:0]cnt_reg;
  wire [14:1]\cpu_bus[addr] ;
  wire [15:0]\cpu_bus[wdata] ;
  wire [1:0]\cpu_bus[wr_en] ;
  wire [15:0]din;
  wire dio_swap;
  wire freq_gen_cg_en;
  wire [0:0]freq_gen_o;
  wire [11:0]freq_gen_rdata;
  wire [15:0]gpio_i;
  wire [15:0]gpio_o;
  wire [15:0]gpio_rdata;
  wire irq_fire_ff;
  wire irq_o;
  wire [15:0]mem_data_i;
  wire \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13 ;
  wire \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14 ;
  wire \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15 ;
  wire \neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16 ;
  wire \neo430_control_inst/p_5_in ;
  wire \neo430_control_inst/src_nxt ;
  wire [3:1]\neo430_control_inst/state ;
  wire neo430_cpu_inst_n_1;
  wire neo430_cpu_inst_n_100;
  wire neo430_cpu_inst_n_101;
  wire neo430_cpu_inst_n_102;
  wire neo430_cpu_inst_n_103;
  wire neo430_cpu_inst_n_104;
  wire neo430_cpu_inst_n_12;
  wire neo430_cpu_inst_n_122;
  wire neo430_cpu_inst_n_123;
  wire neo430_cpu_inst_n_125;
  wire neo430_cpu_inst_n_126;
  wire neo430_cpu_inst_n_127;
  wire neo430_cpu_inst_n_128;
  wire neo430_cpu_inst_n_135;
  wire neo430_cpu_inst_n_15;
  wire neo430_cpu_inst_n_2;
  wire neo430_cpu_inst_n_3;
  wire neo430_cpu_inst_n_30;
  wire neo430_cpu_inst_n_31;
  wire neo430_cpu_inst_n_32;
  wire neo430_cpu_inst_n_35;
  wire neo430_cpu_inst_n_36;
  wire neo430_cpu_inst_n_37;
  wire neo430_cpu_inst_n_38;
  wire neo430_cpu_inst_n_39;
  wire neo430_cpu_inst_n_4;
  wire neo430_cpu_inst_n_40;
  wire neo430_cpu_inst_n_41;
  wire neo430_cpu_inst_n_42;
  wire neo430_cpu_inst_n_43;
  wire neo430_cpu_inst_n_44;
  wire neo430_cpu_inst_n_45;
  wire neo430_cpu_inst_n_46;
  wire neo430_cpu_inst_n_47;
  wire neo430_cpu_inst_n_48;
  wire neo430_cpu_inst_n_49;
  wire neo430_cpu_inst_n_50;
  wire neo430_cpu_inst_n_51;
  wire neo430_cpu_inst_n_52;
  wire neo430_cpu_inst_n_53;
  wire neo430_cpu_inst_n_54;
  wire neo430_cpu_inst_n_55;
  wire neo430_cpu_inst_n_56;
  wire neo430_cpu_inst_n_57;
  wire neo430_cpu_inst_n_58;
  wire neo430_cpu_inst_n_59;
  wire neo430_cpu_inst_n_60;
  wire neo430_cpu_inst_n_61;
  wire neo430_cpu_inst_n_62;
  wire neo430_cpu_inst_n_63;
  wire neo430_cpu_inst_n_64;
  wire neo430_cpu_inst_n_65;
  wire neo430_cpu_inst_n_66;
  wire neo430_cpu_inst_n_67;
  wire neo430_cpu_inst_n_68;
  wire neo430_cpu_inst_n_69;
  wire neo430_cpu_inst_n_7;
  wire neo430_cpu_inst_n_70;
  wire neo430_cpu_inst_n_71;
  wire neo430_cpu_inst_n_72;
  wire neo430_cpu_inst_n_73;
  wire neo430_cpu_inst_n_74;
  wire neo430_cpu_inst_n_75;
  wire neo430_cpu_inst_n_76;
  wire neo430_cpu_inst_n_77;
  wire neo430_cpu_inst_n_78;
  wire neo430_cpu_inst_n_79;
  wire neo430_cpu_inst_n_80;
  wire neo430_cpu_inst_n_81;
  wire neo430_cpu_inst_n_82;
  wire neo430_cpu_inst_n_83;
  wire neo430_cpu_inst_n_84;
  wire neo430_cpu_inst_n_85;
  wire neo430_cpu_inst_n_86;
  wire neo430_cpu_inst_n_87;
  wire neo430_cpu_inst_n_88;
  wire neo430_cpu_inst_n_89;
  wire neo430_cpu_inst_n_90;
  wire neo430_cpu_inst_n_91;
  wire neo430_cpu_inst_n_92;
  wire neo430_cpu_inst_n_93;
  wire neo430_cpu_inst_n_94;
  wire neo430_cpu_inst_n_95;
  wire neo430_cpu_inst_n_96;
  wire neo430_cpu_inst_n_97;
  wire neo430_cpu_inst_n_98;
  wire neo430_cpu_inst_n_99;
  wire neo430_dmem_inst_n_10;
  wire neo430_dmem_inst_n_11;
  wire neo430_dmem_inst_n_12;
  wire neo430_dmem_inst_n_13;
  wire neo430_dmem_inst_n_14;
  wire neo430_dmem_inst_n_15;
  wire neo430_dmem_inst_n_16;
  wire neo430_dmem_inst_n_17;
  wire neo430_dmem_inst_n_18;
  wire neo430_dmem_inst_n_6;
  wire neo430_dmem_inst_n_7;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_1 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_19 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_2 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_36 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_37 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_38 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_39 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_40 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_41 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_42 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_43 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_44 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_45 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_46 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_47 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_48 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_49 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_50 ;
  wire \neo430_gpio_inst_true.neo430_gpio_inst_n_51 ;
  wire neo430_imem_inst_n_1;
  wire neo430_imem_inst_n_10;
  wire neo430_imem_inst_n_11;
  wire neo430_imem_inst_n_12;
  wire neo430_imem_inst_n_13;
  wire neo430_imem_inst_n_14;
  wire neo430_imem_inst_n_15;
  wire neo430_imem_inst_n_16;
  wire neo430_imem_inst_n_17;
  wire neo430_imem_inst_n_18;
  wire neo430_imem_inst_n_19;
  wire neo430_imem_inst_n_20;
  wire neo430_imem_inst_n_4;
  wire neo430_imem_inst_n_5;
  wire neo430_imem_inst_n_6;
  wire neo430_imem_inst_n_8;
  wire neo430_imem_inst_n_9;
  wire \neo430_pwm_inst_true.neo430_pwm_inst_n_26 ;
  wire \neo430_pwm_inst_true.neo430_pwm_inst_n_27 ;
  wire \neo430_pwm_inst_true.neo430_pwm_inst_n_28 ;
  wire \neo430_pwm_inst_true.neo430_pwm_inst_n_29 ;
  wire neo430_sysconfig_inst_n_0;
  wire neo430_sysconfig_inst_n_1;
  wire neo430_sysconfig_inst_n_10;
  wire neo430_sysconfig_inst_n_11;
  wire neo430_sysconfig_inst_n_12;
  wire neo430_sysconfig_inst_n_13;
  wire neo430_sysconfig_inst_n_14;
  wire neo430_sysconfig_inst_n_15;
  wire neo430_sysconfig_inst_n_16;
  wire neo430_sysconfig_inst_n_17;
  wire neo430_sysconfig_inst_n_18;
  wire neo430_sysconfig_inst_n_19;
  wire neo430_sysconfig_inst_n_2;
  wire neo430_sysconfig_inst_n_20;
  wire neo430_sysconfig_inst_n_21;
  wire neo430_sysconfig_inst_n_22;
  wire neo430_sysconfig_inst_n_23;
  wire neo430_sysconfig_inst_n_24;
  wire neo430_sysconfig_inst_n_25;
  wire neo430_sysconfig_inst_n_26;
  wire neo430_sysconfig_inst_n_27;
  wire neo430_sysconfig_inst_n_28;
  wire neo430_sysconfig_inst_n_29;
  wire neo430_sysconfig_inst_n_3;
  wire neo430_sysconfig_inst_n_30;
  wire neo430_sysconfig_inst_n_31;
  wire neo430_sysconfig_inst_n_32;
  wire neo430_sysconfig_inst_n_4;
  wire neo430_sysconfig_inst_n_5;
  wire neo430_sysconfig_inst_n_6;
  wire neo430_sysconfig_inst_n_7;
  wire neo430_sysconfig_inst_n_8;
  wire neo430_sysconfig_inst_n_9;
  wire \neo430_timer_inst_true.neo430_timer_inst_n_23 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_15 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_19 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_20 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_21 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_22 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_23 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_24 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_25 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_26 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_27 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_28 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_29 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_30 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_31 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_32 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_33 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_34 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_35 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_36 ;
  wire \neo430_uart_inst_true.neo430_uart_inst_n_37 ;
  wire p_0_in;
  wire p_0_in1_in;
  wire [2:0]p_0_in_7;
  wire [1:0]p_0_in_8;
  wire p_0_out;
  wire p_10_in;
  wire p_12_in;
  wire [3:1]p_1_in;
  wire [15:0]p_1_in_5;
  wire p_1_out;
  wire p_2_in;
  wire p_2_in3_in;
  wire p_2_in_6;
  wire p_4_in;
  wire p_6_in;
  wire p_8_in;
  wire pwm_cg_en;
  wire [7:0]\pwm_ch_reg[2]_1 ;
  wire [7:0]\pwm_ch_reg[3]_2 ;
  wire [0:0]pwm_o;
  wire [15:0]pwm_rdata;
  wire [11:0]rdata_reg;
  wire [15:12]rdata_reg_2;
  wire [12:12]rdata_reg_3;
  wire rden;
  wire rden_1;
  wire rden_4;
  wire [3:3]rst_gen;
  wire rst_i;
  wire rst_i_sync0;
  wire rst_i_sync1;
  wire [15:6]sysconfig_rdata;
  wire [15:1]\sysinfo_mem[0]_0 ;
  wire timer_cg_en;
  wire [15:0]timer_rdata;
  wire [15:0]uart_rdata;
  wire uart_rxd_i;
  wire uart_tx_busy0;
  wire uart_txd_o;
  wire [3:3]\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_3 
       (.I0(clk_div_reg[0]),
        .O(\clk_div[0]_i_3_n_0 ));
  FDRE \clk_div_ff_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[0]),
        .Q(\clk_div_ff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \clk_div_ff_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[10]),
        .Q(p_12_in),
        .R(1'b0));
  FDRE \clk_div_ff_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[11]),
        .Q(\clk_div_ff_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \clk_div_ff_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[1]),
        .Q(p_2_in),
        .R(1'b0));
  FDRE \clk_div_ff_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[2]),
        .Q(p_4_in),
        .R(1'b0));
  FDRE \clk_div_ff_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[5]),
        .Q(p_6_in),
        .R(1'b0));
  FDRE \clk_div_ff_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[6]),
        .Q(p_8_in),
        .R(1'b0));
  FDRE \clk_div_ff_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(clk_div_reg[9]),
        .Q(p_10_in),
        .R(1'b0));
  FDCE \clk_div_reg[0] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[0]_i_2_n_7 ),
        .Q(clk_div_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_div_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_div_reg[0]_i_2_n_0 ,\clk_div_reg[0]_i_2_n_1 ,\clk_div_reg[0]_i_2_n_2 ,\clk_div_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_reg[0]_i_2_n_4 ,\clk_div_reg[0]_i_2_n_5 ,\clk_div_reg[0]_i_2_n_6 ,\clk_div_reg[0]_i_2_n_7 }),
        .S({\clk_div_reg_n_0_[3] ,clk_div_reg[2:1],\clk_div[0]_i_3_n_0 }));
  FDCE \clk_div_reg[10] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[8]_i_1_n_5 ),
        .Q(clk_div_reg[10]));
  FDCE \clk_div_reg[11] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[8]_i_1_n_4 ),
        .Q(clk_div_reg[11]));
  FDCE \clk_div_reg[1] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[0]_i_2_n_6 ),
        .Q(clk_div_reg[1]));
  FDCE \clk_div_reg[2] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[0]_i_2_n_5 ),
        .Q(clk_div_reg[2]));
  FDCE \clk_div_reg[3] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[0]_i_2_n_4 ),
        .Q(\clk_div_reg_n_0_[3] ));
  FDCE \clk_div_reg[4] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[4]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_div_reg[4]_i_1 
       (.CI(\clk_div_reg[0]_i_2_n_0 ),
        .CO({\clk_div_reg[4]_i_1_n_0 ,\clk_div_reg[4]_i_1_n_1 ,\clk_div_reg[4]_i_1_n_2 ,\clk_div_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[4]_i_1_n_4 ,\clk_div_reg[4]_i_1_n_5 ,\clk_div_reg[4]_i_1_n_6 ,\clk_div_reg[4]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[7] ,clk_div_reg[6:5],\clk_div_reg_n_0_[4] }));
  FDCE \clk_div_reg[5] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[4]_i_1_n_6 ),
        .Q(clk_div_reg[5]));
  FDCE \clk_div_reg[6] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[4]_i_1_n_5 ),
        .Q(clk_div_reg[6]));
  FDCE \clk_div_reg[7] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[4]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[7] ));
  FDCE \clk_div_reg[8] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[8]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_div_reg[8]_i_1 
       (.CI(\clk_div_reg[4]_i_1_n_0 ),
        .CO({\NLW_clk_div_reg[8]_i_1_CO_UNCONNECTED [3],\clk_div_reg[8]_i_1_n_1 ,\clk_div_reg[8]_i_1_n_2 ,\clk_div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[8]_i_1_n_4 ,\clk_div_reg[8]_i_1_n_5 ,\clk_div_reg[8]_i_1_n_6 ,\clk_div_reg[8]_i_1_n_7 }),
        .S({clk_div_reg[11:9],\clk_div_reg_n_0_[8] }));
  FDCE \clk_div_reg[9] 
       (.C(clk_i),
        .CE(clk_div0),
        .CLR(neo430_cpu_inst_n_135),
        .D(\clk_div_reg[8]_i_1_n_6 ),
        .Q(clk_div_reg[9]));
  SystemTop_neo430_boot_rom \neo430_boot_rom_inst_true.neo430_boot_rom_inst 
       (.ADDRARDADDR(\cpu_bus[addr] [10:1]),
        .DOADO(rdata_reg),
        .clk_i(clk_i),
        .\ir_reg[14] ({rdata_reg_2[14],rdata_reg_2[12]}),
        .rdata_reg(rdata_reg_3),
        .rdata_reg__0_0(\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14 ),
        .rdata_reg__0_1(\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15 ),
        .rdata_reg__0_2(neo430_cpu_inst_n_32),
        .rden(rden),
        .rden_0(rden_1),
        .rden_1(rden_4),
        .rden_reg_0(\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13 ),
        .rden_reg_1(\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16 ),
        .rden_reg_2(neo430_cpu_inst_n_103),
        .timer_rdata({timer_rdata[15],timer_rdata[13]}),
        .uart_rdata({uart_rdata[15],uart_rdata[13]}));
  SystemTop_neo430_cpu neo430_cpu_inst
       (.D({\sysinfo_mem[0]_0 [15:14],neo430_cpu_inst_n_7,\sysinfo_mem[0]_0 [11:10],\sysinfo_mem[0]_0 [8],\sysinfo_mem[0]_0 [6],neo430_cpu_inst_n_12,\sysinfo_mem[0]_0 [2:1],neo430_cpu_inst_n_15}),
        .E(neo430_cpu_inst_n_35),
        .\FSM_sequential_state_reg[0] (neo430_sysconfig_inst_n_30),
        .\FSM_sequential_state_reg[1] (neo430_imem_inst_n_1),
        .\FSM_sequential_state_reg[3] ({\neo430_control_inst/state [3],\neo430_control_inst/state [1]}),
        .\FSM_sequential_state_reg[3]_0 (neo430_sysconfig_inst_n_29),
        .\FSM_sequential_state_reg[3]_1 (neo430_imem_inst_n_5),
        .\FSM_sequential_state_reg[3]_2 (neo430_sysconfig_inst_n_32),
        .\FSM_sequential_state_reg[4] (neo430_sysconfig_inst_n_28),
        .Q({clkgen_en_o,p_0_in_8}),
        .SR(neo430_cpu_inst_n_126),
        .WEA(p_0_out),
        .acc_en(acc_en_0),
        .acc_en_0(acc_en),
        .\am_reg[0] (\neo430_control_inst/src_nxt ),
        .\am_reg[2] ({neo430_sysconfig_inst_n_26,neo430_sysconfig_inst_n_27,\neo430_pwm_inst_true.neo430_pwm_inst_n_26 }),
        .\am_reg[3] (neo430_imem_inst_n_6),
        .clk_i(clk_i),
        .cnt_reg(cnt_reg),
        .cnt_reg_10_sp_1(neo430_cpu_inst_n_85),
        .cnt_reg_11_sp_1(neo430_cpu_inst_n_84),
        .cnt_reg_12_sp_1(neo430_cpu_inst_n_83),
        .cnt_reg_13_sp_1(neo430_cpu_inst_n_82),
        .cnt_reg_14_sp_1(neo430_cpu_inst_n_81),
        .cnt_reg_15_sp_1(neo430_cpu_inst_n_80),
        .cnt_reg_7_sp_1(neo430_cpu_inst_n_88),
        .cnt_reg_8_sp_1(neo430_cpu_inst_n_87),
        .cnt_reg_9_sp_1(neo430_cpu_inst_n_86),
        .\cpu_bus[addr] (\cpu_bus[addr] ),
        .\cpu_bus[wr_en] (\cpu_bus[wr_en] ),
        .\ctrl_reg[0] (neo430_cpu_inst_n_95),
        .\ctrl_reg[12] (neo430_cpu_inst_n_1),
        .\ctrl_reg[12]_0 (neo430_cpu_inst_n_122),
        .\ctrl_reg[15] (\neo430_gpio_inst_true.neo430_gpio_inst_n_1 ),
        .\ctrl_reg[16] (neo430_sysconfig_inst_n_3),
        .\ctrl_reg[17] (neo430_sysconfig_inst_n_1),
        .\ctrl_reg[17]_0 (neo430_dmem_inst_n_6),
        .\ctrl_reg[17]_1 (neo430_sysconfig_inst_n_31),
        .\ctrl_reg[1] (neo430_cpu_inst_n_94),
        .\ctrl_reg[25] (neo430_cpu_inst_n_30),
        .\ctrl_reg[25]_0 (neo430_cpu_inst_n_123),
        .\ctrl_reg[25]_1 (neo430_cpu_inst_n_128),
        .\ctrl_reg[27] (neo430_cpu_inst_n_98),
        .\ctrl_reg[27]_0 (neo430_cpu_inst_n_99),
        .\ctrl_reg[27]_1 (neo430_cpu_inst_n_100),
        .\ctrl_reg[28] (neo430_cpu_inst_n_31),
        .\ctrl_reg[28]_0 (neo430_cpu_inst_n_101),
        .\ctrl_reg[28]_1 (neo430_cpu_inst_n_104),
        .\ctrl_reg[28]_2 (neo430_cpu_inst_n_125),
        .\ctrl_reg[28]_3 (neo430_cpu_inst_n_127),
        .\ctrl_reg[2] (neo430_cpu_inst_n_93),
        .\ctrl_reg[3] (neo430_cpu_inst_n_92),
        .\ctrl_reg[4] (neo430_cpu_inst_n_91),
        .\ctrl_reg[5] (neo430_cpu_inst_n_90),
        .\ctrl_reg[6] (neo430_cpu_inst_n_89),
        .\ctrl_reg[8] (neo430_cpu_inst_n_4),
        .\ctrl_reg[9] (neo430_cpu_inst_n_3),
        .\data_o_reg[15] (din),
        .\data_o_reg[15]_0 ({\neo430_gpio_inst_true.neo430_gpio_inst_n_36 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_37 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_38 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_39 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_40 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_41 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_42 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_43 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_44 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_45 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_46 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_47 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_48 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_49 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_50 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_51 }),
        .\data_o_reg[15]_1 (\pwm_ch_reg[3]_2 ),
        .\data_o_reg[6] ({p_0_in_7,p_2_in_6,p_0_in1_in,\neo430_timer_inst_true.neo430_timer_inst_n_23 ,timer_cg_en}),
        .\data_o_reg[7] (\pwm_ch_reg[2]_1 ),
        .\din_reg[15] ({neo430_cpu_inst_n_45,neo430_cpu_inst_n_46,neo430_cpu_inst_n_47,neo430_cpu_inst_n_48,neo430_cpu_inst_n_49,neo430_cpu_inst_n_50,neo430_cpu_inst_n_51,neo430_cpu_inst_n_52,neo430_cpu_inst_n_53,neo430_cpu_inst_n_54,neo430_cpu_inst_n_55,neo430_cpu_inst_n_56,neo430_cpu_inst_n_57,neo430_cpu_inst_n_58,neo430_cpu_inst_n_59,neo430_cpu_inst_n_60}),
        .dio_swap(dio_swap),
        .dio_swap_reg_0({neo430_cpu_inst_n_36,neo430_cpu_inst_n_37,neo430_cpu_inst_n_38,neo430_cpu_inst_n_39,neo430_cpu_inst_n_40,neo430_cpu_inst_n_41,neo430_cpu_inst_n_42}),
        .dio_swap_reg_1(\cpu_bus[wdata] ),
        .i__carry__1_i_5(neo430_sysconfig_inst_n_21),
        .i__carry__1_i_5_0(neo430_sysconfig_inst_n_22),
        .\irq_buf_reg[1] (\neo430_control_inst/p_5_in ),
        .\irq_buf_reg[1]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_28 ),
        .irq_fire_ff(irq_fire_ff),
        .irq_o(irq_o),
        .mem_addr_reg0_carry(neo430_sysconfig_inst_n_10),
        .mem_addr_reg0_carry__2(\neo430_pwm_inst_true.neo430_pwm_inst_n_28 ),
        .\mem_addr_reg_reg[11] (neo430_cpu_inst_n_32),
        .\mem_addr_reg_reg[11]_0 (neo430_cpu_inst_n_103),
        .\mem_addr_reg_reg[11]_1 (neo430_sysconfig_inst_n_18),
        .\mem_addr_reg_reg[15] (neo430_cpu_inst_n_102),
        .\mem_addr_reg_reg[1] (neo430_cpu_inst_n_2),
        .\mem_addr_reg_reg[1]_0 (neo430_cpu_inst_n_96),
        .\mem_addr_reg_reg[1]_1 (neo430_cpu_inst_n_97),
        .\mem_addr_reg_reg[2] (neo430_cpu_inst_n_43),
        .\mem_addr_reg_reg[2]_0 (neo430_cpu_inst_n_44),
        .\mem_addr_reg_reg[2]_1 (neo430_cpu_inst_n_77),
        .\mem_addr_reg_reg[2]_2 (neo430_cpu_inst_n_78),
        .\mem_addr_reg_reg[2]_3 (neo430_cpu_inst_n_79),
        .\mem_addr_reg_reg[7] (neo430_sysconfig_inst_n_7),
        .mem_data_i(mem_data_i),
        .\op_b_ff_reg[0] (neo430_sysconfig_inst_n_24),
        .\op_b_ff_reg[0]_0 (neo430_sysconfig_inst_n_4),
        .\op_b_ff_reg[10] (neo430_sysconfig_inst_n_19),
        .\op_b_ff_reg[11] (neo430_sysconfig_inst_n_12),
        .\op_b_ff_reg[12] (neo430_sysconfig_inst_n_9),
        .\op_b_ff_reg[13] (neo430_sysconfig_inst_n_2),
        .\op_b_ff_reg[14] (neo430_sysconfig_inst_n_6),
        .\op_b_ff_reg[15] (\neo430_pwm_inst_true.neo430_pwm_inst_n_27 ),
        .\op_b_ff_reg[1] (neo430_sysconfig_inst_n_23),
        .\op_b_ff_reg[2] (neo430_sysconfig_inst_n_17),
        .\op_b_ff_reg[3] (neo430_sysconfig_inst_n_11),
        .\op_b_ff_reg[4] (\neo430_gpio_inst_true.neo430_gpio_inst_n_2 ),
        .\op_b_ff_reg[4]_0 (neo430_sysconfig_inst_n_8),
        .\op_b_ff_reg[5] (neo430_sysconfig_inst_n_0),
        .\op_b_ff_reg[6] (neo430_sysconfig_inst_n_5),
        .\op_b_ff_reg[7] (\neo430_pwm_inst_true.neo430_pwm_inst_n_29 ),
        .\op_b_ff_reg[8] (neo430_sysconfig_inst_n_25),
        .\op_b_ff_reg[9] (neo430_sysconfig_inst_n_20),
        .p_1_in(p_1_in_5),
        .p_2_in3_in(p_2_in3_in),
        .\pwm_ch_reg[1][7] ({neo430_cpu_inst_n_61,neo430_cpu_inst_n_62,neo430_cpu_inst_n_63,neo430_cpu_inst_n_64,neo430_cpu_inst_n_65,neo430_cpu_inst_n_66,neo430_cpu_inst_n_67,neo430_cpu_inst_n_68,neo430_cpu_inst_n_69,neo430_cpu_inst_n_70,neo430_cpu_inst_n_71,neo430_cpu_inst_n_72,neo430_cpu_inst_n_73,neo430_cpu_inst_n_74,neo430_cpu_inst_n_75,neo430_cpu_inst_n_76}),
        .\rst_gen_reg[3] (neo430_cpu_inst_n_135),
        .\sam_reg[1] (\neo430_gpio_inst_true.neo430_gpio_inst_n_19 ),
        .\src_reg[3] ({neo430_sysconfig_inst_n_13,neo430_sysconfig_inst_n_14,neo430_sysconfig_inst_n_15,neo430_sysconfig_inst_n_16}),
        .\sreg_reg[0] (rst_gen),
        .\sreg_reg[15] (p_1_out),
        .uart_tx_busy0(uart_tx_busy0),
        .\uart_tx_sreg_reg[1] (\neo430_uart_inst_true.neo430_uart_inst_n_15 ),
        .\uart_tx_sreg_reg[6] ({\neo430_uart_inst_true.neo430_uart_inst_n_31 ,\neo430_uart_inst_true.neo430_uart_inst_n_32 ,\neo430_uart_inst_true.neo430_uart_inst_n_33 ,\neo430_uart_inst_true.neo430_uart_inst_n_34 ,\neo430_uart_inst_true.neo430_uart_inst_n_35 ,\neo430_uart_inst_true.neo430_uart_inst_n_36 }),
        .\uart_tx_sreg_reg[7] (\neo430_uart_inst_true.neo430_uart_inst_n_37 ),
        .\uart_tx_sreg_reg[7]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_19 ));
  SystemTop_neo430_dmem neo430_dmem_inst
       (.DOADO(rdata_reg_2),
        .E(neo430_cpu_inst_n_35),
        .Q(gpio_rdata[7]),
        .acc_en(acc_en_0),
        .\am_reg[0] (neo430_sysconfig_inst_n_1),
        .\am_reg[0]_0 (\neo430_gpio_inst_true.neo430_gpio_inst_n_2 ),
        .\am_reg[0]_1 (neo430_imem_inst_n_6),
        .clk_i(clk_i),
        .\cpu_bus[addr] (\cpu_bus[addr] [10:1]),
        .\cpu_bus[wr_en] (\cpu_bus[wr_en] ),
        .\data_o_reg[13] (\neo430_control_inst/src_nxt ),
        .dmem_file_h_reg_0(neo430_dmem_inst_n_6),
        .dmem_file_h_reg_1(neo430_dmem_inst_n_10),
        .dmem_file_h_reg_2(neo430_dmem_inst_n_11),
        .dmem_file_h_reg_3(\cpu_bus[wdata] ),
        .dmem_file_l_reg_0(neo430_dmem_inst_n_7),
        .dmem_file_l_reg_1(neo430_dmem_inst_n_12),
        .dmem_file_l_reg_2(neo430_dmem_inst_n_13),
        .dmem_file_l_reg_3(neo430_dmem_inst_n_14),
        .dmem_file_l_reg_4(neo430_dmem_inst_n_15),
        .dmem_file_l_reg_5(neo430_dmem_inst_n_16),
        .dmem_file_l_reg_6(neo430_dmem_inst_n_17),
        .dmem_file_l_reg_7(neo430_dmem_inst_n_18),
        .freq_gen_rdata(freq_gen_rdata),
        .\ir_reg[10] (neo430_imem_inst_n_11),
        .\ir_reg[10]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_30 ),
        .\ir_reg[11] (neo430_imem_inst_n_10),
        .\ir_reg[11]_0 ({pwm_rdata[11:10],pwm_rdata[8],pwm_rdata[5:0]}),
        .\ir_reg[11]_1 (\neo430_uart_inst_true.neo430_uart_inst_n_29 ),
        .mem_data_i(mem_data_i[11:10]),
        .rden(rden_1),
        .rden_reg_0(neo430_cpu_inst_n_101),
        .timer_rdata({timer_rdata[9],timer_rdata[6]}));
  SystemTop_neo430_freq_gen \neo430_freq_gen_inst_true.neo430_freq_gen_inst 
       (.D(\cpu_bus[wdata] ),
        .E(neo430_cpu_inst_n_79),
        .clk_i(clk_i),
        .\data_o_reg[11]_0 (neo430_cpu_inst_n_125),
        .freq_gen_cg_en(freq_gen_cg_en),
        .freq_gen_o(freq_gen_o),
        .freq_gen_rdata(freq_gen_rdata),
        .\nco_prsc_tick_reg[0]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_20 ),
        .\nco_prsc_tick_reg[0]_1 (\neo430_uart_inst_true.neo430_uart_inst_n_21 ),
        .\nco_prsc_tick_reg[0]_2 (\neo430_uart_inst_true.neo430_uart_inst_n_22 ),
        .\nco_prsc_tick_reg[0]_3 (\neo430_uart_inst_true.neo430_uart_inst_n_23 ),
        .\nco_prsc_tick_reg[0]_4 (\neo430_uart_inst_true.neo430_uart_inst_n_24 ),
        .\nco_prsc_tick_reg[0]_5 (\neo430_uart_inst_true.neo430_uart_inst_n_25 ),
        .\nco_prsc_tick_reg[0]_6 (\neo430_uart_inst_true.neo430_uart_inst_n_26 ),
        .\nco_prsc_tick_reg[0]_7 (\neo430_uart_inst_true.neo430_uart_inst_n_27 ),
        .\tuning_word_reg[0][15]_0 (neo430_cpu_inst_n_44));
  SystemTop_neo430_gpio \neo430_gpio_inst_true.neo430_gpio_inst 
       (.D({neo430_cpu_inst_n_45,neo430_cpu_inst_n_46,neo430_cpu_inst_n_47,neo430_cpu_inst_n_48,neo430_cpu_inst_n_49,neo430_cpu_inst_n_50,neo430_cpu_inst_n_51,neo430_cpu_inst_n_52,neo430_cpu_inst_n_53,neo430_cpu_inst_n_54,neo430_cpu_inst_n_55,neo430_cpu_inst_n_56,neo430_cpu_inst_n_57,neo430_cpu_inst_n_58,neo430_cpu_inst_n_59,neo430_cpu_inst_n_60}),
        .E(neo430_cpu_inst_n_97),
        .Q({gpio_rdata[15:13],gpio_rdata[11:6],gpio_rdata[4:0]}),
        .SR(neo430_cpu_inst_n_126),
        .clk_i(clk_i),
        .\ctrl_reg[15] (neo430_imem_inst_n_6),
        .\ctrl_reg[15]_0 (\neo430_pwm_inst_true.neo430_pwm_inst_n_27 ),
        .\data_o_reg[12]_0 (\neo430_gpio_inst_true.neo430_gpio_inst_n_1 ),
        .\data_o_reg[12]_1 (\neo430_gpio_inst_true.neo430_gpio_inst_n_2 ),
        .\data_o_reg[5]_0 (\neo430_gpio_inst_true.neo430_gpio_inst_n_19 ),
        .\din_reg[15]_0 (din),
        .\dout_reg[15]_0 ({\neo430_gpio_inst_true.neo430_gpio_inst_n_36 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_37 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_38 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_39 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_40 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_41 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_42 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_43 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_44 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_45 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_46 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_47 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_48 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_49 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_50 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_51 }),
        .\dout_reg[15]_1 (\cpu_bus[wdata] ),
        .gpio_i(gpio_i),
        .\ir_reg[12] (pwm_rdata[12]),
        .\ir_reg[12]_0 (\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_16 ),
        .\ir_reg[5] (sysconfig_rdata[6]),
        .\ir_reg[5]_0 (neo430_imem_inst_n_15),
        .\ir_reg[5]_1 (neo430_dmem_inst_n_13),
        .\irq_mask_reg[15]_0 (neo430_cpu_inst_n_77),
        .irq_o(irq_o),
        .mem_data_i({mem_data_i[12],mem_data_i[5]}),
        .timer_rdata({timer_rdata[12],timer_rdata[5]}),
        .uart_rdata({uart_rdata[12],uart_rdata[5]}));
  SystemTop_neo430_imem neo430_imem_inst
       (.DOADO({rdata_reg_2[15],rdata_reg_2[13]}),
        .\FSM_sequential_state_reg[1] (neo430_imem_inst_n_4),
        .\FSM_sequential_state_reg[1]_0 (\neo430_gpio_inst_true.neo430_gpio_inst_n_2 ),
        .\FSM_sequential_state_reg[1]_1 (neo430_dmem_inst_n_6),
        .\FSM_sequential_state_reg[1]_2 ({\neo430_control_inst/state [3],\neo430_control_inst/state [1]}),
        .\FSM_sequential_state_reg[1]_3 (neo430_sysconfig_inst_n_1),
        .\FSM_sequential_state_reg[3] (neo430_imem_inst_n_1),
        .Q(sysconfig_rdata[15:14]),
        .WEA(p_0_out),
        .acc_en(acc_en),
        .clk_i(clk_i),
        .\cpu_bus[addr] (\cpu_bus[addr] ),
        .\data_o_reg[13] (neo430_imem_inst_n_5),
        .\data_o_reg[15] (neo430_imem_inst_n_6),
        .imem_file_ram_h_reg_0_0(neo430_imem_inst_n_12),
        .imem_file_ram_h_reg_0_1(neo430_imem_inst_n_13),
        .imem_file_ram_h_reg_1_0(neo430_imem_inst_n_10),
        .imem_file_ram_h_reg_1_1(neo430_imem_inst_n_11),
        .imem_file_ram_h_reg_2_0(neo430_imem_inst_n_9),
        .imem_file_ram_h_reg_3_0(\cpu_bus[wdata] ),
        .imem_file_ram_l_reg_0_0(neo430_imem_inst_n_19),
        .imem_file_ram_l_reg_0_1(neo430_imem_inst_n_20),
        .imem_file_ram_l_reg_1_0(neo430_imem_inst_n_17),
        .imem_file_ram_l_reg_1_1(neo430_imem_inst_n_18),
        .imem_file_ram_l_reg_2_0(neo430_imem_inst_n_15),
        .imem_file_ram_l_reg_2_1(neo430_imem_inst_n_16),
        .imem_file_ram_l_reg_3_0(neo430_imem_inst_n_8),
        .imem_file_ram_l_reg_3_1(neo430_imem_inst_n_14),
        .imem_file_ram_l_reg_3_2(p_1_out),
        .\ir_reg[11] (rdata_reg),
        .\ir_reg[14] (\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_14 ),
        .\ir_reg[15] (\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_13 ),
        .\ir_reg[15]_0 (pwm_rdata[15:14]),
        .\ir_reg[15]_1 (gpio_rdata[15:14]),
        .mem_data_i(mem_data_i[15:14]),
        .rdata_reg(rdata_reg_3),
        .rden(rden_4),
        .rden_0(rden_1),
        .rden_1(rden),
        .rden_reg_0(neo430_cpu_inst_n_102),
        .timer_rdata(timer_rdata[14]),
        .uart_rdata(uart_rdata[14]));
  SystemTop_neo430_pwm \neo430_pwm_inst_true.neo430_pwm_inst 
       (.D({neo430_cpu_inst_n_61,neo430_cpu_inst_n_62,neo430_cpu_inst_n_63,neo430_cpu_inst_n_64,neo430_cpu_inst_n_65,neo430_cpu_inst_n_66,neo430_cpu_inst_n_67,neo430_cpu_inst_n_68,neo430_cpu_inst_n_69,neo430_cpu_inst_n_70,neo430_cpu_inst_n_71,neo430_cpu_inst_n_72,neo430_cpu_inst_n_73,neo430_cpu_inst_n_74,neo430_cpu_inst_n_75,neo430_cpu_inst_n_76}),
        .E(neo430_cpu_inst_n_43),
        .Q(\pwm_ch_reg[3]_2 ),
        .SR(neo430_cpu_inst_n_127),
        .\am_reg[0] (neo430_imem_inst_n_6),
        .\am_reg[0]_0 (\neo430_gpio_inst_true.neo430_gpio_inst_n_19 ),
        .\am_reg[0]_1 (neo430_sysconfig_inst_n_8),
        .clk_i(clk_i),
        .\data_o_reg[15]_0 ({pwm_rdata[15:8],pwm_rdata[6:0]}),
        .\data_o_reg[7]_0 (\neo430_pwm_inst_true.neo430_pwm_inst_n_26 ),
        .\data_o_reg[7]_1 (\neo430_pwm_inst_true.neo430_pwm_inst_n_27 ),
        .\data_o_reg[7]_2 (mem_data_i[7]),
        .dio_swap(dio_swap),
        .dio_swap_reg(\neo430_pwm_inst_true.neo430_pwm_inst_n_28 ),
        .dio_swap_reg_0(\neo430_pwm_inst_true.neo430_pwm_inst_n_29 ),
        .gpio_o(gpio_o),
        .\ir_reg[7] (sysconfig_rdata[6]),
        .\ir_reg[7]_0 (neo430_imem_inst_n_8),
        .\ir_reg[7]_1 (neo430_dmem_inst_n_7),
        .mem_data_i(mem_data_i[15]),
        .p_1_in(p_1_in_5),
        .\prsc_reg[2]_0 (neo430_cpu_inst_n_78),
        .pwm_cg_en(pwm_cg_en),
        .\pwm_ch_reg[1][7]_0 (\cpu_bus[wdata] ),
        .\pwm_ch_reg[2][0]_0 (neo430_cpu_inst_n_96),
        .\pwm_ch_reg[2][7]_0 (\pwm_ch_reg[2]_1 ),
        .\pwm_cnt_reg[0]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_22 ),
        .\pwm_cnt_reg[0]_1 (\neo430_uart_inst_true.neo430_uart_inst_n_23 ),
        .\pwm_cnt_reg[0]_2 (\neo430_uart_inst_true.neo430_uart_inst_n_20 ),
        .\pwm_cnt_reg[0]_3 (\neo430_uart_inst_true.neo430_uart_inst_n_21 ),
        .\pwm_cnt_reg[0]_4 (\neo430_uart_inst_true.neo430_uart_inst_n_24 ),
        .\pwm_cnt_reg[0]_5 (\neo430_uart_inst_true.neo430_uart_inst_n_25 ),
        .\pwm_cnt_reg[0]_6 (\neo430_uart_inst_true.neo430_uart_inst_n_26 ),
        .\pwm_cnt_reg[0]_7 (\neo430_uart_inst_true.neo430_uart_inst_n_27 ),
        .pwm_o(pwm_o),
        .\register_sr_reg[3] ({\neo430_gpio_inst_true.neo430_gpio_inst_n_36 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_37 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_38 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_39 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_40 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_41 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_42 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_43 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_44 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_45 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_46 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_47 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_48 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_49 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_50 ,\neo430_gpio_inst_true.neo430_gpio_inst_n_51 }),
        .timer_rdata(timer_rdata[7]),
        .uart_rdata(uart_rdata[7]));
  SystemTop_neo430_sysconfig neo430_sysconfig_inst
       (.D({\sysinfo_mem[0]_0 [15:14],neo430_cpu_inst_n_7,\sysinfo_mem[0]_0 [11:10],\sysinfo_mem[0]_0 [8],\sysinfo_mem[0]_0 [6],neo430_cpu_inst_n_12,\sysinfo_mem[0]_0 [2:1],neo430_cpu_inst_n_15}),
        .\FSM_sequential_state_reg[0] (neo430_imem_inst_n_4),
        .\FSM_sequential_state_reg[1] (neo430_sysconfig_inst_n_30),
        .\FSM_sequential_state_reg[4] (\neo430_gpio_inst_true.neo430_gpio_inst_n_2 ),
        .\FSM_sequential_state_reg[4]_0 (\neo430_pwm_inst_true.neo430_pwm_inst_n_27 ),
        .Q({sysconfig_rdata[15:14],sysconfig_rdata[11:10],sysconfig_rdata[6]}),
        .SR(neo430_cpu_inst_n_128),
        .\am_reg[1] (\neo430_gpio_inst_true.neo430_gpio_inst_n_19 ),
        .\am_reg[1]_0 (neo430_imem_inst_n_13),
        .\am_reg[1]_1 (neo430_dmem_inst_n_11),
        .\am_reg[1]_2 (neo430_imem_inst_n_16),
        .\am_reg[1]_3 (neo430_dmem_inst_n_14),
        .\am_reg[2] (neo430_dmem_inst_n_6),
        .clk_i(clk_i),
        .\data_o_reg[0]_0 (neo430_sysconfig_inst_n_24),
        .\data_o_reg[12] (neo430_sysconfig_inst_n_31),
        .\data_o_reg[13]_0 (neo430_sysconfig_inst_n_1),
        .\data_o_reg[13]_1 (neo430_sysconfig_inst_n_32),
        .\data_o_reg[13]_2 ({mem_data_i[13],mem_data_i[9:8],mem_data_i[6],mem_data_i[4:0]}),
        .\data_o_reg[1]_0 (neo430_sysconfig_inst_n_21),
        .\data_o_reg[1]_1 (neo430_sysconfig_inst_n_22),
        .\data_o_reg[1]_2 (neo430_sysconfig_inst_n_29),
        .\data_o_reg[2]_0 (neo430_sysconfig_inst_n_18),
        .\data_o_reg[3]_0 (neo430_sysconfig_inst_n_11),
        .\data_o_reg[3]_1 ({neo430_sysconfig_inst_n_13,neo430_sysconfig_inst_n_14,neo430_sysconfig_inst_n_15,neo430_sysconfig_inst_n_16}),
        .\data_o_reg[5] ({neo430_sysconfig_inst_n_26,neo430_sysconfig_inst_n_27}),
        .\data_o_reg[6]_0 (neo430_sysconfig_inst_n_6),
        .\data_o_reg[6]_1 (neo430_sysconfig_inst_n_8),
        .\data_o_reg[7] (neo430_sysconfig_inst_n_28),
        .\data_o_reg[8]_0 (neo430_sysconfig_inst_n_3),
        .\data_o_reg[8]_1 (neo430_sysconfig_inst_n_4),
        .dio_swap(dio_swap),
        .dio_swap_reg(neo430_sysconfig_inst_n_0),
        .dio_swap_reg_0(neo430_sysconfig_inst_n_2),
        .dio_swap_reg_1(neo430_sysconfig_inst_n_5),
        .dio_swap_reg_10(neo430_sysconfig_inst_n_25),
        .dio_swap_reg_2(neo430_sysconfig_inst_n_7),
        .dio_swap_reg_3(neo430_sysconfig_inst_n_9),
        .dio_swap_reg_4(neo430_sysconfig_inst_n_10),
        .dio_swap_reg_5(neo430_sysconfig_inst_n_12),
        .dio_swap_reg_6(neo430_sysconfig_inst_n_17),
        .dio_swap_reg_7(neo430_sysconfig_inst_n_19),
        .dio_swap_reg_8(neo430_sysconfig_inst_n_20),
        .dio_swap_reg_9(neo430_sysconfig_inst_n_23),
        .\ir_reg[0] (neo430_imem_inst_n_20),
        .\ir_reg[0]_0 (neo430_dmem_inst_n_18),
        .\ir_reg[13] ({pwm_rdata[13],pwm_rdata[9],pwm_rdata[6]}),
        .\ir_reg[13]_0 ({gpio_rdata[13],gpio_rdata[9:8],gpio_rdata[6],gpio_rdata[4:0]}),
        .\ir_reg[13]_1 (neo430_imem_inst_n_9),
        .\ir_reg[13]_2 (\neo430_boot_rom_inst_true.neo430_boot_rom_inst_n_15 ),
        .\ir_reg[1] (neo430_imem_inst_n_19),
        .\ir_reg[1]_0 (neo430_dmem_inst_n_17),
        .\ir_reg[2] (neo430_imem_inst_n_18),
        .\ir_reg[2]_0 (neo430_dmem_inst_n_16),
        .\ir_reg[3] (neo430_imem_inst_n_17),
        .\ir_reg[3]_0 (neo430_dmem_inst_n_15),
        .\ir_reg[6] (neo430_imem_inst_n_14),
        .\ir_reg[6]_0 (neo430_dmem_inst_n_12),
        .\ir_reg[9] (neo430_imem_inst_n_12),
        .\ir_reg[9]_0 (neo430_dmem_inst_n_10),
        .mem_data_i({mem_data_i[15:14],mem_data_i[11:10]}),
        .\src_reg[3] (neo430_imem_inst_n_6),
        .timer_rdata({timer_rdata[8],timer_rdata[4:0]}),
        .uart_rdata({uart_rdata[9:8],uart_rdata[6],uart_rdata[4:0]}));
  SystemTop_neo430_timer \neo430_timer_inst_true.neo430_timer_inst 
       (.E(neo430_cpu_inst_n_99),
        .Q({p_0_in_7,p_2_in_6,p_0_in1_in,\neo430_timer_inst_true.neo430_timer_inst_n_23 ,timer_cg_en}),
        .clk_div0(clk_div0),
        .\clk_div_reg[0] (clkgen_en_o),
        .clk_i(clk_i),
        .cnt_reg(cnt_reg),
        .\data_o_reg[0]_0 (neo430_cpu_inst_n_30),
        .\data_o_reg[0]_1 (neo430_cpu_inst_n_95),
        .\data_o_reg[10]_0 (neo430_cpu_inst_n_85),
        .\data_o_reg[11]_0 (neo430_cpu_inst_n_84),
        .\data_o_reg[12]_0 (neo430_cpu_inst_n_83),
        .\data_o_reg[13]_0 (neo430_cpu_inst_n_82),
        .\data_o_reg[14]_0 (neo430_cpu_inst_n_81),
        .\data_o_reg[15]_0 (neo430_cpu_inst_n_80),
        .\data_o_reg[1]_0 (neo430_cpu_inst_n_94),
        .\data_o_reg[2]_0 (neo430_cpu_inst_n_93),
        .\data_o_reg[3]_0 (neo430_cpu_inst_n_92),
        .\data_o_reg[4]_0 (neo430_cpu_inst_n_91),
        .\data_o_reg[5]_0 (neo430_cpu_inst_n_90),
        .\data_o_reg[6]_0 (neo430_cpu_inst_n_89),
        .\data_o_reg[7]_0 (neo430_cpu_inst_n_88),
        .\data_o_reg[8]_0 (neo430_cpu_inst_n_87),
        .\data_o_reg[9]_0 (neo430_cpu_inst_n_86),
        .freq_gen_cg_en(freq_gen_cg_en),
        .irq_fire_ff(irq_fire_ff),
        .p_2_in3_in(p_2_in3_in),
        .prsc_tick_reg_0(\neo430_uart_inst_true.neo430_uart_inst_n_22 ),
        .prsc_tick_reg_1(\neo430_uart_inst_true.neo430_uart_inst_n_23 ),
        .prsc_tick_reg_2(\neo430_uart_inst_true.neo430_uart_inst_n_20 ),
        .prsc_tick_reg_3(\neo430_uart_inst_true.neo430_uart_inst_n_21 ),
        .prsc_tick_reg_4(\neo430_uart_inst_true.neo430_uart_inst_n_26 ),
        .prsc_tick_reg_5(\neo430_uart_inst_true.neo430_uart_inst_n_27 ),
        .prsc_tick_reg_6(\neo430_uart_inst_true.neo430_uart_inst_n_24 ),
        .prsc_tick_reg_7(\neo430_uart_inst_true.neo430_uart_inst_n_25 ),
        .pwm_cg_en(pwm_cg_en),
        .\thres_reg[15]_0 (\cpu_bus[wdata] ),
        .\thres_reg[15]_1 (neo430_cpu_inst_n_98),
        .timer_rdata(timer_rdata));
  SystemTop_neo430_uart \neo430_uart_inst_true.neo430_uart_inst 
       (.D({clk_div_reg[11:9],clk_div_reg[6:5],clk_div_reg[2:0]}),
        .E(neo430_cpu_inst_n_100),
        .Q({clkgen_en_o,p_0_in_8}),
        .\clk_div_ff_reg[0] (\neo430_uart_inst_true.neo430_uart_inst_n_23 ),
        .\clk_div_ff_reg[10] (\neo430_uart_inst_true.neo430_uart_inst_n_25 ),
        .\clk_div_ff_reg[11] (\neo430_uart_inst_true.neo430_uart_inst_n_24 ),
        .\clk_div_ff_reg[1] (\neo430_uart_inst_true.neo430_uart_inst_n_22 ),
        .\clk_div_ff_reg[2] (\neo430_uart_inst_true.neo430_uart_inst_n_21 ),
        .\clk_div_ff_reg[5] (\neo430_uart_inst_true.neo430_uart_inst_n_20 ),
        .\clk_div_ff_reg[6] (\neo430_uart_inst_true.neo430_uart_inst_n_27 ),
        .\clk_div_ff_reg[9] (\neo430_uart_inst_true.neo430_uart_inst_n_26 ),
        .clk_i(clk_i),
        .\ctrl_reg[14]_0 ({\cpu_bus[wdata] [14:12],\cpu_bus[wdata] [10:0]}),
        .\data_o_reg[0]_0 (neo430_cpu_inst_n_2),
        .\data_o_reg[10]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_30 ),
        .\data_o_reg[11]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_29 ),
        .\data_o_reg[12]_0 (neo430_cpu_inst_n_1),
        .\data_o_reg[15]_0 ({uart_rdata[15:12],uart_rdata[9:0]}),
        .\data_o_reg[15]_1 (neo430_cpu_inst_n_104),
        .\data_o_reg[8]_0 (neo430_cpu_inst_n_4),
        .\data_o_reg[9]_0 (neo430_cpu_inst_n_3),
        .\ir_reg[11] (gpio_rdata[11:10]),
        .\ir_reg[11]_0 (sysconfig_rdata[11:10]),
        .\irq_buf_reg[1] (\neo430_control_inst/p_5_in ),
        .\nco_prsc_tick[0]_i_3 ({\clk_div_ff_reg_n_0_[11] ,p_12_in,p_10_in,p_8_in,p_6_in,p_4_in,p_2_in,\clk_div_ff_reg_n_0_[0] }),
        .timer_rdata(timer_rdata[11:10]),
        .\uart_rx_avail_reg[1]_0 (neo430_cpu_inst_n_31),
        .\uart_rx_avail_reg[1]_1 (neo430_cpu_inst_n_123),
        .uart_rx_busy_ff_reg_0(\neo430_uart_inst_true.neo430_uart_inst_n_28 ),
        .uart_rxd_i(uart_rxd_i),
        .\uart_tx_baud_cnt_reg[7]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_19 ),
        .uart_tx_busy0(uart_tx_busy0),
        .uart_tx_busy_reg_0(\neo430_uart_inst_true.neo430_uart_inst_n_15 ),
        .\uart_tx_sreg_reg[7]_0 ({\neo430_uart_inst_true.neo430_uart_inst_n_31 ,\neo430_uart_inst_true.neo430_uart_inst_n_32 ,\neo430_uart_inst_true.neo430_uart_inst_n_33 ,\neo430_uart_inst_true.neo430_uart_inst_n_34 ,\neo430_uart_inst_true.neo430_uart_inst_n_35 ,\neo430_uart_inst_true.neo430_uart_inst_n_36 }),
        .\uart_tx_sreg_reg[7]_1 (neo430_cpu_inst_n_122),
        .\uart_tx_sreg_reg[7]_2 ({neo430_cpu_inst_n_36,neo430_cpu_inst_n_37,neo430_cpu_inst_n_38,neo430_cpu_inst_n_39,neo430_cpu_inst_n_40,neo430_cpu_inst_n_41,neo430_cpu_inst_n_42}),
        .\uart_tx_sreg_reg[8]_0 (\neo430_uart_inst_true.neo430_uart_inst_n_37 ),
        .uart_txd_o(uart_txd_o));
  LUT1 #(
    .INIT(2'h1)) 
    \rst_gen[3]_i_1 
       (.I0(rst_i_sync1),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rst_gen_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(1'b1),
        .Q(p_1_in[1]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rst_gen_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(p_1_in[2]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rst_gen_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(p_1_in[3]),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rst_gen_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(rst_gen),
        .R(p_0_in));
  FDRE rst_i_sync0_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(rst_i),
        .Q(rst_i_sync0),
        .R(1'b0));
  FDRE rst_i_sync1_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(rst_i_sync0),
        .Q(rst_i_sync1),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_neo430_top_0_0,neo430_top,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "neo430_top,Vivado 2021.2" *) 
module SystemTop_neo430_top_0_0
   (clk_i,
    rst_i,
    gpio_o,
    gpio_i,
    pwm_o,
    freq_gen_o,
    uart_txd_o,
    uart_rxd_i,
    spi_sclk_o,
    spi_mosi_o,
    spi_miso_i,
    spi_cs_o,
    twi_sda_io,
    twi_scl_io,
    wb_adr_o,
    wb_dat_i,
    wb_dat_o,
    wb_we_o,
    wb_sel_o,
    wb_stb_o,
    wb_cyc_o,
    wb_ack_i,
    ext_irq_i,
    ext_ack_o);
  input clk_i;
  input rst_i;
  output [15:0]gpio_o;
  input [15:0]gpio_i;
  output [3:0]pwm_o;
  output [2:0]freq_gen_o;
  output uart_txd_o;
  input uart_rxd_i;
  output spi_sclk_o;
  output spi_mosi_o;
  input spi_miso_i;
  output [5:0]spi_cs_o;
  inout twi_sda_io;
  inout twi_scl_io;
  output [31:0]wb_adr_o;
  input [31:0]wb_dat_i;
  output [31:0]wb_dat_o;
  output wb_we_o;
  output [3:0]wb_sel_o;
  output wb_stb_o;
  output wb_cyc_o;
  input wb_ack_i;
  input [7:0]ext_irq_i;
  output [7:0]ext_ack_o;

  wire \<const0> ;
  wire clk_i;
  wire [0:0]\^freq_gen_o ;
  wire [15:0]gpio_i;
  wire [15:0]gpio_o;
  wire [0:0]\^pwm_o ;
  wire rst_i;
  wire uart_rxd_i;
  wire uart_txd_o;

  assign ext_ack_o[7] = \<const0> ;
  assign ext_ack_o[6] = \<const0> ;
  assign ext_ack_o[5] = \<const0> ;
  assign ext_ack_o[4] = \<const0> ;
  assign ext_ack_o[3] = \<const0> ;
  assign ext_ack_o[2] = \<const0> ;
  assign ext_ack_o[1] = \<const0> ;
  assign ext_ack_o[0] = \<const0> ;
  assign freq_gen_o[2] = \<const0> ;
  assign freq_gen_o[1] = \<const0> ;
  assign freq_gen_o[0] = \^freq_gen_o [0];
  assign pwm_o[3] = \<const0> ;
  assign pwm_o[2] = \<const0> ;
  assign pwm_o[1] = \<const0> ;
  assign pwm_o[0] = \^pwm_o [0];
  assign spi_cs_o[5] = \<const0> ;
  assign spi_cs_o[4] = \<const0> ;
  assign spi_cs_o[3] = \<const0> ;
  assign spi_cs_o[2] = \<const0> ;
  assign spi_cs_o[1] = \<const0> ;
  assign spi_cs_o[0] = \<const0> ;
  assign spi_mosi_o = \<const0> ;
  assign spi_sclk_o = \<const0> ;
  assign wb_adr_o[31] = \<const0> ;
  assign wb_adr_o[30] = \<const0> ;
  assign wb_adr_o[29] = \<const0> ;
  assign wb_adr_o[28] = \<const0> ;
  assign wb_adr_o[27] = \<const0> ;
  assign wb_adr_o[26] = \<const0> ;
  assign wb_adr_o[25] = \<const0> ;
  assign wb_adr_o[24] = \<const0> ;
  assign wb_adr_o[23] = \<const0> ;
  assign wb_adr_o[22] = \<const0> ;
  assign wb_adr_o[21] = \<const0> ;
  assign wb_adr_o[20] = \<const0> ;
  assign wb_adr_o[19] = \<const0> ;
  assign wb_adr_o[18] = \<const0> ;
  assign wb_adr_o[17] = \<const0> ;
  assign wb_adr_o[16] = \<const0> ;
  assign wb_adr_o[15] = \<const0> ;
  assign wb_adr_o[14] = \<const0> ;
  assign wb_adr_o[13] = \<const0> ;
  assign wb_adr_o[12] = \<const0> ;
  assign wb_adr_o[11] = \<const0> ;
  assign wb_adr_o[10] = \<const0> ;
  assign wb_adr_o[9] = \<const0> ;
  assign wb_adr_o[8] = \<const0> ;
  assign wb_adr_o[7] = \<const0> ;
  assign wb_adr_o[6] = \<const0> ;
  assign wb_adr_o[5] = \<const0> ;
  assign wb_adr_o[4] = \<const0> ;
  assign wb_adr_o[3] = \<const0> ;
  assign wb_adr_o[2] = \<const0> ;
  assign wb_adr_o[1] = \<const0> ;
  assign wb_adr_o[0] = \<const0> ;
  assign wb_cyc_o = \<const0> ;
  assign wb_dat_o[31] = \<const0> ;
  assign wb_dat_o[30] = \<const0> ;
  assign wb_dat_o[29] = \<const0> ;
  assign wb_dat_o[28] = \<const0> ;
  assign wb_dat_o[27] = \<const0> ;
  assign wb_dat_o[26] = \<const0> ;
  assign wb_dat_o[25] = \<const0> ;
  assign wb_dat_o[24] = \<const0> ;
  assign wb_dat_o[23] = \<const0> ;
  assign wb_dat_o[22] = \<const0> ;
  assign wb_dat_o[21] = \<const0> ;
  assign wb_dat_o[20] = \<const0> ;
  assign wb_dat_o[19] = \<const0> ;
  assign wb_dat_o[18] = \<const0> ;
  assign wb_dat_o[17] = \<const0> ;
  assign wb_dat_o[16] = \<const0> ;
  assign wb_dat_o[15] = \<const0> ;
  assign wb_dat_o[14] = \<const0> ;
  assign wb_dat_o[13] = \<const0> ;
  assign wb_dat_o[12] = \<const0> ;
  assign wb_dat_o[11] = \<const0> ;
  assign wb_dat_o[10] = \<const0> ;
  assign wb_dat_o[9] = \<const0> ;
  assign wb_dat_o[8] = \<const0> ;
  assign wb_dat_o[7] = \<const0> ;
  assign wb_dat_o[6] = \<const0> ;
  assign wb_dat_o[5] = \<const0> ;
  assign wb_dat_o[4] = \<const0> ;
  assign wb_dat_o[3] = \<const0> ;
  assign wb_dat_o[2] = \<const0> ;
  assign wb_dat_o[1] = \<const0> ;
  assign wb_dat_o[0] = \<const0> ;
  assign wb_sel_o[3] = \<const0> ;
  assign wb_sel_o[2] = \<const0> ;
  assign wb_sel_o[1] = \<const0> ;
  assign wb_sel_o[0] = \<const0> ;
  assign wb_stb_o = \<const0> ;
  assign wb_we_o = \<const0> ;
  GND GND
       (.G(\<const0> ));
  SystemTop_neo430_top U0
       (.clk_i(clk_i),
        .freq_gen_o(\^freq_gen_o ),
        .gpio_i(gpio_i),
        .gpio_o(gpio_o),
        .pwm_o(\^pwm_o ),
        .rst_i(rst_i),
        .uart_rxd_i(uart_rxd_i),
        .uart_txd_o(uart_txd_o));
endmodule

(* ORIG_REF_NAME = "neo430_uart" *) 
module SystemTop_neo430_uart
   (\data_o_reg[15]_0 ,
    uart_txd_o,
    uart_tx_busy_reg_0,
    Q,
    \uart_tx_baud_cnt_reg[7]_0 ,
    \clk_div_ff_reg[5] ,
    \clk_div_ff_reg[2] ,
    \clk_div_ff_reg[1] ,
    \clk_div_ff_reg[0] ,
    \clk_div_ff_reg[11] ,
    \clk_div_ff_reg[10] ,
    \clk_div_ff_reg[9] ,
    \clk_div_ff_reg[6] ,
    uart_rx_busy_ff_reg_0,
    \data_o_reg[11]_0 ,
    \data_o_reg[10]_0 ,
    \uart_tx_sreg_reg[7]_0 ,
    \uart_tx_sreg_reg[8]_0 ,
    clk_i,
    \data_o_reg[15]_1 ,
    \data_o_reg[12]_0 ,
    \data_o_reg[9]_0 ,
    \data_o_reg[8]_0 ,
    uart_tx_busy0,
    \data_o_reg[0]_0 ,
    \nco_prsc_tick[0]_i_3 ,
    D,
    \irq_buf_reg[1] ,
    timer_rdata,
    \ir_reg[11] ,
    \ir_reg[11]_0 ,
    E,
    \ctrl_reg[14]_0 ,
    uart_rxd_i,
    \uart_rx_avail_reg[1]_0 ,
    \uart_rx_avail_reg[1]_1 ,
    \uart_tx_sreg_reg[7]_1 ,
    \uart_tx_sreg_reg[7]_2 );
  output [13:0]\data_o_reg[15]_0 ;
  output uart_txd_o;
  output uart_tx_busy_reg_0;
  output [2:0]Q;
  output \uart_tx_baud_cnt_reg[7]_0 ;
  output \clk_div_ff_reg[5] ;
  output \clk_div_ff_reg[2] ;
  output \clk_div_ff_reg[1] ;
  output \clk_div_ff_reg[0] ;
  output \clk_div_ff_reg[11] ;
  output \clk_div_ff_reg[10] ;
  output \clk_div_ff_reg[9] ;
  output \clk_div_ff_reg[6] ;
  output uart_rx_busy_ff_reg_0;
  output \data_o_reg[11]_0 ;
  output \data_o_reg[10]_0 ;
  output [5:0]\uart_tx_sreg_reg[7]_0 ;
  output \uart_tx_sreg_reg[8]_0 ;
  input clk_i;
  input \data_o_reg[15]_1 ;
  input \data_o_reg[12]_0 ;
  input \data_o_reg[9]_0 ;
  input \data_o_reg[8]_0 ;
  input uart_tx_busy0;
  input \data_o_reg[0]_0 ;
  input [7:0]\nco_prsc_tick[0]_i_3 ;
  input [7:0]D;
  input [0:0]\irq_buf_reg[1] ;
  input [1:0]timer_rdata;
  input [1:0]\ir_reg[11] ;
  input [1:0]\ir_reg[11]_0 ;
  input [0:0]E;
  input [13:0]\ctrl_reg[14]_0 ;
  input uart_rxd_i;
  input \uart_rx_avail_reg[1]_0 ;
  input \uart_rx_avail_reg[1]_1 ;
  input [0:0]\uart_tx_sreg_reg[7]_1 ;
  input [6:0]\uart_tx_sreg_reg[7]_2 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire \clk_div_ff_reg[0] ;
  wire \clk_div_ff_reg[10] ;
  wire \clk_div_ff_reg[11] ;
  wire \clk_div_ff_reg[1] ;
  wire \clk_div_ff_reg[2] ;
  wire \clk_div_ff_reg[5] ;
  wire \clk_div_ff_reg[6] ;
  wire \clk_div_ff_reg[9] ;
  wire clk_i;
  wire [13:0]\ctrl_reg[14]_0 ;
  wire \ctrl_reg_n_0_[0] ;
  wire \data_o[0]_i_1_n_0 ;
  wire \data_o[10]_i_1__0_n_0 ;
  wire \data_o[11]_i_1_n_0 ;
  wire \data_o[13]_i_1_n_0 ;
  wire \data_o[14]_i_1_n_0 ;
  wire \data_o[15]_i_2_n_0 ;
  wire \data_o[1]_i_1_n_0 ;
  wire \data_o[2]_i_1__0_n_0 ;
  wire \data_o[3]_i_1_n_0 ;
  wire \data_o[4]_i_1_n_0 ;
  wire \data_o[5]_i_1_n_0 ;
  wire \data_o[6]_i_1__0_n_0 ;
  wire \data_o[7]_i_1_n_0 ;
  wire \data_o_reg[0]_0 ;
  wire \data_o_reg[10]_0 ;
  wire \data_o_reg[11]_0 ;
  wire \data_o_reg[12]_0 ;
  wire [13:0]\data_o_reg[15]_0 ;
  wire \data_o_reg[15]_1 ;
  wire \data_o_reg[8]_0 ;
  wire \data_o_reg[9]_0 ;
  wire [1:0]\ir_reg[11] ;
  wire [1:0]\ir_reg[11]_0 ;
  wire [0:0]\irq_buf_reg[1] ;
  wire [3:0]minusOp;
  wire [3:0]minusOp__0;
  wire [7:0]\nco_prsc_tick[0]_i_3 ;
  wire [2:2]p_0_in;
  wire p_0_in11_in;
  wire [3:2]p_0_in__0;
  wire [7:0]p_1_in;
  wire p_1_in13_in;
  wire [6:0]p_2_in;
  wire [1:0]timer_rdata;
  wire [11:10]uart_rdata;
  wire uart_rx_avail19_out;
  wire \uart_rx_avail[0]_i_1_n_0 ;
  wire \uart_rx_avail[1]_i_1_n_0 ;
  wire \uart_rx_avail[1]_i_2_n_0 ;
  wire \uart_rx_avail[1]_i_5_n_0 ;
  wire \uart_rx_avail_reg[1]_0 ;
  wire \uart_rx_avail_reg[1]_1 ;
  wire \uart_rx_avail_reg_n_0_[0] ;
  wire \uart_rx_avail_reg_n_0_[1] ;
  wire \uart_rx_baud_cnt[0]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[1]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[1]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[2]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[2]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[2]_i_3_n_0 ;
  wire \uart_rx_baud_cnt[2]_i_4_n_0 ;
  wire \uart_rx_baud_cnt[3]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[3]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[4]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[4]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[5]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[5]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[6]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_1_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_2_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_4_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_5_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_6_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_7_n_0 ;
  wire \uart_rx_baud_cnt[7]_i_8_n_0 ;
  wire \uart_rx_baud_cnt_reg[7]_i_3_n_0 ;
  wire \uart_rx_baud_cnt_reg_n_0_[0] ;
  wire \uart_rx_baud_cnt_reg_n_0_[1] ;
  wire \uart_rx_baud_cnt_reg_n_0_[2] ;
  wire \uart_rx_baud_cnt_reg_n_0_[3] ;
  wire \uart_rx_baud_cnt_reg_n_0_[4] ;
  wire \uart_rx_baud_cnt_reg_n_0_[5] ;
  wire \uart_rx_baud_cnt_reg_n_0_[6] ;
  wire \uart_rx_baud_cnt_reg_n_0_[7] ;
  wire \uart_rx_bitcnt[1]_i_1_n_0 ;
  wire \uart_rx_bitcnt[3]_i_2_n_0 ;
  wire [3:0]uart_rx_bitcnt_reg;
  wire uart_rx_busy1;
  wire uart_rx_busy_ff;
  wire uart_rx_busy_ff_reg_0;
  wire uart_rx_busy_i_1_n_0;
  wire uart_rx_busy_reg_n_0;
  wire \uart_rx_reg[7]_i_1_n_0 ;
  wire \uart_rx_reg[7]_i_2_n_0 ;
  wire \uart_rx_reg[7]_i_3_n_0 ;
  wire \uart_rx_reg[7]_i_4_n_0 ;
  wire \uart_rx_reg[7]_i_5_n_0 ;
  wire \uart_rx_reg_reg_n_0_[0] ;
  wire \uart_rx_reg_reg_n_0_[1] ;
  wire \uart_rx_reg_reg_n_0_[2] ;
  wire \uart_rx_reg_reg_n_0_[3] ;
  wire \uart_rx_reg_reg_n_0_[4] ;
  wire \uart_rx_reg_reg_n_0_[5] ;
  wire \uart_rx_reg_reg_n_0_[6] ;
  wire \uart_rx_reg_reg_n_0_[7] ;
  wire \uart_rx_sreg[8]_i_1_n_0 ;
  wire [2:0]uart_rx_sync;
  wire uart_rxd_i;
  wire \uart_tx_baud_cnt[0]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[1]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[2]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[2]_i_2_n_0 ;
  wire \uart_tx_baud_cnt[2]_i_3_n_0 ;
  wire \uart_tx_baud_cnt[3]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[4]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[4]_i_2_n_0 ;
  wire \uart_tx_baud_cnt[4]_i_3_n_0 ;
  wire \uart_tx_baud_cnt[5]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[5]_i_2_n_0 ;
  wire \uart_tx_baud_cnt[5]_i_3_n_0 ;
  wire \uart_tx_baud_cnt[6]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[7]_i_1_n_0 ;
  wire \uart_tx_baud_cnt[7]_i_2_n_0 ;
  wire \uart_tx_baud_cnt[7]_i_3_n_0 ;
  wire \uart_tx_baud_cnt_reg[7]_0 ;
  wire \uart_tx_baud_cnt_reg_n_0_[0] ;
  wire \uart_tx_baud_cnt_reg_n_0_[1] ;
  wire \uart_tx_baud_cnt_reg_n_0_[2] ;
  wire \uart_tx_baud_cnt_reg_n_0_[3] ;
  wire \uart_tx_baud_cnt_reg_n_0_[4] ;
  wire \uart_tx_baud_cnt_reg_n_0_[5] ;
  wire \uart_tx_baud_cnt_reg_n_0_[6] ;
  wire \uart_tx_baud_cnt_reg_n_0_[7] ;
  wire \uart_tx_bitcnt[1]_i_1_n_0 ;
  wire [3:0]uart_tx_bitcnt_reg;
  wire uart_tx_busy0;
  wire uart_tx_busy_i_1_n_0;
  wire uart_tx_busy_i_3_n_0;
  wire uart_tx_busy_reg_0;
  wire uart_tx_done0;
  wire uart_tx_done_i_1_n_0;
  wire uart_tx_done_reg_n_0;
  wire \uart_tx_sreg[0]_i_1_n_0 ;
  wire \uart_tx_sreg[8]_i_1_n_0 ;
  wire [5:0]\uart_tx_sreg_reg[7]_0 ;
  wire [0:0]\uart_tx_sreg_reg[7]_1 ;
  wire [6:0]\uart_tx_sreg_reg[7]_2 ;
  wire \uart_tx_sreg_reg[8]_0 ;
  wire \uart_tx_sreg_reg_n_0_[0] ;
  wire \uart_tx_sreg_reg_n_0_[1] ;
  wire uart_txd_o;

  FDRE \ctrl_reg[0] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [0]),
        .Q(\ctrl_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ctrl_reg[10] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [10]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \ctrl_reg[12] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [11]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \ctrl_reg[13] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [12]),
        .Q(p_1_in13_in),
        .R(1'b0));
  FDRE \ctrl_reg[14] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [13]),
        .Q(p_0_in11_in),
        .R(1'b0));
  FDRE \ctrl_reg[1] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [1]),
        .Q(p_2_in[0]),
        .R(1'b0));
  FDRE \ctrl_reg[2] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [2]),
        .Q(p_2_in[1]),
        .R(1'b0));
  FDRE \ctrl_reg[3] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [3]),
        .Q(p_2_in[2]),
        .R(1'b0));
  FDRE \ctrl_reg[4] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [4]),
        .Q(p_2_in[3]),
        .R(1'b0));
  FDRE \ctrl_reg[5] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [5]),
        .Q(p_2_in[4]),
        .R(1'b0));
  FDRE \ctrl_reg[6] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [6]),
        .Q(p_2_in[5]),
        .R(1'b0));
  FDRE \ctrl_reg[7] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [7]),
        .Q(p_2_in[6]),
        .R(1'b0));
  FDRE \ctrl_reg[8] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [8]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ctrl_reg[9] 
       (.C(clk_i),
        .CE(E),
        .D(\ctrl_reg[14]_0 [9]),
        .Q(Q[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[0]_i_1 
       (.I0(\ctrl_reg_n_0_[0] ),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[0] ),
        .O(\data_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[10]_i_1__0 
       (.I0(p_0_in),
        .I1(\data_o_reg[0]_0 ),
        .O(\data_o[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \data_o[11]_i_1 
       (.I0(\data_o_reg[0]_0 ),
        .I1(\uart_rx_avail_reg_n_0_[1] ),
        .I2(\uart_rx_avail_reg_n_0_[0] ),
        .O(\data_o[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[13]_i_1 
       (.I0(p_1_in13_in),
        .I1(\data_o_reg[0]_0 ),
        .O(\data_o[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_o[14]_i_1 
       (.I0(p_0_in11_in),
        .I1(\data_o_reg[0]_0 ),
        .O(\data_o[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[15]_i_2 
       (.I0(uart_tx_busy_reg_0),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_avail_reg_n_0_[0] ),
        .O(\data_o[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[1]_i_1 
       (.I0(p_2_in[0]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[1] ),
        .O(\data_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[2]_i_1__0 
       (.I0(p_2_in[1]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[2] ),
        .O(\data_o[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[3]_i_1 
       (.I0(p_2_in[2]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[3] ),
        .O(\data_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[4]_i_1 
       (.I0(p_2_in[3]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[4] ),
        .O(\data_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[5]_i_1 
       (.I0(p_2_in[4]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[5] ),
        .O(\data_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[6]_i_1__0 
       (.I0(p_2_in[5]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[6] ),
        .O(\data_o[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_o[7]_i_1 
       (.I0(p_2_in[6]),
        .I1(\data_o_reg[0]_0 ),
        .I2(\uart_rx_reg_reg_n_0_[7] ),
        .O(\data_o[7]_i_1_n_0 ));
  FDRE \data_o_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[0]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [0]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[10]_i_1__0_n_0 ),
        .Q(uart_rdata[10]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[11]_i_1_n_0 ),
        .Q(uart_rdata[11]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[12] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[12]_0 ),
        .Q(\data_o_reg[15]_0 [10]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[13] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[13]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [11]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[14] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[14]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [12]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[15] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[15]_i_2_n_0 ),
        .Q(\data_o_reg[15]_0 [13]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[1]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [1]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[2]_i_1__0_n_0 ),
        .Q(\data_o_reg[15]_0 [2]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[3]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [3]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[4]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [4]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[5]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [5]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[6]_i_1__0_n_0 ),
        .Q(\data_o_reg[15]_0 [6]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o[7]_i_1_n_0 ),
        .Q(\data_o_reg[15]_0 [7]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[8]_0 ),
        .Q(\data_o_reg[15]_0 [8]),
        .R(\data_o_reg[15]_1 ));
  FDRE \data_o_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\data_o_reg[9]_0 ),
        .Q(\data_o_reg[15]_0 [9]),
        .R(\data_o_reg[15]_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ir[10]_i_3 
       (.I0(uart_rdata[10]),
        .I1(timer_rdata[0]),
        .I2(\ir_reg[11] [0]),
        .I3(\ir_reg[11]_0 [0]),
        .O(\data_o_reg[10]_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ir[11]_i_3 
       (.I0(uart_rdata[11]),
        .I1(timer_rdata[1]),
        .I2(\ir_reg[11] [1]),
        .I3(\ir_reg[11]_0 [1]),
        .O(\data_o_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000000000DFDFDF)) 
    \irq_buf[1]_i_2 
       (.I0(uart_rx_busy_ff),
        .I1(uart_rx_busy_reg_n_0),
        .I2(p_1_in13_in),
        .I3(uart_tx_done_reg_n_0),
        .I4(p_0_in11_in),
        .I5(\irq_buf_reg[1] ),
        .O(uart_rx_busy_ff_reg_0));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_10
       (.I0(\nco_prsc_tick[0]_i_3 [7]),
        .I1(D[7]),
        .O(\clk_div_ff_reg[11] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_11
       (.I0(\nco_prsc_tick[0]_i_3 [6]),
        .I1(D[6]),
        .O(\clk_div_ff_reg[10] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_4
       (.I0(\nco_prsc_tick[0]_i_3 [1]),
        .I1(D[1]),
        .O(\clk_div_ff_reg[1] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_5
       (.I0(\nco_prsc_tick[0]_i_3 [0]),
        .I1(D[0]),
        .O(\clk_div_ff_reg[0] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_6
       (.I0(\nco_prsc_tick[0]_i_3 [3]),
        .I1(D[3]),
        .O(\clk_div_ff_reg[5] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_7
       (.I0(\nco_prsc_tick[0]_i_3 [2]),
        .I1(D[2]),
        .O(\clk_div_ff_reg[2] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_8
       (.I0(\nco_prsc_tick[0]_i_3 [5]),
        .I1(D[5]),
        .O(\clk_div_ff_reg[9] ));
  LUT2 #(
    .INIT(4'hB)) 
    prsc_tick_i_9
       (.I0(\nco_prsc_tick[0]_i_3 [4]),
        .I1(D[4]),
        .O(\clk_div_ff_reg[6] ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E000E0E0)) 
    \uart_rx_avail[0]_i_1 
       (.I0(\uart_rx_avail_reg_n_0_[0] ),
        .I1(uart_rx_avail19_out),
        .I2(Q[2]),
        .I3(\uart_rx_avail_reg[1]_0 ),
        .I4(\uart_rx_avail_reg[1]_1 ),
        .I5(\uart_rx_avail[1]_i_5_n_0 ),
        .O(\uart_rx_avail[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \uart_rx_avail[0]_i_2 
       (.I0(uart_rx_busy_ff),
        .I1(uart_rx_busy_reg_n_0),
        .O(uart_rx_avail19_out));
  LUT5 #(
    .INIT(32'h88888088)) 
    \uart_rx_avail[1]_i_1 
       (.I0(\uart_rx_avail[1]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(\uart_rx_avail_reg[1]_0 ),
        .I3(\uart_rx_avail_reg[1]_1 ),
        .I4(\uart_rx_avail[1]_i_5_n_0 ),
        .O(\uart_rx_avail[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \uart_rx_avail[1]_i_2 
       (.I0(\uart_rx_avail_reg_n_0_[0] ),
        .I1(uart_rx_busy_ff),
        .I2(uart_rx_busy_reg_n_0),
        .I3(\uart_rx_avail_reg_n_0_[1] ),
        .O(\uart_rx_avail[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \uart_rx_avail[1]_i_5 
       (.I0(\data_o_reg[0]_0 ),
        .I1(\uart_rx_avail_reg_n_0_[1] ),
        .I2(\uart_rx_avail_reg_n_0_[0] ),
        .O(\uart_rx_avail[1]_i_5_n_0 ));
  FDRE \uart_rx_avail_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\uart_rx_avail[0]_i_1_n_0 ),
        .Q(\uart_rx_avail_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \uart_rx_avail_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\uart_rx_avail[1]_i_1_n_0 ),
        .Q(\uart_rx_avail_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h54FFFFFF54000000)) 
    \uart_rx_baud_cnt[0]_i_1 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .I1(\ctrl_reg_n_0_[0] ),
        .I2(\uart_rx_baud_cnt[2]_i_2_n_0 ),
        .I3(uart_rx_busy_reg_n_0),
        .I4(Q[2]),
        .I5(p_2_in[0]),
        .O(\uart_rx_baud_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF90FFFFFF900000)) 
    \uart_rx_baud_cnt[1]_i_1 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .I2(\uart_rx_baud_cnt[2]_i_2_n_0 ),
        .I3(\uart_rx_baud_cnt[1]_i_2_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[1]),
        .O(\uart_rx_baud_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00D00000)) 
    \uart_rx_baud_cnt[1]_i_2 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I2(p_2_in[0]),
        .I3(\uart_rx_baud_cnt[2]_i_4_n_0 ),
        .I4(\uart_rx_baud_cnt[3]_i_2_n_0 ),
        .O(\uart_rx_baud_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3288FFFF32880000)) 
    \uart_rx_baud_cnt[2]_i_1 
       (.I0(\uart_rx_baud_cnt[2]_i_2_n_0 ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .I2(p_2_in[1]),
        .I3(\uart_rx_baud_cnt[2]_i_3_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[2]),
        .O(\uart_rx_baud_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \uart_rx_baud_cnt[2]_i_2 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .I2(\uart_rx_baud_cnt[2]_i_4_n_0 ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .O(\uart_rx_baud_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \uart_rx_baud_cnt[2]_i_3 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .O(\uart_rx_baud_cnt[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \uart_rx_baud_cnt[2]_i_4 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .O(\uart_rx_baud_cnt[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6660FFFF66600000)) 
    \uart_rx_baud_cnt[3]_i_1 
       (.I0(\uart_rx_baud_cnt[3]_i_2_n_0 ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .I2(p_2_in[2]),
        .I3(\uart_rx_baud_cnt[7]_i_6_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[3]),
        .O(\uart_rx_baud_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \uart_rx_baud_cnt[3]_i_2 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .O(\uart_rx_baud_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6660FFFF66600000)) 
    \uart_rx_baud_cnt[4]_i_1 
       (.I0(\uart_rx_baud_cnt[4]_i_2_n_0 ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I2(p_2_in[3]),
        .I3(\uart_rx_baud_cnt[7]_i_6_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[4]),
        .O(\uart_rx_baud_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \uart_rx_baud_cnt[4]_i_2 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .O(\uart_rx_baud_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF40FF40FF400000)) 
    \uart_rx_baud_cnt[5]_i_1 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I1(\uart_rx_baud_cnt[7]_i_5_n_0 ),
        .I2(p_2_in[4]),
        .I3(\uart_rx_baud_cnt[5]_i_2_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[5]),
        .O(\uart_rx_baud_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF0F0FEFFF0FFF0F)) 
    \uart_rx_baud_cnt[5]_i_2 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I2(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I4(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I5(\uart_rx_baud_cnt[4]_i_2_n_0 ),
        .O(\uart_rx_baud_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0FE0FFFF0FE00000)) 
    \uart_rx_baud_cnt[6]_i_1 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .I1(p_2_in[5]),
        .I2(\uart_rx_baud_cnt[7]_i_5_n_0 ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I4(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I5(p_2_in[6]),
        .O(\uart_rx_baud_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \uart_rx_baud_cnt[7]_i_1 
       (.I0(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(uart_rx_busy_reg_n_0),
        .O(\uart_rx_baud_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8088AAAA80888088)) 
    \uart_rx_baud_cnt[7]_i_2 
       (.I0(\uart_rx_baud_cnt[7]_i_4_n_0 ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I3(\uart_rx_baud_cnt[7]_i_5_n_0 ),
        .I4(\uart_rx_baud_cnt[7]_i_6_n_0 ),
        .I5(p_2_in[6]),
        .O(\uart_rx_baud_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_rx_baud_cnt[7]_i_4 
       (.I0(uart_rx_busy_reg_n_0),
        .I1(Q[2]),
        .O(\uart_rx_baud_cnt[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \uart_rx_baud_cnt[7]_i_5 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .I4(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I5(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .O(\uart_rx_baud_cnt[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \uart_rx_baud_cnt[7]_i_6 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I4(\uart_rx_baud_cnt[4]_i_2_n_0 ),
        .O(\uart_rx_baud_cnt[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \uart_rx_baud_cnt[7]_i_7 
       (.I0(\clk_div_ff_reg[5] ),
        .I1(\clk_div_ff_reg[2] ),
        .I2(\clk_div_ff_reg[1] ),
        .I3(Q[0]),
        .I4(\clk_div_ff_reg[0] ),
        .I5(Q[1]),
        .O(\uart_rx_baud_cnt[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \uart_rx_baud_cnt[7]_i_8 
       (.I0(\clk_div_ff_reg[11] ),
        .I1(\clk_div_ff_reg[10] ),
        .I2(\clk_div_ff_reg[9] ),
        .I3(Q[0]),
        .I4(\clk_div_ff_reg[6] ),
        .I5(Q[1]),
        .O(\uart_rx_baud_cnt[7]_i_8_n_0 ));
  FDRE \uart_rx_baud_cnt_reg[0] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[0]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[1] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[1]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[2] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[2]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[3] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[3]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[4] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[4]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[5] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[5]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[6] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[6]_i_1_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \uart_rx_baud_cnt_reg[7] 
       (.C(clk_i),
        .CE(\uart_rx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_rx_baud_cnt[7]_i_2_n_0 ),
        .Q(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .R(1'b0));
  MUXF7 \uart_rx_baud_cnt_reg[7]_i_3 
       (.I0(\uart_rx_baud_cnt[7]_i_7_n_0 ),
        .I1(\uart_rx_baud_cnt[7]_i_8_n_0 ),
        .O(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .S(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_rx_bitcnt[0]_i_1 
       (.I0(uart_rx_bitcnt_reg[0]),
        .O(minusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \uart_rx_bitcnt[1]_i_1 
       (.I0(uart_rx_bitcnt_reg[1]),
        .I1(uart_rx_bitcnt_reg[0]),
        .O(\uart_rx_bitcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \uart_rx_bitcnt[2]_i_1 
       (.I0(uart_rx_bitcnt_reg[2]),
        .I1(uart_rx_bitcnt_reg[0]),
        .I2(uart_rx_bitcnt_reg[1]),
        .O(minusOp[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \uart_rx_bitcnt[3]_i_1 
       (.I0(Q[2]),
        .I1(uart_rx_busy_reg_n_0),
        .O(uart_rx_busy1));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \uart_rx_bitcnt[3]_i_2 
       (.I0(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .I1(\uart_rx_baud_cnt[4]_i_2_n_0 ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I4(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I5(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .O(\uart_rx_bitcnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \uart_rx_bitcnt[3]_i_3 
       (.I0(uart_rx_bitcnt_reg[3]),
        .I1(uart_rx_bitcnt_reg[2]),
        .I2(uart_rx_bitcnt_reg[1]),
        .I3(uart_rx_bitcnt_reg[0]),
        .O(minusOp[3]));
  FDSE \uart_rx_bitcnt_reg[0] 
       (.C(clk_i),
        .CE(\uart_rx_bitcnt[3]_i_2_n_0 ),
        .D(minusOp[0]),
        .Q(uart_rx_bitcnt_reg[0]),
        .S(uart_rx_busy1));
  FDRE \uart_rx_bitcnt_reg[1] 
       (.C(clk_i),
        .CE(\uart_rx_bitcnt[3]_i_2_n_0 ),
        .D(\uart_rx_bitcnt[1]_i_1_n_0 ),
        .Q(uart_rx_bitcnt_reg[1]),
        .R(uart_rx_busy1));
  FDRE \uart_rx_bitcnt_reg[2] 
       (.C(clk_i),
        .CE(\uart_rx_bitcnt[3]_i_2_n_0 ),
        .D(minusOp[2]),
        .Q(uart_rx_bitcnt_reg[2]),
        .R(uart_rx_busy1));
  FDSE \uart_rx_bitcnt_reg[3] 
       (.C(clk_i),
        .CE(\uart_rx_bitcnt[3]_i_2_n_0 ),
        .D(minusOp[3]),
        .Q(uart_rx_bitcnt_reg[3]),
        .S(uart_rx_busy1));
  FDRE uart_rx_busy_ff_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_rx_busy_reg_n_0),
        .Q(uart_rx_busy_ff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0808080808084C08)) 
    uart_rx_busy_i_1
       (.I0(uart_rx_busy_reg_n_0),
        .I1(Q[2]),
        .I2(\uart_rx_reg[7]_i_3_n_0 ),
        .I3(uart_rx_sync[0]),
        .I4(uart_rx_sync[2]),
        .I5(uart_rx_sync[1]),
        .O(uart_rx_busy_i_1_n_0));
  FDRE uart_rx_busy_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_rx_busy_i_1_n_0),
        .Q(uart_rx_busy_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \uart_rx_reg[7]_i_1 
       (.I0(Q[2]),
        .O(\uart_rx_reg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \uart_rx_reg[7]_i_2 
       (.I0(\uart_rx_reg[7]_i_3_n_0 ),
        .I1(uart_rx_busy_reg_n_0),
        .O(\uart_rx_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \uart_rx_reg[7]_i_3 
       (.I0(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .I1(\uart_rx_reg[7]_i_4_n_0 ),
        .I2(uart_rx_bitcnt_reg[3]),
        .I3(\uart_rx_baud_cnt[3]_i_2_n_0 ),
        .I4(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I5(\uart_rx_reg[7]_i_5_n_0 ),
        .O(\uart_rx_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \uart_rx_reg[7]_i_4 
       (.I0(uart_rx_bitcnt_reg[0]),
        .I1(uart_rx_bitcnt_reg[1]),
        .I2(uart_rx_bitcnt_reg[2]),
        .O(\uart_rx_reg[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \uart_rx_reg[7]_i_5 
       (.I0(\uart_rx_baud_cnt_reg_n_0_[3] ),
        .I1(\uart_rx_baud_cnt_reg_n_0_[7] ),
        .I2(\uart_rx_baud_cnt_reg_n_0_[6] ),
        .I3(\uart_rx_baud_cnt_reg_n_0_[5] ),
        .I4(\uart_rx_baud_cnt_reg_n_0_[4] ),
        .O(\uart_rx_reg[7]_i_5_n_0 ));
  FDRE \uart_rx_reg_reg[0] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(\uart_rx_reg_reg_n_0_[0] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[1] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(\uart_rx_reg_reg_n_0_[1] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[2] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(\uart_rx_reg_reg_n_0_[2] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[3] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(\uart_rx_reg_reg_n_0_[3] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[4] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(\uart_rx_reg_reg_n_0_[4] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[5] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(\uart_rx_reg_reg_n_0_[5] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[6] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(\uart_rx_reg_reg_n_0_[6] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  FDRE \uart_rx_reg_reg[7] 
       (.C(clk_i),
        .CE(\uart_rx_reg[7]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(\uart_rx_reg_reg_n_0_[7] ),
        .R(\uart_rx_reg[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \uart_rx_sreg[8]_i_1 
       (.I0(\uart_rx_bitcnt[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(uart_rx_busy_reg_n_0),
        .O(\uart_rx_sreg[8]_i_1_n_0 ));
  FDRE \uart_rx_sreg_reg[1] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[2] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(p_1_in[1]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[3] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[4] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[5] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[6] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[7] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \uart_rx_sreg_reg[8] 
       (.C(clk_i),
        .CE(\uart_rx_sreg[8]_i_1_n_0 ),
        .D(uart_rx_sync[0]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \uart_rx_sync_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_rx_sync[1]),
        .Q(uart_rx_sync[0]),
        .R(1'b0));
  FDRE \uart_rx_sync_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_rx_sync[2]),
        .Q(uart_rx_sync[1]),
        .R(1'b0));
  FDRE \uart_rx_sync_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(uart_rx_sync[2]),
        .R(1'b0));
  FDRE \uart_rx_sync_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(p_0_in__0[2]),
        .R(1'b0));
  FDRE \uart_rx_sync_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_rxd_i),
        .Q(p_0_in__0[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7F7F7F00)) 
    \uart_tx_baud_cnt[0]_i_1 
       (.I0(Q[2]),
        .I1(uart_tx_busy_reg_0),
        .I2(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I3(\uart_tx_baud_cnt[2]_i_2_n_0 ),
        .I4(\ctrl_reg_n_0_[0] ),
        .O(\uart_tx_baud_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF44F4444)) 
    \uart_tx_baud_cnt[1]_i_1 
       (.I0(\uart_tx_baud_cnt[4]_i_3_n_0 ),
        .I1(p_2_in[0]),
        .I2(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I4(\uart_tx_baud_cnt[2]_i_2_n_0 ),
        .O(\uart_tx_baud_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F44F4444444C)) 
    \uart_tx_baud_cnt[2]_i_1 
       (.I0(\uart_tx_baud_cnt[5]_i_2_n_0 ),
        .I1(p_2_in[1]),
        .I2(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I4(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I5(\uart_tx_baud_cnt[2]_i_2_n_0 ),
        .O(\uart_tx_baud_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \uart_tx_baud_cnt[2]_i_2 
       (.I0(\uart_tx_baud_cnt[5]_i_2_n_0 ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I4(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .I5(\uart_tx_baud_cnt[2]_i_3_n_0 ),
        .O(\uart_tx_baud_cnt[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \uart_tx_baud_cnt[2]_i_3 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[4] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[5] ),
        .O(\uart_tx_baud_cnt[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \uart_tx_baud_cnt[3]_i_1 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I4(\uart_tx_baud_cnt[4]_i_3_n_0 ),
        .I5(p_2_in[2]),
        .O(\uart_tx_baud_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \uart_tx_baud_cnt[4]_i_1 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[4] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .I2(\uart_tx_baud_cnt[4]_i_2_n_0 ),
        .I3(\uart_tx_baud_cnt[4]_i_3_n_0 ),
        .I4(p_2_in[3]),
        .O(\uart_tx_baud_cnt[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \uart_tx_baud_cnt[4]_i_2 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .O(\uart_tx_baud_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h88808888)) 
    \uart_tx_baud_cnt[4]_i_3 
       (.I0(uart_tx_busy_reg_0),
        .I1(Q[2]),
        .I2(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I4(\uart_tx_baud_cnt[7]_i_3_n_0 ),
        .O(\uart_tx_baud_cnt[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDDD8880FFFFAAAA)) 
    \uart_tx_baud_cnt[5]_i_1 
       (.I0(\uart_tx_baud_cnt[5]_i_2_n_0 ),
        .I1(\uart_tx_baud_cnt[7]_i_3_n_0 ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I4(p_2_in[4]),
        .I5(\uart_tx_baud_cnt[5]_i_3_n_0 ),
        .O(\uart_tx_baud_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \uart_tx_baud_cnt[5]_i_2 
       (.I0(Q[2]),
        .I1(uart_tx_busy_reg_0),
        .O(\uart_tx_baud_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \uart_tx_baud_cnt[5]_i_3 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[4] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I4(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .I5(\uart_tx_baud_cnt_reg_n_0_[5] ),
        .O(\uart_tx_baud_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3AAACAAA2AAACAAA)) 
    \uart_tx_baud_cnt[6]_i_1 
       (.I0(p_2_in[5]),
        .I1(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I2(Q[2]),
        .I3(uart_tx_busy_reg_0),
        .I4(\uart_tx_baud_cnt[7]_i_3_n_0 ),
        .I5(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .O(\uart_tx_baud_cnt[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \uart_tx_baud_cnt[7]_i_1 
       (.I0(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .I1(uart_tx_busy_reg_0),
        .I2(Q[2]),
        .O(\uart_tx_baud_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF77FF7F780008080)) 
    \uart_tx_baud_cnt[7]_i_2 
       (.I0(uart_tx_busy_reg_0),
        .I1(Q[2]),
        .I2(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I4(\uart_tx_baud_cnt[7]_i_3_n_0 ),
        .I5(p_2_in[6]),
        .O(\uart_tx_baud_cnt[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \uart_tx_baud_cnt[7]_i_3 
       (.I0(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .I3(\uart_tx_baud_cnt_reg_n_0_[5] ),
        .I4(\uart_tx_baud_cnt_reg_n_0_[4] ),
        .I5(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .O(\uart_tx_baud_cnt[7]_i_3_n_0 ));
  FDRE \uart_tx_baud_cnt_reg[0] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[0]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[1] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[1]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[2] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[2]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[3] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[3]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[4] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[4]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[5] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[5]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[6] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[6]_i_1_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \uart_tx_baud_cnt_reg[7] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt[7]_i_1_n_0 ),
        .D(\uart_tx_baud_cnt[7]_i_2_n_0 ),
        .Q(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \uart_tx_bitcnt[0]_i_1 
       (.I0(uart_tx_bitcnt_reg[0]),
        .O(minusOp__0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \uart_tx_bitcnt[1]_i_1 
       (.I0(uart_tx_bitcnt_reg[1]),
        .I1(uart_tx_bitcnt_reg[0]),
        .O(\uart_tx_bitcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \uart_tx_bitcnt[2]_i_1 
       (.I0(uart_tx_bitcnt_reg[2]),
        .I1(uart_tx_bitcnt_reg[0]),
        .I2(uart_tx_bitcnt_reg[1]),
        .O(minusOp__0[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \uart_tx_bitcnt[3]_i_1 
       (.I0(uart_tx_busy_reg_0),
        .I1(Q[2]),
        .O(uart_tx_done0));
  LUT4 #(
    .INIT(16'h0200)) 
    \uart_tx_bitcnt[3]_i_2 
       (.I0(\uart_rx_baud_cnt_reg[7]_i_3_n_0 ),
        .I1(\uart_tx_baud_cnt_reg_n_0_[7] ),
        .I2(\uart_tx_baud_cnt_reg_n_0_[6] ),
        .I3(\uart_tx_baud_cnt[7]_i_3_n_0 ),
        .O(\uart_tx_baud_cnt_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \uart_tx_bitcnt[3]_i_3 
       (.I0(uart_tx_bitcnt_reg[3]),
        .I1(uart_tx_bitcnt_reg[2]),
        .I2(uart_tx_bitcnt_reg[1]),
        .I3(uart_tx_bitcnt_reg[0]),
        .O(minusOp__0[3]));
  FDRE \uart_tx_bitcnt_reg[0] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt_reg[7]_0 ),
        .D(minusOp__0[0]),
        .Q(uart_tx_bitcnt_reg[0]),
        .R(uart_tx_done0));
  FDSE \uart_tx_bitcnt_reg[1] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt_reg[7]_0 ),
        .D(\uart_tx_bitcnt[1]_i_1_n_0 ),
        .Q(uart_tx_bitcnt_reg[1]),
        .S(uart_tx_done0));
  FDRE \uart_tx_bitcnt_reg[2] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt_reg[7]_0 ),
        .D(minusOp__0[2]),
        .Q(uart_tx_bitcnt_reg[2]),
        .R(uart_tx_done0));
  FDSE \uart_tx_bitcnt_reg[3] 
       (.C(clk_i),
        .CE(\uart_tx_baud_cnt_reg[7]_0 ),
        .D(minusOp__0[3]),
        .Q(uart_tx_bitcnt_reg[3]),
        .S(uart_tx_done0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h2AEA)) 
    uart_tx_busy_i_1
       (.I0(uart_tx_busy0),
        .I1(Q[2]),
        .I2(uart_tx_busy_reg_0),
        .I3(uart_tx_busy_i_3_n_0),
        .O(uart_tx_busy_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    uart_tx_busy_i_3
       (.I0(\uart_tx_baud_cnt_reg[7]_0 ),
        .I1(uart_tx_bitcnt_reg[0]),
        .I2(uart_tx_bitcnt_reg[1]),
        .I3(uart_tx_bitcnt_reg[2]),
        .I4(uart_tx_bitcnt_reg[3]),
        .O(uart_tx_busy_i_3_n_0));
  FDRE uart_tx_busy_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_tx_busy_i_1_n_0),
        .Q(uart_tx_busy_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    uart_tx_done_i_1
       (.I0(uart_tx_bitcnt_reg[3]),
        .I1(uart_tx_bitcnt_reg[2]),
        .I2(uart_tx_bitcnt_reg[1]),
        .I3(uart_tx_bitcnt_reg[0]),
        .I4(\uart_tx_baud_cnt_reg[7]_0 ),
        .I5(\uart_tx_baud_cnt[5]_i_2_n_0 ),
        .O(uart_tx_done_i_1_n_0));
  FDRE uart_tx_done_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(uart_tx_done_i_1_n_0),
        .Q(uart_tx_done_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \uart_tx_sreg[0]_i_1 
       (.I0(\uart_tx_sreg_reg_n_0_[1] ),
        .I1(uart_tx_busy_reg_0),
        .O(\uart_tx_sreg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hFACACACA)) 
    \uart_tx_sreg[8]_i_1 
       (.I0(\uart_tx_sreg_reg[8]_0 ),
        .I1(\ctrl_reg[14]_0 [7]),
        .I2(\uart_tx_sreg_reg[7]_1 ),
        .I3(Q[2]),
        .I4(uart_tx_busy_reg_0),
        .O(\uart_tx_sreg[8]_i_1_n_0 ));
  FDRE \uart_tx_sreg_reg[0] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg[0]_i_1_n_0 ),
        .Q(\uart_tx_sreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[1] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [0]),
        .Q(\uart_tx_sreg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[2] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [1]),
        .Q(\uart_tx_sreg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[3] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [2]),
        .Q(\uart_tx_sreg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[4] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [3]),
        .Q(\uart_tx_sreg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[5] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [4]),
        .Q(\uart_tx_sreg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[6] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [5]),
        .Q(\uart_tx_sreg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[7] 
       (.C(clk_i),
        .CE(\uart_tx_sreg_reg[7]_1 ),
        .D(\uart_tx_sreg_reg[7]_2 [6]),
        .Q(\uart_tx_sreg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \uart_tx_sreg_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\uart_tx_sreg[8]_i_1_n_0 ),
        .Q(\uart_tx_sreg_reg[8]_0 ),
        .R(1'b0));
  FDRE uart_txd_o_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(\uart_tx_sreg_reg_n_0_[0] ),
        .Q(uart_txd_o),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reg_async_rst" *) 
module SystemTop_reg_async_rst
   (seg_segment_o,
    en_i,
    D,
    clk_i,
    rst_i);
  output [6:0]seg_segment_o;
  input en_i;
  input [6:0]D;
  input clk_i;
  input rst_i;

  wire [6:0]D;
  wire clk_i;
  wire en_i;
  wire rst_i;
  wire [6:0]seg_segment_o;

  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[0]),
        .Q(seg_segment_o[0]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[1]),
        .Q(seg_segment_o[1]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[2]),
        .Q(seg_segment_o[2]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[3]),
        .Q(seg_segment_o[3]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[4] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[4]),
        .Q(seg_segment_o[4]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[5] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[5]),
        .Q(seg_segment_o[5]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[6] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(D[6]),
        .Q(seg_segment_o[6]));
endmodule

(* ORIG_REF_NAME = "reg_async_rst" *) 
module SystemTop_reg_async_rst__parameterized0
   (Q,
    en_i,
    bcd_vector_i,
    clk_i,
    rst_i);
  output [3:0]Q;
  input en_i;
  input [3:0]bcd_vector_i;
  input clk_i;
  input rst_i;

  wire [3:0]Q;
  wire [3:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire rst_i;

  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "reg_async_rst" *) 
module SystemTop_reg_async_rst__parameterized0_0
   (Q,
    en_i,
    bcd_vector_i,
    clk_i,
    rst_i);
  output [3:0]Q;
  input en_i;
  input [3:0]bcd_vector_i;
  input clk_i;
  input rst_i;

  wire [3:0]Q;
  wire [3:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire rst_i;

  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "reg_async_rst" *) 
module SystemTop_reg_async_rst__parameterized0_1
   (Q,
    en_i,
    bcd_vector_i,
    clk_i,
    rst_i);
  output [3:0]Q;
  input en_i;
  input [3:0]bcd_vector_i;
  input clk_i;
  input rst_i;

  wire [3:0]Q;
  wire [3:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire rst_i;

  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "reg_async_rst" *) 
module SystemTop_reg_async_rst__parameterized0_2
   (Q,
    en_i,
    bcd_vector_i,
    clk_i,
    rst_i);
  output [3:0]Q;
  input en_i;
  input [3:0]bcd_vector_i;
  input clk_i;
  input rst_i;

  wire [3:0]Q;
  wire [3:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire rst_i;

  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \register_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(bcd_vector_i[3]),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "reg_shift_async_rst" *) 
module SystemTop_reg_shift_async_rst
   (seg_module_o,
    en_i,
    clk_i,
    rst_i);
  output [3:0]seg_module_o;
  input en_i;
  input clk_i;
  input rst_i;

  wire clk_i;
  wire en_i;
  wire rst_i;
  wire [3:0]seg_module_o;

  FDCE #(
    .INIT(1'b0)) 
    \reg_shift_sr_reg[0] 
       (.C(clk_i),
        .CE(en_i),
        .CLR(rst_i),
        .D(seg_module_o[3]),
        .Q(seg_module_o[0]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_shift_sr_reg[1] 
       (.C(clk_i),
        .CE(en_i),
        .D(seg_module_o[0]),
        .PRE(rst_i),
        .Q(seg_module_o[1]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_shift_sr_reg[2] 
       (.C(clk_i),
        .CE(en_i),
        .D(seg_module_o[1]),
        .PRE(rst_i),
        .Q(seg_module_o[2]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_shift_sr_reg[3] 
       (.C(clk_i),
        .CE(en_i),
        .D(seg_module_o[2]),
        .PRE(rst_i),
        .Q(seg_module_o[3]));
endmodule

(* ORIG_REF_NAME = "seven_seg_driver" *) 
module SystemTop_seven_seg_driver
   (seg_module_o,
    seg_segment_o,
    en_i,
    clk_i,
    rst_i,
    bcd_vector_i);
  output [3:0]seg_module_o;
  output [6:0]seg_segment_o;
  input en_i;
  input clk_i;
  input rst_i;
  input [15:0]bcd_vector_i;

  wire [5:0]\BCD_TO_SEG_Inst/seg_o ;
  wire CNT_MODULE_SELECT_Inst_n_0;
  wire \DIGIT_REGs_Inst[2].REG_Inst_n_0 ;
  wire \DIGIT_REGs_Inst[2].REG_Inst_n_1 ;
  wire \DIGIT_REGs_Inst[2].REG_Inst_n_2 ;
  wire \DIGIT_REGs_Inst[2].REG_Inst_n_3 ;
  wire \DIGIT_REGs_Inst[3].REG_Inst_n_0 ;
  wire \DIGIT_REGs_Inst[3].REG_Inst_n_1 ;
  wire \DIGIT_REGs_Inst[3].REG_Inst_n_2 ;
  wire \DIGIT_REGs_Inst[3].REG_Inst_n_3 ;
  wire \DIGIT_REGs_Inst[4].REG_Inst_n_0 ;
  wire \DIGIT_REGs_Inst[4].REG_Inst_n_1 ;
  wire \DIGIT_REGs_Inst[4].REG_Inst_n_2 ;
  wire \DIGIT_REGs_Inst[4].REG_Inst_n_3 ;
  wire [15:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire [3:0]register_sr;
  wire rst_i;
  wire [3:0]seg_module_o;
  wire [6:0]seg_segment_o;

  SystemTop_counter_up CNT_MODULE_SELECT_Inst
       (.D({CNT_MODULE_SELECT_Inst_n_0,\BCD_TO_SEG_Inst/seg_o }),
        .Q({\DIGIT_REGs_Inst[3].REG_Inst_n_0 ,\DIGIT_REGs_Inst[3].REG_Inst_n_1 ,\DIGIT_REGs_Inst[3].REG_Inst_n_2 ,\DIGIT_REGs_Inst[3].REG_Inst_n_3 }),
        .clk_i(clk_i),
        .en_i(en_i),
        .\register_sr_reg[5] ({\DIGIT_REGs_Inst[2].REG_Inst_n_0 ,\DIGIT_REGs_Inst[2].REG_Inst_n_1 ,\DIGIT_REGs_Inst[2].REG_Inst_n_2 ,\DIGIT_REGs_Inst[2].REG_Inst_n_3 }),
        .\register_sr_reg[5]_0 (register_sr),
        .\register_sr_reg[5]_1 ({\DIGIT_REGs_Inst[4].REG_Inst_n_0 ,\DIGIT_REGs_Inst[4].REG_Inst_n_1 ,\DIGIT_REGs_Inst[4].REG_Inst_n_2 ,\DIGIT_REGs_Inst[4].REG_Inst_n_3 }),
        .rst_i(rst_i));
  SystemTop_reg_async_rst__parameterized0 \DIGIT_REGs_Inst[1].REG_Inst 
       (.Q(register_sr),
        .bcd_vector_i(bcd_vector_i[3:0]),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i));
  SystemTop_reg_async_rst__parameterized0_0 \DIGIT_REGs_Inst[2].REG_Inst 
       (.Q({\DIGIT_REGs_Inst[2].REG_Inst_n_0 ,\DIGIT_REGs_Inst[2].REG_Inst_n_1 ,\DIGIT_REGs_Inst[2].REG_Inst_n_2 ,\DIGIT_REGs_Inst[2].REG_Inst_n_3 }),
        .bcd_vector_i(bcd_vector_i[7:4]),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i));
  SystemTop_reg_async_rst__parameterized0_1 \DIGIT_REGs_Inst[3].REG_Inst 
       (.Q({\DIGIT_REGs_Inst[3].REG_Inst_n_0 ,\DIGIT_REGs_Inst[3].REG_Inst_n_1 ,\DIGIT_REGs_Inst[3].REG_Inst_n_2 ,\DIGIT_REGs_Inst[3].REG_Inst_n_3 }),
        .bcd_vector_i(bcd_vector_i[11:8]),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i));
  SystemTop_reg_async_rst__parameterized0_2 \DIGIT_REGs_Inst[4].REG_Inst 
       (.Q({\DIGIT_REGs_Inst[4].REG_Inst_n_0 ,\DIGIT_REGs_Inst[4].REG_Inst_n_1 ,\DIGIT_REGs_Inst[4].REG_Inst_n_2 ,\DIGIT_REGs_Inst[4].REG_Inst_n_3 }),
        .bcd_vector_i(bcd_vector_i[15:12]),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i));
  SystemTop_reg_shift_async_rst SEG_MODULE_DRV_Inst
       (.clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i),
        .seg_module_o(seg_module_o));
  SystemTop_reg_async_rst SEG_SEGMENT_OUT_REG_Inst
       (.D({CNT_MODULE_SELECT_Inst_n_0,\BCD_TO_SEG_Inst/seg_o }),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i),
        .seg_segment_o(seg_segment_o));
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_seven_seg_driver_0_0,seven_seg_driver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "seven_seg_driver,Vivado 2021.2" *) 
module SystemTop_seven_seg_driver_0_0
   (clk_i,
    rst_i,
    en_i,
    bcd_vector_i,
    seg_segment_o,
    seg_module_o);
  input clk_i;
  input rst_i;
  input en_i;
  input [15:0]bcd_vector_i;
  output [7:0]seg_segment_o;
  output [3:0]seg_module_o;

  wire \<const0> ;
  wire [15:0]bcd_vector_i;
  wire clk_i;
  wire en_i;
  wire rst_i;
  wire [3:0]seg_module_o;
  wire [6:0]\^seg_segment_o ;

  assign seg_segment_o[7] = \<const0> ;
  assign seg_segment_o[6:0] = \^seg_segment_o [6:0];
  GND GND
       (.G(\<const0> ));
  SystemTop_seven_seg_driver U0
       (.bcd_vector_i(bcd_vector_i),
        .clk_i(clk_i),
        .en_i(en_i),
        .rst_i(rst_i),
        .seg_module_o(seg_module_o),
        .seg_segment_o(\^seg_segment_o ));
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_util_vector_logic_0_0,util_vector_logic_v2_0_1_util_vector_logic,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2021.2" *) 
module SystemTop_util_vector_logic_0_0
   (Op1,
    Res);
  input [0:0]Op1;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Res;

  LUT1 #(
    .INIT(2'h1)) 
    \Res[0]_INST_0 
       (.I0(Op1),
        .O(Res));
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_xlslice_0_0,xlslice_v1_0_2_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
module SystemTop_xlslice_0_0
   (Din,
    Dout);
  input [3:0]Din;
  output [0:0]Dout;

  wire [3:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_xlslice_1_0,xlslice_v1_0_2_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
module SystemTop_xlslice_1_0
   (Din,
    Dout);
  input [15:0]Din;
  output [0:0]Dout;

  wire [15:0]Din;

  assign Dout[0] = Din[0];
endmodule

(* CHECK_LICENSE_TYPE = "SystemTop_xlslice_2_0,xlslice_v1_0_2_xlslice,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xlslice_v1_0_2_xlslice,Vivado 2021.2" *) 
module SystemTop_xlslice_2_0
   (Din,
    Dout);
  input [2:0]Din;
  output [0:0]Dout;

  wire [2:0]Din;

  assign Dout[0] = Din[0];
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
