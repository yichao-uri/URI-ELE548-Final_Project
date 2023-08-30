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


// IP VLNV: xilinx.com:hls:RBM_interface:1.0
// IP Revision: 2113178318

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  ap_clk,
  ap_rst_n,
  axis_control_in_TVALID,
  axis_control_in_TREADY,
  axis_control_in_TDATA,
  axis_control_in_TLAST,
  axis_control_in_TKEEP,
  axis_control_in_TSTRB,
  axis_sigmoid_switch_in_TVALID,
  axis_sigmoid_switch_in_TREADY,
  axis_sigmoid_switch_in_TDATA,
  axis_sigmoid_switch_in_TLAST,
  axis_sigmoid_switch_in_TKEEP,
  axis_sigmoid_switch_in_TSTRB,
  axis_vector_in_len_in_TVALID,
  axis_vector_in_len_in_TREADY,
  axis_vector_in_len_in_TDATA,
  axis_vector_in_len_in_TLAST,
  axis_vector_in_len_in_TKEEP,
  axis_vector_in_len_in_TSTRB,
  axis_vector_out_len_in_TVALID,
  axis_vector_out_len_in_TREADY,
  axis_vector_out_len_in_TDATA,
  axis_vector_out_len_in_TLAST,
  axis_vector_out_len_in_TKEEP,
  axis_vector_out_len_in_TSTRB,
  axis_vector_in_TVALID,
  axis_vector_in_TREADY,
  axis_vector_in_TDATA,
  axis_vector_in_TLAST,
  axis_vector_in_TKEEP,
  axis_vector_in_TSTRB,
  axis_weight_in_TVALID,
  axis_weight_in_TREADY,
  axis_weight_in_TDATA,
  axis_weight_in_TLAST,
  axis_weight_in_TKEEP,
  axis_weight_in_TSTRB,
  axis_bias_in_TVALID,
  axis_bias_in_TREADY,
  axis_bias_in_TDATA,
  axis_bias_in_TLAST,
  axis_bias_in_TKEEP,
  axis_bias_in_TSTRB,
  axis_vector_out_TVALID,
  axis_vector_out_TREADY,
  axis_vector_out_TDATA,
  axis_vector_out_TLAST,
  axis_vector_out_TKEEP,
  axis_vector_out_TSTRB,
  stream_control_in_TVALID,
  stream_control_in_TREADY,
  stream_control_in_TDATA,
  stream_sigmoid_switch_in_TVALID,
  stream_sigmoid_switch_in_TREADY,
  stream_sigmoid_switch_in_TDATA,
  stream_vector_in_len_in_TVALID,
  stream_vector_in_len_in_TREADY,
  stream_vector_in_len_in_TDATA,
  stream_vector_out_len_in_TVALID,
  stream_vector_out_len_in_TREADY,
  stream_vector_out_len_in_TDATA,
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
  stream_vector_out_TDATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF axis_control_in:axis_sigmoid_switch_in:axis_vector_in_len_in:axis_vector_out_len_in:axis_vector_in:axis_weight_in:axis_bias_in:axis_vector_out:stream_control_in:stream_sigmoid_switch_in:stream_vector_in_len_in:stream_vector_out_len_in:stream_vector_in:stream_weight_in:stream_bias_in:stream_vector_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 80000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TVALID" *)
