// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:RBM:1.0
// IP Revision: 2113182418

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  stream_control_in_TVALID,
  stream_control_in_TREADY,
  stream_control_in_TDATA,
  stream_sigmoid_switch_TVALID,
  stream_sigmoid_switch_TREADY,
  stream_sigmoid_switch_TDATA,
  vector_in_len_TVALID,
  vector_in_len_TREADY,
  vector_in_len_TDATA,
  vector_out_len_TVALID,
  vector_out_len_TREADY,
  vector_out_len_TDATA,
  stream_vector_in_TVALID,
  stream_vector_in_TREADY,
  stream_vector_in_TDATA,
  stream_weight_in_TVALID,
  stream_weight_in_TREADY,
  stream_weight_in_TDATA,
  stream_bias_in_TVALID,
  stream_bias_in_TREADY,
  stream_bias_in_TDATA,
  stream_vector_out_TVALID,
  stream_vector_out_TREADY,
  stream_vector_out_TDATA,
  ap_clk,
  ap_rst_n
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TVALID" *)
input wire stream_control_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TREADY" *)
output wire stream_control_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_control_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TDATA" *)
input wire [7 : 0] stream_control_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch TVALID" *)
input wire stream_sigmoid_switch_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch TREADY" *)
output wire stream_sigmoid_switch_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_sigmoid_switch, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch TDATA" *)
input wire [7 : 0] stream_sigmoid_switch_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len TVALID" *)
input wire vector_in_len_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len TREADY" *)
output wire vector_in_len_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vector_in_len, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_in_len TDATA" *)
input wire [15 : 0] vector_in_len_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len TVALID" *)
input wire vector_out_len_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len TREADY" *)
output wire vector_out_len_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vector_out_len, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 vector_out_len TDATA" *)
input wire [15 : 0] vector_out_len_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TVALID" *)
input wire stream_vector_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TREADY" *)
output wire stream_vector_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TDATA" *)
input wire [31 : 0] stream_vector_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TVALID" *)
input wire stream_weight_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TREADY" *)
output wire stream_weight_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_weight_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TDATA" *)
input wire [31 : 0] stream_weight_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TVALID" *)
input wire stream_bias_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TREADY" *)
output wire stream_bias_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_bias_in, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TDATA" *)
input wire [47 : 0] stream_bias_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TVALID" *)
output wire stream_vector_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TREADY" *)
input wire stream_vector_out_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TDATA" *)
output wire [127 : 0] stream_vector_out_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF stream_control_in:stream_sigmoid_switch:vector_in_len:vector_out_len:stream_vector_in:stream_weight_in:stream_bias_in:stream_vector_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 80000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  RBM inst (
    .stream_control_in_TVALID(stream_control_in_TVALID),
    .stream_control_in_TREADY(stream_control_in_TREADY),
    .stream_control_in_TDATA(stream_control_in_TDATA),
    .stream_sigmoid_switch_TVALID(stream_sigmoid_switch_TVALID),
    .stream_sigmoid_switch_TREADY(stream_sigmoid_switch_TREADY),
    .stream_sigmoid_switch_TDATA(stream_sigmoid_switch_TDATA),
    .vector_in_len_TVALID(vector_in_len_TVALID),
    .vector_in_len_TREADY(vector_in_len_TREADY),
    .vector_in_len_TDATA(vector_in_len_TDATA),
    .vector_out_len_TVALID(vector_out_len_TVALID),
    .vector_out_len_TREADY(vector_out_len_TREADY),
    .vector_out_len_TDATA(vector_out_len_TDATA),
    .stream_vector_in_TVALID(stream_vector_in_TVALID),
    .stream_vector_in_TREADY(stream_vector_in_TREADY),
    .stream_vector_in_TDATA(stream_vector_in_TDATA),
    .stream_weight_in_TVALID(stream_weight_in_TVALID),
    .stream_weight_in_TREADY(stream_weight_in_TREADY),
    .stream_weight_in_TDATA(stream_weight_in_TDATA),
    .stream_bias_in_TVALID(stream_bias_in_TVALID),
    .stream_bias_in_TREADY(stream_bias_in_TREADY),
    .stream_bias_in_TDATA(stream_bias_in_TDATA),
    .stream_vector_out_TVALID(stream_vector_out_TVALID),
    .stream_vector_out_TREADY(stream_vector_out_TREADY),
    .stream_vector_out_TDATA(stream_vector_out_TDATA),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n)
  );
endmodule
