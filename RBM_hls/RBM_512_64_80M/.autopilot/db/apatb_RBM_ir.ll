; ModuleID = '/home/ubuntu20/Xilinx/ELE548/Restricted_Boltzmann_Machine/RBM_hls/RBM_512_64_80M/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<8>, 0>" = type { %"struct.ap_uint<8>" }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"class.hls::stream<ap_uint<12>, 0>" = type { %"struct.ap_uint<12>" }
%"struct.ap_uint<12>" = type { %"struct.ap_int_base<12, true>" }
%"struct.ap_int_base<12, true>" = type { %"struct.ssdm_int<12, true>" }
%"struct.ssdm_int<12, true>" = type { i12 }
%"class.hls::stream<stream_data_v_t, 0>" = type { %struct.stream_data_v_t }
%struct.stream_data_v_t = type { %"struct.ap_uint<16>", i1 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
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

@threading = internal global i1 false, align 512

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_RBM_ir(%"class.hls::stream<ap_uint<8>, 0>"* noalias nonnull dereferenceable(1) %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* noalias nonnull dereferenceable(1) %stream_sigmoid_switch, %"class.hls::stream<ap_uint<12>, 0>"* noalias nonnull dereferenceable(2) %vector_in_len, %"class.hls::stream<ap_uint<12>, 0>"* noalias nonnull dereferenceable(2) %vector_out_len, %"class.hls::stream<stream_data_v_t, 0>"* noalias nonnull %stream_vector_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias nonnull %stream_weight_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias nonnull dereferenceable(8) %stream_bias_in, %"class.hls::stream<stream_data_h_t, 0>"* noalias nonnull dereferenceable(16) %stream_vector_out) local_unnamed_addr #1 {
entry:
  %stream_control_in_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, i32 0) ]
  %stream_sigmoid_switch_copy = alloca %"class.hls::stream<ap_uint<8>, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_copy, i32 0) ]
  %vector_in_len_copy = alloca %"class.hls::stream<ap_uint<12>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<12>, 0>"* %vector_in_len_copy, i32 0) ]
  %vector_out_len_copy = alloca %"class.hls::stream<ap_uint<12>, 0>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<ap_uint<12>, 0>"* %vector_out_len_copy, i32 0) ]
  %stream_vector_in_copy = alloca %"class.hls::stream<stream_data_v_t, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, i32 0) ]
  %stream_weight_in_copy = alloca %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, i32 0) ]
  %stream_bias_in_copy = alloca %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>", align 512
  call void @llvm.sideeffect() #10 [ "stream_interface"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, i32 0) ]
  %stream_vector_out_copy = alloca %"class.hls::stream<stream_data_h_t, 0>", align 512
  call void @llvm.sideeffect() #11 [ "stream_interface"(%"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy, i32 0) ]
  store i1 false, i1* @threading, align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* nonnull %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* nonnull %stream_sigmoid_switch, %"class.hls::stream<ap_uint<8>, 0>"* nonnull align 512 %stream_sigmoid_switch_copy, %"class.hls::stream<ap_uint<12>, 0>"* nonnull %vector_in_len, %"class.hls::stream<ap_uint<12>, 0>"* nonnull align 512 %vector_in_len_copy, %"class.hls::stream<ap_uint<12>, 0>"* nonnull %vector_out_len, %"class.hls::stream<ap_uint<12>, 0>"* nonnull align 512 %vector_out_len_copy, %"class.hls::stream<stream_data_v_t, 0>"* nonnull %stream_vector_in, %"class.hls::stream<stream_data_v_t, 0>"* nonnull align 512 %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %stream_weight_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull %stream_bias_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* nonnull align 512 %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* nonnull %stream_vector_out, %"class.hls::stream<stream_data_h_t, 0>"* nonnull align 512 %stream_vector_out_copy)
  call void @apatb_RBM_hw(%"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_copy, %"class.hls::stream<ap_uint<12>, 0>"* %vector_in_len_copy, %"class.hls::stream<ap_uint<12>, 0>"* %vector_out_len_copy, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in, %"class.hls::stream<ap_uint<8>, 0>"* %stream_control_in_copy, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch, %"class.hls::stream<ap_uint<8>, 0>"* %stream_sigmoid_switch_copy, %"class.hls::stream<ap_uint<12>, 0>"* %vector_in_len, %"class.hls::stream<ap_uint<12>, 0>"* %vector_in_len_copy, %"class.hls::stream<ap_uint<12>, 0>"* %vector_out_len, %"class.hls::stream<ap_uint<12>, 0>"* %vector_out_len_copy, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in, %"class.hls::stream<stream_data_v_t, 0>"* %stream_vector_in_copy, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %stream_weight_in_copy, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %stream_bias_in_copy, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out, %"class.hls::stream<stream_data_h_t, 0>"* %stream_vector_out_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %1, %"class.hls::stream<ap_uint<8>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* align 512 %3, %"class.hls::stream<ap_uint<8>, 0>"* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* align 512 %5, %"class.hls::stream<ap_uint<12>, 0>"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* align 512 %7, %"class.hls::stream<ap_uint<12>, 0>"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* align 512 %9, %"class.hls::stream<stream_data_v_t, 0>"* %8)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %11, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %10)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %13, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %12)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* align 512 %15, %"class.hls::stream<stream_data_h_t, 0>"* %14)
  ret void
}

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<ap_uint<8>, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_1(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %4
  %10 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<ap_uint<8>, 0>"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

acopy:                                            ; preds = %entry
  %12 = getelementptr inbounds %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %13 = getelementptr inbounds %"class.hls::stream<ap_uint<8>, 0>", %"class.hls::stream<ap_uint<8>, 0>"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  call void @_ZN3hls3sim11task_move_1EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

declare void @_ZN3hls3sim11task_move_1EPvS1_(i8*, i8*) local_unnamed_addr

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<ap_uint<12>, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_2(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<ap_uint<12>, 0>", %"class.hls::stream<ap_uint<12>, 0>"* %4
  %10 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %10, i8* %11)
  br label %empty, !llvm.loop !7

acopy:                                            ; preds = %entry
  %12 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %0 to i8*
  %13 = bitcast %"class.hls::stream<ap_uint<12>, 0>"* %1 to i8*
  call void @_ZN3hls3sim11task_move_2EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

declare void @_ZN3hls3sim11task_move_2EPvS1_(i8*, i8*) local_unnamed_addr

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<stream_data_v_t, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_4(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<stream_data_v_t, 0>", %"class.hls::stream<stream_data_v_t, 0>"* %4
  %10 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !8

acopy:                                            ; preds = %entry
  %12 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %0 to i8*
  %13 = bitcast %"class.hls::stream<stream_data_v_t, 0>"* %1 to i8*
  call void @_ZN3hls3sim11task_move_4EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

declare void @_ZN3hls3sim11task_move_4EPvS1_(i8*, i8*) local_unnamed_addr

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_4(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %4
  %10 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %10, i8* %11)
  br label %empty, !llvm.loop !9

acopy:                                            ; preds = %entry
  %12 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  %13 = bitcast %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @_ZN3hls3sim11task_move_4EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_8(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %4
  %10 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %10, i8* %11)
  br label %empty, !llvm.loop !10

acopy:                                            ; preds = %entry
  %12 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %0 to i8*
  %13 = bitcast %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %1 to i8*
  call void @_ZN3hls3sim11task_move_8EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

declare void @_ZN3hls3sim11task_move_8EPvS1_(i8*, i8*) local_unnamed_addr

; Function Attrs: noinline
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

; Function Attrs: noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #4 {
entry:
  %2 = load i8, i8* bitcast (i1* @threading to i8*)
  %3 = trunc i8 %2 to i1
  %4 = alloca %"class.hls::stream<stream_data_h_t, 0>"
  br i1 %3, label %acopy, label %empty.preheader

empty.preheader:                                  ; preds = %entry
  br label %empty

empty:                                            ; preds = %push, %empty.preheader
  %5 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %1 to i8*
  %6 = call i1 @fpga_fifo_not_empty_16(i8* %5)
  br i1 %6, label %push, label %ret

push:                                             ; preds = %empty
  %7 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %4 to i8*
  %8 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %7, i8* %8)
  %9 = load volatile %"class.hls::stream<stream_data_h_t, 0>", %"class.hls::stream<stream_data_h_t, 0>"* %4
  %10 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %4 to i8*
  %11 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %0 to i8*
  call void @fpga_fifo_push_16(i8* %10, i8* %11)
  br label %empty, !llvm.loop !11

acopy:                                            ; preds = %entry
  %12 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %0 to i8*
  %13 = bitcast %"class.hls::stream<stream_data_h_t, 0>"* %1 to i8*
  call void @_ZN3hls3sim12task_move_16EPvS1_(i8* %12, i8* %13)
  br label %ret

ret:                                              ; preds = %acopy, %empty
  ret void
}