input wire axis_control_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TREADY" *)
output wire axis_control_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TDATA" *)
input wire [7 : 0] axis_control_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TLAST" *)
input wire [0 : 0] axis_control_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TKEEP" *)
input wire [0 : 0] axis_control_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_control_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_control_in TSTRB" *)
input wire [0 : 0] axis_control_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TVALID" *)
input wire axis_sigmoid_switch_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TREADY" *)
output wire axis_sigmoid_switch_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TDATA" *)
input wire [7 : 0] axis_sigmoid_switch_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TLAST" *)
input wire [0 : 0] axis_sigmoid_switch_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TKEEP" *)
input wire [0 : 0] axis_sigmoid_switch_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_sigmoid_switch_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_sigmoid_switch_in TSTRB" *)
input wire [0 : 0] axis_sigmoid_switch_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TVALID" *)
input wire axis_vector_in_len_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TREADY" *)
output wire axis_vector_in_len_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TDATA" *)
input wire [15 : 0] axis_vector_in_len_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TLAST" *)
input wire [0 : 0] axis_vector_in_len_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TKEEP" *)
input wire [1 : 0] axis_vector_in_len_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_in_len_in, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in_len_in TSTRB" *)
input wire [1 : 0] axis_vector_in_len_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TVALID" *)
input wire axis_vector_out_len_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TREADY" *)
output wire axis_vector_out_len_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TDATA" *)
input wire [15 : 0] axis_vector_out_len_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TLAST" *)
input wire [0 : 0] axis_vector_out_len_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TKEEP" *)
input wire [1 : 0] axis_vector_out_len_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_out_len_in, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out_len_in TSTRB" *)
input wire [1 : 0] axis_vector_out_len_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TVALID" *)
input wire axis_vector_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TREADY" *)
output wire axis_vector_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TDATA" *)
input wire [15 : 0] axis_vector_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TLAST" *)
input wire [0 : 0] axis_vector_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TKEEP" *)
input wire [1 : 0] axis_vector_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_in, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_in TSTRB" *)
input wire [1 : 0] axis_vector_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TVALID" *)
input wire axis_weight_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TREADY" *)
output wire axis_weight_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TDATA" *)
input wire [31 : 0] axis_weight_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TLAST" *)
input wire [0 : 0] axis_weight_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TKEEP" *)
input wire [3 : 0] axis_weight_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_weight_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_weight_in TSTRB" *)
input wire [3 : 0] axis_weight_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TVALID" *)
input wire axis_bias_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TREADY" *)
output wire axis_bias_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TDATA" *)
input wire [31 : 0] axis_bias_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TLAST" *)
input wire [0 : 0] axis_bias_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TKEEP" *)
input wire [3 : 0] axis_bias_in_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_bias_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_bias_in TSTRB" *)
input wire [3 : 0] axis_bias_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TVALID" *)
output wire axis_vector_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TREADY" *)
input wire axis_vector_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TDATA" *)
output wire [31 : 0] axis_vector_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TLAST" *)
output wire [0 : 0] axis_vector_out_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TKEEP" *)
output wire [3 : 0] axis_vector_out_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_vector_out, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis_vector_out TSTRB" *)
output wire [3 : 0] axis_vector_out_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TVALID" *)
output wire stream_control_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TREADY" *)
input wire stream_control_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_control_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_control_in TDATA" *)
output wire [7 : 0] stream_control_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in TVALID" *)
output wire stream_sigmoid_switch_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in TREADY" *)
input wire stream_sigmoid_switch_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_sigmoid_switch_in, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_sigmoid_switch_in TDATA" *)
output wire [7 : 0] stream_sigmoid_switch_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in TVALID" *)
output wire stream_vector_in_len_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in TREADY" *)
input wire stream_vector_in_len_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in_len_in, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in_len_in TDATA" *)
output wire [15 : 0] stream_vector_in_len_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in TVALID" *)
output wire stream_vector_out_len_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in TREADY" *)
input wire stream_vector_out_len_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out_len_in, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out_len_in TDATA" *)
output wire [15 : 0] stream_vector_out_len_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TVALID" *)
output wire stream_vector_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TREADY" *)
input wire stream_vector_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_in TDATA" *)
output wire [31 : 0] stream_vector_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TVALID" *)
output wire stream_weight_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TREADY" *)
input wire stream_weight_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_weight_in, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_weight_in TDATA" *)
output wire [31 : 0] stream_weight_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TVALID" *)
output wire stream_bias_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TREADY" *)
input wire stream_bias_in_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_bias_in, TDATA_NUM_BYTES 6, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_bias_in TDATA" *)
output wire [47 : 0] stream_bias_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TVALID" *)
input wire stream_vector_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TREADY" *)
output wire stream_vector_out_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_vector_out, TDATA_NUM_BYTES 16, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 80000000.0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_vector_out TDATA" *)
input wire [127 : 0] stream_vector_out_TDATA;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  RBM_interface inst (
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .axis_control_in_TVALID(axis_control_in_TVALID),
    .axis_control_in_TREADY(axis_control_in_TREADY),
    .axis_control_in_TDATA(axis_control_in_TDATA),
    .axis_control_in_TLAST(axis_control_in_TLAST),
    .axis_control_in_TKEEP(axis_control_in_TKEEP),
    .axis_control_in_TSTRB(axis_control_in_TSTRB),
    .axis_sigmoid_switch_in_TVALID(axis_sigmoid_switch_in_TVALID),
    .axis_sigmoid_switch_in_TREADY(axis_sigmoid_switch_in_TREADY),
    .axis_sigmoid_switch_in_TDATA(axis_sigmoid_switch_in_TDATA),
    .axis_sigmoid_switch_in_TLAST(axis_sigmoid_switch_in_TLAST),
    .axis_sigmoid_switch_in_TKEEP(axis_sigmoid_switch_in_TKEEP),
    .axis_sigmoid_switch_in_TSTRB(axis_sigmoid_switch_in_TSTRB),
    .axis_vector_in_len_in_TVALID(axis_vector_in_len_in_TVALID),
    .axis_vector_in_len_in_TREADY(axis_vector_in_len_in_TREADY),
    .axis_vector_in_len_in_TDATA(axis_vector_in_len_in_TDATA),
    .axis_vector_in_len_in_TLAST(axis_vector_in_len_in_TLAST),
    .axis_vector_in_len_in_TKEEP(axis_vector_in_len_in_TKEEP),
    .axis_vector_in_len_in_TSTRB(axis_vector_in_len_in_TSTRB),
    .axis_vector_out_len_in_TVALID(axis_vector_out_len_in_TVALID),
    .axis_vector_out_len_in_TREADY(axis_vector_out_len_in_TREADY),
    .axis_vector_out_len_in_TDATA(axis_vector_out_len_in_TDATA),
    .axis_vector_out_len_in_TLAST(axis_vector_out_len_in_TLAST),
    .axis_vector_out_len_in_TKEEP(axis_vector_out_len_in_TKEEP),
    .axis_vector_out_len_in_TSTRB(axis_vector_out_len_in_TSTRB),
    .axis_vector_in_TVALID(axis_vector_in_TVALID),
    .axis_vector_in_TREADY(axis_vector_in_TREADY),
    .axis_vector_in_TDATA(axis_vector_in_TDATA),
    .axis_vector_in_TLAST(axis_vector_in_TLAST),
    .axis_vector_in_TKEEP(axis_vector_in_TKEEP),
    .axis_vector_in_TSTRB(axis_vector_in_TSTRB),
    .axis_weight_in_TVALID(axis_weight_in_TVALID),
    .axis_weight_in_TREADY(axis_weight_in_TREADY),
    .axis_weight_in_TDATA(axis_weight_in_TDATA),
    .axis_weight_in_TLAST(axis_weight_in_TLAST),
    .axis_weight_in_TKEEP(axis_weight_in_TKEEP),
    .axis_weight_in_TSTRB(axis_weight_in_TSTRB),
    .axis_bias_in_TVALID(axis_bias_in_TVALID),
    .axis_bias_in_TREADY(axis_bias_in_TREADY),
    .axis_bias_in_TDATA(axis_bias_in_TDATA),
    .axis_bias_in_TLAST(axis_bias_in_TLAST),
    .axis_bias_in_TKEEP(axis_bias_in_TKEEP),
    .axis_bias_in_TSTRB(axis_bias_in_TSTRB),
    .axis_vector_out_TVALID(axis_vector_out_TVALID),
    .axis_vector_out_TREADY(axis_vector_out_TREADY),
    .axis_vector_out_TDATA(axis_vector_out_TDATA),
    .axis_vector_out_TLAST(axis_vector_out_TLAST),
    .axis_vector_out_TKEEP(axis_vector_out_TKEEP),
    .axis_vector_out_TSTRB(axis_vector_out_TSTRB),
    .stream_control_in_TVALID(stream_control_in_TVALID),
    .stream_control_in_TREADY(stream_control_in_TREADY),
    .stream_control_in_TDATA(stream_control_in_TDATA),
    .stream_sigmoid_switch_in_TVALID(stream_sigmoid_switch_in_TVALID),
    .stream_sigmoid_switch_in_TREADY(stream_sigmoid_switch_in_TREADY),
    .stream_sigmoid_switch_in_TDATA(stream_sigmoid_switch_in_TDATA),
    .stream_vector_in_len_in_TVALID(stream_vector_in_len_in_TVALID),
    .stream_vector_in_len_in_TREADY(stream_vector_in_len_in_TREADY),
    .stream_vector_in_len_in_TDATA(stream_vector_in_len_in_TDATA),
    .stream_vector_out_len_in_TVALID(stream_vector_out_len_in_TVALID),
    .stream_vector_out_len_in_TREADY(stream_vector_out_len_in_TREADY),
    .stream_vector_out_len_in_TDATA(stream_vector_out_len_in_TDATA),
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
    .stream_vector_out_TDATA(stream_vector_out_TDATA)
  );
endmodule
