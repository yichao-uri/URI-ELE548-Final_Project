# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name control_ch274 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_control_ch274 \
    op interface \
    ports { control_ch274_dout { I 8 vector } control_ch274_num_data_valid { I 8 vector } control_ch274_fifo_cap { I 8 vector } control_ch274_empty_n { I 1 bit } control_ch274_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name vector_in_len_ch277 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_in_len_ch277 \
    op interface \
    ports { vector_in_len_ch277_dout { I 12 vector } vector_in_len_ch277_num_data_valid { I 8 vector } vector_in_len_ch277_fifo_cap { I 8 vector } vector_in_len_ch277_empty_n { I 1 bit } vector_in_len_ch277_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name vector_out_len_ch179 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vector_out_len_ch179 \
    op interface \
    ports { vector_out_len_ch179_dout { I 12 vector } vector_out_len_ch179_num_data_valid { I 8 vector } vector_out_len_ch179_fifo_cap { I 8 vector } vector_out_len_ch179_empty_n { I 1 bit } vector_out_len_ch179_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name buffer_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buffer_out \
    op interface \
    ports { buffer_out_dout { I 21 vector } buffer_out_num_data_valid { I 11 vector } buffer_out_fifo_cap { I 11 vector } buffer_out_empty_n { I 1 bit } buffer_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name systolic_input \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_systolic_input \
    op interface \
    ports { systolic_input_din { O 21 vector } systolic_input_num_data_valid { I 8 vector } systolic_input_fifo_cap { I 8 vector } systolic_input_full_n { I 1 bit } systolic_input_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name stream_weight_row_index \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_weight_row_index \
    op interface \
    ports { stream_weight_row_index_din { O 640 vector } stream_weight_row_index_num_data_valid { I 8 vector } stream_weight_row_index_fifo_cap { I 8 vector } stream_weight_row_index_full_n { I 1 bit } stream_weight_row_index_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name stream_bias_col_index82 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_bias_col_index82 \
    op interface \
    ports { stream_bias_col_index82_din { O 10 vector } stream_bias_col_index82_num_data_valid { I 8 vector } stream_bias_col_index82_fifo_cap { I 8 vector } stream_bias_col_index82_full_n { I 1 bit } stream_bias_col_index82_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name stream_pe_valid83 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_stream_pe_valid83 \
    op interface \
    ports { stream_pe_valid83_din { O 64 vector } stream_pe_valid83_num_data_valid { I 8 vector } stream_pe_valid83_fifo_cap { I 8 vector } stream_pe_valid83_full_n { I 1 bit } stream_pe_valid83_write { O 1 bit } } \
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