declare void @_ZN3hls3sim12task_move_16EPvS1_(i8*, i8*) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %4, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %6, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* %8, %"class.hls::stream<stream_data_v_t, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %10, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %12, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* %14, %"class.hls::stream<stream_data_h_t, 0>"* align 512 %15)
  ret void
}

declare void @apatb_RBM_hw(%"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*)

; Function Attrs: noinline
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<8>, 0>"* noalias, %"class.hls::stream<ap_uint<8>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_uint<12>, 0>"* noalias, %"class.hls::stream<ap_uint<12>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_v_t, 0>"* noalias, %"class.hls::stream<stream_data_v_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<stream_data_h_t, 0>"* noalias, %"class.hls::stream<stream_data_h_t, 0>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<8>, 0>"(%"class.hls::stream<ap_uint<8>, 0>"* %2, %"class.hls::stream<ap_uint<8>, 0>"* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %4, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<12>, 0>"(%"class.hls::stream<ap_uint<12>, 0>"* %6, %"class.hls::stream<ap_uint<12>, 0>"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_v_t, 0>"(%"class.hls::stream<stream_data_v_t, 0>"* %8, %"class.hls::stream<stream_data_v_t, 0>"* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %10, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"(%"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %12, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<stream_data_h_t, 0>"(%"class.hls::stream<stream_data_h_t, 0>"* %14, %"class.hls::stream<stream_data_h_t, 0>"* align 512 %15)
  ret void
}

define void @RBM_hw_stub_wrapper(%"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*) #6 {
entry:
  call void @copy_out(%"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %2, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %3, %"class.hls::stream<stream_data_v_t, 0>"* null, %"class.hls::stream<stream_data_v_t, 0>"* %4, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %5, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %6, %"class.hls::stream<stream_data_h_t, 0>"* null, %"class.hls::stream<stream_data_h_t, 0>"* %7)
  call void @RBM_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"class.hls::stream<ap_uint<12>, 0>"* %2, %"class.hls::stream<ap_uint<12>, 0>"* %3, %"class.hls::stream<stream_data_v_t, 0>"* %4, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %5, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %6, %"class.hls::stream<stream_data_h_t, 0>"* %7)
  store i1 true, i1* @threading
  call void @copy_in(%"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %0, %"class.hls::stream<ap_uint<8>, 0>"* null, %"class.hls::stream<ap_uint<8>, 0>"* %1, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %2, %"class.hls::stream<ap_uint<12>, 0>"* null, %"class.hls::stream<ap_uint<12>, 0>"* %3, %"class.hls::stream<stream_data_v_t, 0>"* null, %"class.hls::stream<stream_data_v_t, 0>"* %4, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"* %5, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* null, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"* %6, %"class.hls::stream<stream_data_h_t, 0>"* null, %"class.hls::stream<stream_data_h_t, 0>"* %7)
  ret void
}

declare void @RBM_hw_stub(%"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<8>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<ap_uint<12>, 0>"*, %"class.hls::stream<stream_data_v_t, 0>"*, %"class.hls::stream<ap_fixed<25, 3, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<ap_fixed<48, 22, AP_TRN, AP_WRAP, 0>, 0>"*, %"class.hls::stream<stream_data_h_t, 0>"*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
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
!has_MT_tasks = !{}

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
