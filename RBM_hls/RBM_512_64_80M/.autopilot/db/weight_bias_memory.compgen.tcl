# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler RBM_weight_bias_memory_weight_bias_memory_stream_stream_stream_stream_stream_strebkb BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler RBM_weight_bias_memory_bias_V_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 36 \
    name stream_weight_in \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { stream_weight_in_TVALID { I 1 bit } stream_weight_in_TDATA { I 32 vector } stream_weight_in_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_weight_in'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 37 \
    name stream_bias_in \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { stream_bias_in_TVALID { I 1 bit } stream_bias_in_TDATA { I 48 vector } stream_bias_in_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_bias_in'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name control_ch375 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_control_ch375 \
    op interface \
    ports { control_ch375_dout { I 8 vector } control_ch375_num_data_valid { I 8 vector } control_ch375_fifo_cap { I 8 vector } control_ch375_empty_n { I 1 bit } control_ch375_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name vector_in_len_ch378 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_in_len_ch378 \
    op interface \
    ports { vector_in_len_ch378_dout { I 12 vector } vector_in_len_ch378_num_data_valid { I 8 vector } vector_in_len_ch378_fifo_cap { I 8 vector } vector_in_len_ch378_empty_n { I 1 bit } vector_in_len_ch378_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name vector_out_len_ch280 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_out_len_ch280 \
    op interface \
    ports { vector_out_len_ch280_dout { I 12 vector } vector_out_len_ch280_num_data_valid { I 8 vector } vector_out_len_ch280_fifo_cap { I 8 vector } vector_out_len_ch280_empty_n { I 1 bit } vector_out_len_ch280_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name stream_weight_row_index \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_weight_row_index \
    op interface \
    ports { stream_weight_row_index_dout { I 640 vector } stream_weight_row_index_num_data_valid { I 8 vector } stream_weight_row_index_fifo_cap { I 8 vector } stream_weight_row_index_empty_n { I 1 bit } stream_weight_row_index_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name stream_bias_col_index82 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_bias_col_index82 \
    op interface \
    ports { stream_bias_col_index82_dout { I 10 vector } stream_bias_col_index82_num_data_valid { I 8 vector } stream_bias_col_index82_fifo_cap { I 8 vector } stream_bias_col_index82_empty_n { I 1 bit } stream_bias_col_index82_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name stream_weight_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_weight_out \
    op interface \
    ports { stream_weight_out_din { O 1600 vector } stream_weight_out_num_data_valid { I 8 vector } stream_weight_out_fifo_cap { I 8 vector } stream_weight_out_full_n { I 1 bit } stream_weight_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name stream_bias_out84 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_bias_out84 \
    op interface \
    ports { stream_bias_out84_din { O 48 vector } stream_bias_out84_num_data_valid { I 8 vector } stream_bias_out84_fifo_cap { I 8 vector } stream_bias_out84_full_n { I 1 bit } stream_bias_out84_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# RegSlice definition:
set ID 42
set RegSliceName RBM_regslice_both
set RegSliceInstName RBM_regslice_both_U
set CoreName ap_simcore_RBM_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix RBM_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 43
set RegSliceName RBM_regslice_both
set RegSliceInstName RBM_regslice_both_U
set CoreName ap_simcore_RBM_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix RBM_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


