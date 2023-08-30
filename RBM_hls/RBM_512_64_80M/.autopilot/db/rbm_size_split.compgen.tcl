# This script segment is generated automatically by AutoPilot

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
    id 6 \
    name vector_in_len \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { vector_in_len_TVALID { I 1 bit } vector_in_len_TDATA { I 16 vector } vector_in_len_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vector_in_len'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 7 \
    name vector_out_len \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { vector_out_len_TVALID { I 1 bit } vector_out_len_TDATA { I 16 vector } vector_out_len_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'vector_out_len'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name vector_in_len_ch176 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_in_len_ch176 \
    op interface \
    ports { vector_in_len_ch176_din { O 12 vector } vector_in_len_ch176_num_data_valid { I 8 vector } vector_in_len_ch176_fifo_cap { I 8 vector } vector_in_len_ch176_full_n { I 1 bit } vector_in_len_ch176_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name vector_in_len_ch277 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_in_len_ch277 \
    op interface \
    ports { vector_in_len_ch277_din { O 12 vector } vector_in_len_ch277_num_data_valid { I 8 vector } vector_in_len_ch277_fifo_cap { I 8 vector } vector_in_len_ch277_full_n { I 1 bit } vector_in_len_ch277_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name vector_in_len_ch378 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_in_len_ch378 \
    op interface \
    ports { vector_in_len_ch378_din { O 12 vector } vector_in_len_ch378_num_data_valid { I 8 vector } vector_in_len_ch378_fifo_cap { I 8 vector } vector_in_len_ch378_full_n { I 1 bit } vector_in_len_ch378_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name vector_out_len_ch179 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_out_len_ch179 \
    op interface \
    ports { vector_out_len_ch179_din { O 12 vector } vector_out_len_ch179_num_data_valid { I 8 vector } vector_out_len_ch179_fifo_cap { I 8 vector } vector_out_len_ch179_full_n { I 1 bit } vector_out_len_ch179_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name vector_out_len_ch280 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_out_len_ch280 \
    op interface \
    ports { vector_out_len_ch280_din { O 12 vector } vector_out_len_ch280_num_data_valid { I 8 vector } vector_out_len_ch280_fifo_cap { I 8 vector } vector_out_len_ch280_full_n { I 1 bit } vector_out_len_ch280_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name vector_out_len_ch381 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_out_len_ch381 \
    op interface \
    ports { vector_out_len_ch381_din { O 12 vector } vector_out_len_ch381_num_data_valid { I 8 vector } vector_out_len_ch381_fifo_cap { I 8 vector } vector_out_len_ch381_full_n { I 1 bit } vector_out_len_ch381_write { O 1 bit } } \
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
set ID 14
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
set ID 15
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


