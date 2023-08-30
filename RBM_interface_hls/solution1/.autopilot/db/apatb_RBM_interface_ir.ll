; ModuleID = '/home/ubuntu20/Xilinx/ELE548/Restricted_Boltzmann_Machine/RBM_interface_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<8>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<8>, 0, 0, 0>" = type { %"struct.ap_uint<8>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>" = type { %"struct.hls::axis<ap_uint<16>, 0, 0, 0>" }
%"struct.hls::axis<ap_uint<16>, 0, 0, 0>" = type { %"struct.ap_uint<16>", %"struct.ap_uint<2>", %"struct.ap_uint<2>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" = type { %"struct.hls::axis<float, 0, 0, 0>" }
%"struct.hls::axis<float, 0, 0, 0>" = type { float, %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>", %"struct.ap_uint<1>" }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"class.hls::stream<ap_uint<12>, 0>" = type { %"struct.ap_uint<12>" }
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, false>" }
%"struct.ap_int_base<12, false>" = type { %"struct.ssdm_int<12, false>" }
%"struct.ssdm_int<12, false>" = type { i12 }
%"class.hls::stream<stream_data_v_t, 0>" = type { %struct.stream_data_v_t }
%struct.stream_data_v_t = type { %"struct.ap_uint<16>", i1 }
%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<25, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<25, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<25, true>" }
%"struct.ssdm_int<25, true>" = type { i25 }
%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>" = type { %"struct.ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<48, 22, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<48, 22, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<48, true>" }
%"struct.ssdm_int<48, true>" = type { i48 }
%"class.hls::stream<stream_data_h_t, 0>" = type { %struct.stream_data_h_t }
%struct.stream_data_h_t = type { %"struct.ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>", i1 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_RBM_interface_ir(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(7) %axis_control_in, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(7) %axis_sigmoid_switch_in, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %axis_vector_in_len_in, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %axis_vector_out_len_in, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %axis_vector_in, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(12) %axis_weight_in, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(12) %axis_bias_in, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture nonnull dereferenceable(12) %axis_vector_out, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture nonnull dereferenceable(1) %stream_sigmoid_switch_in, %"class.hls::stream<ap_uint<12>, 0>"* noalias nocapture nonnull dereferenceable(2) %stream_vector_in_len_in, %"class.hls::stream<ap_uint<12>, 0>"* noalias nocapture nonnull dereferenceable(2) %stream_vector_out_len_in, %"class.hls::stream<stream_data_v_t, 0>"* noalias nocapture nonnull dereferenceable(4) %stream_vector_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(4) %stream_weight_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture nonnull dereferenceable(8) %stream_bias_in, %"class.hls::stream<stream_data_h_t, 0>"* noalias nocapture nonnull dereferenceable(16) %stream_vector_out) local_unnamed_addr #1 {
entry:
  %axis_control_in_copy.data = alloca i8
  %axis_control_in_copy.keep = alloca i1
  %axis_control_in_copy.strb = alloca i1
  %axis_control_in_copy.last = alloca i1
  %axis_sigmoid_switch_in_copy.data = alloca i8
  %axis_sigmoid_switch_in_copy.keep = alloca i1
  %axis_sigmoid_switch_in_copy.strb = alloca i1
  %axis_sigmoid_switch_in_copy.last = alloca i1
  %axis_vector_in_len_in_copy.data = alloca i16
  %axis_vector_in_len_in_copy.keep = alloca i2
  %axis_vector_in_len_in_copy.strb = alloca i2
  %axis_vector_in_len_in_copy.last = alloca i1
  %axis_vector_out_len_in_copy.data = alloca i16
  %axis_vector_out_len_in_copy.keep = alloca i2
  %axis_vector_out_len_in_copy.strb = alloca i2
  %axis_vector_out_len_in_copy.last = alloca i1
  %axis_vector_in_copy.data = alloca i16
  %axis_vector_in_copy.keep = alloca i2
  %axis_vector_in_copy.strb = alloca i2
  %axis_vector_in_copy.last = alloca i1
  %axis_weight_in_copy.data = alloca i32
  %axis_weight_in_copy.keep = alloca i4
  %axis_weight_in_copy.strb = alloca i4
  %axis_weight_in_copy.last = alloca i1
  %axis_bias_in_copy.data = alloca i32
  %axis_bias_in_copy.keep = alloca i4
  %axis_bias_in_copy.strb = alloca i4
  %axis_bias_in_copy.last = alloca i1
  %axis_vector_out_copy.data = alloca i32
  %axis_vector_out_copy.keep = alloca i4
  %axis_vector_out_copy.strb = alloca i4
  %axis_vector_out_copy.last = alloca i1
  %stream_control_in_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, i32 0) ]
  %stream_sigmoid_switch_in_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_in_copy, i32 0) ]
  %stream_vector_in_len_in_copy = alloca %"class.hls::stream<ap_uint<12>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_in_len_in_copy, i32 0) ]
  %stream_vector_out_len_in_copy = alloca %"class.hls::stream<ap_uint<12>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_out_len_in_copy, i32 0) ]
  %stream_vector_in_copy = alloca %"class.hls::stream<stream_data_v_t, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, i32 0) ]
  %stream_weight_in_copy = alloca %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, i32 0) ]
  %stream_bias_in_copy = alloca %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, i32 0) ]
  %stream_vector_out_copy = alloca %"class.hls::stream<stream_data_h_t, 0>", align 512
  call void @llvm.sideeffect() #11 [ "stream_interface"(%"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %axis_control_in, i8* %axis_control_in_copy.data, i1* %axis_control_in_copy.keep, i1* %axis_control_in_copy.strb, i1* %axis_control_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %axis_sigmoid_switch_in, i8* %axis_sigmoid_switch_in_copy.data, i1* %axis_sigmoid_switch_in_copy.keep, i1* %axis_sigmoid_switch_in_copy.strb, i1* %axis_sigmoid_switch_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %axis_vector_in_len_in, i16* %axis_vector_in_len_in_copy.data, i2* %axis_vector_in_len_in_copy.keep, i2* %axis_vector_in_len_in_copy.strb, i1* %axis_vector_in_len_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %axis_vector_out_len_in, i16* %axis_vector_out_len_in_copy.data, i2* %axis_vector_out_len_in_copy.keep, i2* %axis_vector_out_len_in_copy.strb, i1* %axis_vector_out_len_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %axis_vector_in, i16* %axis_vector_in_copy.data, i2* %axis_vector_in_copy.keep, i2* %axis_vector_in_copy.strb, i1* %axis_vector_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %axis_weight_in, i32* %axis_weight_in_copy.data, i4* %axis_weight_in_copy.keep, i4* %axis_weight_in_copy.strb, i1* %axis_weight_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %axis_bias_in, i32* %axis_bias_in_copy.data, i4* %axis_bias_in_copy.keep, i4* %axis_bias_in_copy.strb, i1* %axis_bias_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %axis_vector_out, i32* %axis_vector_out_copy.data, i4* %axis_vector_out_copy.keep, i4* %axis_vector_out_copy.strb, i1* %axis_vector_out_copy.last, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %stream_sigmoid_switch_in, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %stream_sigmoid_switch_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* nonnull %stream_vector_in_len_in, %"class.hls::stream<ap_uint<12>, 0>"* nonnull align 512 %stream_vector_in_len_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* nonnull %stream_vector_out_len_in, %"class.hls::stream<ap_uint<12>, 0>"* nonnull align 512 %stream_vector_out_len_in_copy, %"class.hls::stream<stream_data_v_t, 0>"* nonnull %stream_vector_in, %"class.hls::stream<stream_data_v_t, 0>"* nonnull align 512 %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %stream_weight_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %stream_bias_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* nonnull %stream_vector_out, %"class.hls::stream<stream_data_h_t, 0>"* nonnull align 512 %stream_vector_out_copy)
  call void @apatb_RBM_interface_hw(i8* %axis_control_in_copy.data, i1* %axis_control_in_copy.keep, i1* %axis_control_in_copy.strb, i1* %axis_control_in_copy.last, i8* %axis_sigmoid_switch_in_copy.data, i1* %axis_sigmoid_switch_in_copy.keep, i1* %axis_sigmoid_switch_in_copy.strb, i1* %axis_sigmoid_switch_in_copy.last, i16* %axis_vector_in_len_in_copy.data, i2* %axis_vector_in_len_in_copy.keep, i2* %axis_vector_in_len_in_copy.strb, i1* %axis_vector_in_len_in_copy.last, i16* %axis_vector_out_len_in_copy.data, i2* %axis_vector_out_len_in_copy.keep, i2* %axis_vector_out_len_in_copy.strb, i1* %axis_vector_out_len_in_copy.last, i16* %axis_vector_in_copy.data, i2* %axis_vector_in_copy.keep, i2* %axis_vector_in_copy.strb, i1* %axis_vector_in_copy.last, i32* %axis_weight_in_copy.data, i4* %axis_weight_in_copy.keep, i4* %axis_weight_in_copy.strb, i1* %axis_weight_in_copy.last, i32* %axis_bias_in_copy.data, i4* %axis_bias_in_copy.keep, i4* %axis_bias_in_copy.strb, i1* %axis_bias_in_copy.last, i32* %axis_vector_out_copy.data, i4* %axis_vector_out_copy.keep, i4* %axis_vector_out_copy.strb, i1* %axis_vector_out_copy.last, %"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_in_len_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_out_len_in_copy, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %axis_control_in, i8* %axis_control_in_copy.data, i1* %axis_control_in_copy.keep, i1* %axis_control_in_copy.strb, i1* %axis_control_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %axis_sigmoid_switch_in, i8* %axis_sigmoid_switch_in_copy.data, i1* %axis_sigmoid_switch_in_copy.keep, i1* %axis_sigmoid_switch_in_copy.strb, i1* %axis_sigmoid_switch_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %axis_vector_in_len_in, i16* %axis_vector_in_len_in_copy.data, i2* %axis_vector_in_len_in_copy.keep, i2* %axis_vector_in_len_in_copy.strb, i1* %axis_vector_in_len_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %axis_vector_out_len_in, i16* %axis_vector_out_len_in_copy.data, i2* %axis_vector_out_len_in_copy.keep, i2* %axis_vector_out_len_in_copy.strb, i1* %axis_vector_out_len_in_copy.last, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %axis_vector_in, i16* %axis_vector_in_copy.data, i2* %axis_vector_in_copy.keep, i2* %axis_vector_in_copy.strb, i1* %axis_vector_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %axis_weight_in, i32* %axis_weight_in_copy.data, i4* %axis_weight_in_copy.keep, i4* %axis_weight_in_copy.strb, i1* %axis_weight_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %axis_bias_in, i32* %axis_bias_in_copy.data, i4* %axis_bias_in_copy.keep, i4* %axis_bias_in_copy.strb, i1* %axis_bias_in_copy.last, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %axis_vector_out, i32* %axis_vector_out_copy.data, i4* %axis_vector_out_copy.keep, i4* %axis_vector_out_copy.strb, i1* %axis_vector_out_copy.last, %"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_in, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_in_len_in, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_in_len_in_copy, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_out_len_in, %"class.hls::stream<ap_uint<12>, 0>"* %stream_vector_out_len_in_copy, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.0" %_V_data_V159, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.1" %_V_keep_V2610, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V5, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V15913, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V261014, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V481216, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.0" %_V_data_V1591317, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.1" %_V_keep_V26101418, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.3" %_V_last_V48121620, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V159131721, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2610141822, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3711151923, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4812162024, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.60"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.60"(i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.30"(i16* %_V_data_V15, i2* %_V_keep_V26, i2* %_V_strb_V37, i1* %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.30"(i16* %_V_data_V159, i2* %_V_keep_V2610, i2* %_V_strb_V3711, i1* %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.30"(i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* %_V_data_V15913, i4* %_V_keep_V261014, i4* %_V_strb_V371115, i1* %_V_last_V481216, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* %_V_data_V1591317, i4* %_V_keep_V26101418, i4* %_V_strb_V37111519, i1* %_V_last_V48121620, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* %_V_data_V159131721, i4* %_V_keep_V2610141822, i4* %_V_strb_V3711151923, i1* %_V_last_V4812162024, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %9, %"class.hls::stream<ap_uint<8>, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %11, %"class.hls::stream<ap_uint<8>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* align 512 %13, %"class.hls::stream<ap_uint<12>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* align 512 %15, %"class.hls::stream<ap_uint<12>, 0>"* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* align 512 %17, %"class.hls::stream<stream_data_v_t, 0>"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %19, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %21, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* align 512 %23, %"class.hls::stream<stream_data_h_t, 0>"* %22)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<8>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_uint<12>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_uint<12>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_uint<12>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<12>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_uint<12>, 0>", %"class.hls::stream<ap_uint<12>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<stream_data_v_t, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<stream_data_v_t, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* nonnull align 512 %0, %"class.hls::stream<stream_data_v_t, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<stream_data_v_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<stream_data_v_t, 0>", %"class.hls::stream<stream_data_v_t, 0>"* %2
  %8 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %0, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %2
  %8 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream<stream_data_h_t, 0>"* %0, null
  %3 = icmp eq %"class.hls::stream<stream_data_h_t, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* nonnull align 512 %0, %"class.hls::stream<stream_data_h_t, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<stream_data_h_t, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<stream_data_h_t, 0>", %"class.hls::stream<stream_data_h_t, 0>"* %2
  %8 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.0" %_V_data_V159, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.1" %_V_keep_V2610, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V5, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V15913, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V261014, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V481216, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.0" %_V_data_V1591317, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.1" %_V_keep_V26101418, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.3" %_V_last_V48121620, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V159131721, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2610141822, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3711151923, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4812162024, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2, i16* %_V_data_V15, i2* %_V_keep_V26, i2* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %3, i16* %_V_data_V159, i2* %_V_keep_V2610, i2* %_V_strb_V3711, i1* %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4, i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %5, i32* %_V_data_V15913, i4* %_V_keep_V261014, i4* %_V_strb_V371115, i1* %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %6, i32* %_V_data_V1591317, i4* %_V_keep_V26101418, i4* %_V_strb_V37111519, i1* %_V_last_V48121620)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %7, i32* %_V_data_V159131721, i4* %_V_keep_V2610141822, i4* %_V_strb_V3711151923, i1* %_V_last_V4812162024)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %8, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %10, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %12, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %14, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* %16, %"class.hls::stream<stream_data_v_t, 0>"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %18, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %20, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* %22, %"class.hls::stream<stream_data_h_t, 0>"* align 512 %23)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.11"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull align 512 %0, i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.11"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %2 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %2
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast float* %11 to i32*
  store i32 %10, i32* %12
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i4* %4 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<4>"* %18 to i4*
  store i4 %17, i4* %19
  %20 = bitcast i4* %3 to i8*
  %21 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i4* %3 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i4
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<4>"* %25 to i4*
  store i4 %24, i4* %26
  %27 = bitcast i1* %5 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %5 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %34, i8* %35)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"(i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.19"(i32* %_V_data_V, i4* %_V_keep_V, i4* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.19"(i32* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_12(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast float* %8 to i32*
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<4>"* %12 to i4*
  %14 = bitcast i4* %13 to i8*
  %15 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<4>"* %16 to i4*
  %18 = bitcast i4* %17 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.30"(i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.33"(i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.33"(i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<16>"* %8 to i16*
  %10 = bitcast i16* %9 to i8*
  %11 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  %12 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %13 = bitcast %"struct.ap_uint<2>"* %12 to i2*
  %14 = bitcast i2* %13 to i8*
  %15 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %14, i8* %15)
  %16 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %17 = bitcast %"struct.ap_uint<2>"* %16 to i2*
  %18 = bitcast i2* %17 to i8*
  %19 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %18, i8* %19)
  %20 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %21 = bitcast %"struct.ap_uint<1>"* %20 to i1*
  %22 = bitcast i1* %21 to i8*
  %23 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %22, i8* %23)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.41"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* nonnull align 512 %0, i16* %_V_data_V, i2* %_V_keep_V, i2* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>.41"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i16* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i2* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i16
  %4 = alloca i2
  %5 = alloca i2
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i16* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_2(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i16* %3 to i8*
  %9 = bitcast i16* %_V_data_V to i8*
  call void @fpga_fifo_pop_2(i8* %8, i8* %9)
  %10 = load volatile i16, i16* %3
  %11 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %12 = bitcast %"struct.ap_uint<16>"* %11 to i16*
  store i16 %10, i16* %12
  %13 = bitcast i2* %5 to i8*
  %14 = bitcast i2* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i2* %5 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i2
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %19 = bitcast %"struct.ap_uint<2>"* %18 to i2*
  store i2 %17, i2* %19
  %20 = bitcast i2* %4 to i8*
  %21 = bitcast i2* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %20, i8* %21)
  %22 = bitcast i2* %4 to i8*
  %23 = load i8, i8* %22
  %24 = trunc i8 %23 to i2
  %25 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %26 = bitcast %"struct.ap_uint<2>"* %25 to i2*
  store i2 %24, i2* %26
  %27 = bitcast i1* %2 to i8*
  %28 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %27, i8* %28)
  %29 = bitcast i1* %2 to i8*
  %30 = load i8, i8* %29
  %31 = trunc i8 %30 to i1
  %32 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %33 = bitcast %"struct.ap_uint<1>"* %32 to i1*
  store i1 %31, i1* %33
  %34 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %1 to i8*
  %35 = bitcast %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %34, i8* %35)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 %1, false
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.55"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull align 512 %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.55"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V) unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca i1
  %3 = alloca i1
  %4 = alloca i1
  %5 = alloca i8
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = call i1 @fpga_fifo_not_empty_1(i8* %_V_data_V)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  call void @fpga_fifo_pop_1(i8* %5, i8* %_V_data_V)
  %7 = load volatile i8, i8* %5
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<8>"* %8 to i8*
  store i8 %7, i8* %9
  %10 = bitcast i1* %4 to i8*
  %11 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %10, i8* %11)
  %12 = bitcast i1* %4 to i8*
  %13 = load i8, i8* %12
  %14 = trunc i8 %13 to i1
  %15 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %16 = bitcast %"struct.ap_uint<1>"* %15 to i1*
  store i1 %14, i1* %16
  %17 = bitcast i1* %3 to i8*
  %18 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %17, i8* %18)
  %19 = bitcast i1* %3 to i8*
  %20 = load i8, i8* %19
  %21 = trunc i8 %20 to i1
  %22 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %23 = bitcast %"struct.ap_uint<1>"* %22 to i1*
  store i1 %21, i1* %23
  %24 = bitcast i1* %2 to i8*
  %25 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %24, i8* %25)
  %26 = bitcast i1* %2 to i8*
  %27 = load i8, i8* %26
  %28 = trunc i8 %27 to i1
  %29 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %30 = bitcast %"struct.ap_uint<1>"* %29 to i1*
  store i1 %28, i1* %30
  %31 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1 to i8*
  %32 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_7(i8* %31, i8* %32)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.60"(i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %1 = icmp eq %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, null
  %2 = or i1 false, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.63"(i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* nonnull %0)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>.63"(i8* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.0" %_V_data_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.1" %_V_keep_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture "fpga.caller.interfaces"="layout_transformed" "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %2 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  %4 = call i1 @fpga_fifo_not_empty_7(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_7(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %2
  store %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>" %7, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1
  %8 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 0
  %9 = bitcast %"struct.ap_uint<8>"* %8 to i8*
  call void @fpga_fifo_push_1(i8* %9, i8* %_V_data_V)
  %10 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 1
  %11 = bitcast %"struct.ap_uint<1>"* %10 to i1*
  %12 = bitcast i1* %11 to i8*
  %13 = bitcast i1* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %12, i8* %13)
  %14 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 2
  %15 = bitcast %"struct.ap_uint<1>"* %14 to i1*
  %16 = bitcast i1* %15 to i8*
  %17 = bitcast i1* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %16, i8* %17)
  %18 = getelementptr inbounds %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>", %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i32 0, i32 0, i32 4
  %19 = bitcast %"struct.ap_uint<1>"* %18 to i1*
  %20 = bitcast i1* %19 to i8*
  %21 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %20, i8* %21)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_RBM_interface_hw(i8*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.0" %_V_data_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.1" %_V_keep_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.2" %_V_strb_V, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* noalias, i8* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.0" %_V_data_V1, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.1" %_V_keep_V2, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.2" %_V_strb_V3, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="3.3" %_V_last_V4, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.0" %_V_data_V15, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.1" %_V_keep_V26, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.2" %_V_strb_V37, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="5.3" %_V_last_V48, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.0" %_V_data_V159, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.1" %_V_keep_V2610, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.2" %_V_strb_V3711, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="10.3" %_V_last_V4812, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* noalias, i16* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V2, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V3, i2* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V4, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V5, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.0" %_V_data_V15913, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.1" %_V_keep_V261014, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.2" %_V_strb_V371115, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="11.3" %_V_last_V481216, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.0" %_V_data_V1591317, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.1" %_V_keep_V26101418, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.2" %_V_strb_V37111519, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="16.3" %_V_last_V48121620, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* noalias, i32* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.0" %_V_data_V159131721, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.1" %_V_keep_V2610141822, i4* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.2" %_V_strb_V3711151923, i1* noalias "fpga.caller.interfaces"="layout_transformed" "unpacked"="15.3" %_V_last_V4812162024, %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %0, i8* %_V_data_V, i1* %_V_keep_V, i1* %_V_strb_V, i1* %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %1, i8* %_V_data_V1, i1* %_V_keep_V2, i1* %_V_strb_V3, i1* %_V_last_V4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %2, i16* %_V_data_V15, i2* %_V_keep_V26, i2* %_V_strb_V37, i1* %_V_last_V48)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %3, i16* %_V_data_V159, i2* %_V_keep_V2610, i2* %_V_strb_V3711, i1* %_V_last_V4812)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"(%"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %4, i16* %_V_data_V2, i2* %_V_keep_V3, i2* %_V_strb_V4, i1* %_V_last_V5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %5, i32* %_V_data_V15913, i4* %_V_keep_V261014, i4* %_V_strb_V371115, i1* %_V_last_V481216)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %6, i32* %_V_data_V1591317, i4* %_V_keep_V26101418, i4* %_V_strb_V37111519, i1* %_V_last_V48121620)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<float, 0, 0, 0>, 0>.8"(%"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %7, i32* %_V_data_V159131721, i4* %_V_keep_V2610141822, i4* %_V_strb_V3711151923, i1* %_V_last_V4812162024)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %8, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %10, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %12, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %14, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* %16, %"class.hls::stream<stream_data_v_t, 0>"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %18, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %20, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* %22, %"class.hls::stream<stream_data_h_t, 0>"* align 512 %23)
  ret void
}

define void @RBM_interface_hw_stub_wrapper(i8*, i1*, i1*, i1*, i8*, i1*, i1*, i1*, i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*, i16*, i2*, i2*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, i32*, i4*, i4*, i1*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*) #6 {
entry:
  %40 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %41 = alloca %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"
  %42 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %43 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %44 = alloca %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"
  %45 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %46 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  %47 = alloca %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %40, i8* %0, i1* %1, i1* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %41, i8* %4, i1* %5, i1* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %42, i16* %8, i2* %9, i2* %10, i1* %11, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %43, i16* %12, i2* %13, i2* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %44, i16* %16, i2* %17, i2* %18, i1* %19, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %45, i32* %20, i4* %21, i4* %22, i1* %23, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %46, i32* %24, i4* %25, i4* %26, i1* %27, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %47, i32* %28, i4* %29, i4* %30, i1* %31, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %32, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %33, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %34, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %35, %"class.hls::stream<stream_data_v_t, 0>"* null, %"class.hls::stream<stream_data_v_t, 0>"* %36, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %37, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %38, %"class.hls::stream<stream_data_h_t, 0>"* null, %"class.hls::stream<stream_data_h_t, 0>"* %39)
  call void @RBM_interface_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %40, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %41, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %42, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %43, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %44, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %45, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %46, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %47, %"class.hls::stream<ap_uint<8>, 0>"* %32, %"class.hls::stream<ap_uint<8>, 0>"* %33, %"class.hls::stream<ap_uint<12>, 0>"* %34, %"class.hls::stream<ap_uint<12>, 0>"* %35, %"class.hls::stream<stream_data_v_t, 0>"* %36, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %37, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %38, %"class.hls::stream<stream_data_h_t, 0>"* %39)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %40, i8* %0, i1* %1, i1* %2, i1* %3, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"* %41, i8* %4, i1* %5, i1* %6, i1* %7, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %42, i16* %8, i2* %9, i2* %10, i1* %11, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %43, i16* %12, i2* %13, i2* %14, i1* %15, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"* %44, i16* %16, i2* %17, i2* %18, i1* %19, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %45, i32* %20, i4* %21, i4* %22, i1* %23, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %46, i32* %24, i4* %25, i4* %26, i1* %27, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"* %47, i32* %28, i4* %29, i4* %30, i1* %31, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %32, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %33, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %34, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %35, %"class.hls::stream<stream_data_v_t, 0>"* null, %"class.hls::stream<stream_data_v_t, 0>"* %36, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %37, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %38, %"class.hls::stream<stream_data_h_t, 0>"* null, %"class.hls::stream<stream_data_h_t, 0>"* %39)
  ret void
}

declare void @RBM_interface_hw_stub(%"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<8>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<ap_uint<16>, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*, %"class.hls::stream<hls::axis<float, 0, 0, 0>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*)

declare i1 @fpga_fifo_not_empty_7(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_7(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_7(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" "xlx.source"="user" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="16" "xlx.source"="user" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="32" "xlx.source"="user" }
attributes #10 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="64" "xlx.source"="user" }
attributes #11 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="128" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
