-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Aug 28 06:03:34 2023
-- Host        : ubuntu running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ubuntu20/Xilinx/ELE548/Restricted_Boltzmann_Machine/RBM_hls/RBM_512_64_80M/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    stream_control_in_TVALID : in STD_LOGIC;
    stream_control_in_TREADY : out STD_LOGIC;
    stream_control_in_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_sigmoid_switch_TVALID : in STD_LOGIC;
    stream_sigmoid_switch_TREADY : out STD_LOGIC;
    stream_sigmoid_switch_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vector_in_len_TVALID : in STD_LOGIC;
    vector_in_len_TREADY : out STD_LOGIC;
    vector_in_len_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    vector_out_len_TVALID : in STD_LOGIC;
    vector_out_len_TREADY : out STD_LOGIC;
    vector_out_len_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stream_vector_in_TVALID : in STD_LOGIC;
    stream_vector_in_TREADY : out STD_LOGIC;
    stream_vector_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_weight_in_TVALID : in STD_LOGIC;
    stream_weight_in_TREADY : out STD_LOGIC;
    stream_weight_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_bias_in_TVALID : in STD_LOGIC;
    stream_bias_in_TREADY : out STD_LOGIC;
    stream_bias_in_TDATA : in STD_LOGIC_VECTOR ( 47 downto 0 );
    stream_vector_out_TVALID : out STD_LOGIC;
    stream_vector_out_TREADY : in STD_LOGIC;
    stream_vector_out_TDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "stream_control_in_TVALID,stream_control_in_TREADY,stream_control_in_TDATA[7:0],stream_sigmoid_switch_TVALID,stream_sigmoid_switch_TREADY,stream_sigmoid_switch_TDATA[7:0],vector_in_len_TVALID,vector_in_len_TREADY,vector_in_len_TDATA[15:0],vector_out_len_TVALID,vector_out_len_TREADY,vector_out_len_TDATA[15:0],stream_vector_in_TVALID,stream_vector_in_TREADY,stream_vector_in_TDATA[31:0],stream_weight_in_TVALID,stream_weight_in_TREADY,stream_weight_in_TDATA[31:0],stream_bias_in_TVALID,stream_bias_in_TREADY,stream_bias_in_TDATA[47:0],stream_vector_out_TVALID,stream_vector_out_TREADY,stream_vector_out_TDATA[127:0],ap_clk,ap_rst_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "RBM,Vivado 2022.2";
begin
end;
