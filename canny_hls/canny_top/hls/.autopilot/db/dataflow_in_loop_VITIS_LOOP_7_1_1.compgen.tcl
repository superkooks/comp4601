# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_hysteresis_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_dataflow_in_loop_VITIS_LOOP_7_1_1_out_double_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w64_d9_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {out_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w18_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cond_loc_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {gaussian_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {sobel_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {nonmax_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {double_valid_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler canny_top_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {hysteresis_valid_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name i_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_0 \
    op interface \
    ports { i_0 { I 10 vector } i_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name gmem_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_in \
    op interface \
    ports { m_axi_gmem_in_0_AWVALID { O 1 bit } m_axi_gmem_in_0_AWREADY { I 1 bit } m_axi_gmem_in_0_AWADDR { O 64 vector } m_axi_gmem_in_0_AWID { O 1 vector } m_axi_gmem_in_0_AWLEN { O 32 vector } m_axi_gmem_in_0_AWSIZE { O 3 vector } m_axi_gmem_in_0_AWBURST { O 2 vector } m_axi_gmem_in_0_AWLOCK { O 2 vector } m_axi_gmem_in_0_AWCACHE { O 4 vector } m_axi_gmem_in_0_AWPROT { O 3 vector } m_axi_gmem_in_0_AWQOS { O 4 vector } m_axi_gmem_in_0_AWREGION { O 4 vector } m_axi_gmem_in_0_AWUSER { O 1 vector } m_axi_gmem_in_0_WVALID { O 1 bit } m_axi_gmem_in_0_WREADY { I 1 bit } m_axi_gmem_in_0_WDATA { O 32 vector } m_axi_gmem_in_0_WSTRB { O 4 vector } m_axi_gmem_in_0_WLAST { O 1 bit } m_axi_gmem_in_0_WID { O 1 vector } m_axi_gmem_in_0_WUSER { O 1 vector } m_axi_gmem_in_0_ARVALID { O 1 bit } m_axi_gmem_in_0_ARREADY { I 1 bit } m_axi_gmem_in_0_ARADDR { O 64 vector } m_axi_gmem_in_0_ARID { O 1 vector } m_axi_gmem_in_0_ARLEN { O 32 vector } m_axi_gmem_in_0_ARSIZE { O 3 vector } m_axi_gmem_in_0_ARBURST { O 2 vector } m_axi_gmem_in_0_ARLOCK { O 2 vector } m_axi_gmem_in_0_ARCACHE { O 4 vector } m_axi_gmem_in_0_ARPROT { O 3 vector } m_axi_gmem_in_0_ARQOS { O 4 vector } m_axi_gmem_in_0_ARREGION { O 4 vector } m_axi_gmem_in_0_ARUSER { O 1 vector } m_axi_gmem_in_0_RVALID { I 1 bit } m_axi_gmem_in_0_RREADY { O 1 bit } m_axi_gmem_in_0_RDATA { I 32 vector } m_axi_gmem_in_0_RLAST { I 1 bit } m_axi_gmem_in_0_RID { I 1 vector } m_axi_gmem_in_0_RFIFONUM { I 9 vector } m_axi_gmem_in_0_RUSER { I 1 vector } m_axi_gmem_in_0_RRESP { I 2 vector } m_axi_gmem_in_0_BVALID { I 1 bit } m_axi_gmem_in_0_BREADY { O 1 bit } m_axi_gmem_in_0_BRESP { I 2 vector } m_axi_gmem_in_0_BID { I 1 vector } m_axi_gmem_in_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name in_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_r \
    op interface \
    ports { in_r { I 64 vector } in_r_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name gmem_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_out \
    op interface \
    ports { m_axi_gmem_out_0_AWVALID { O 1 bit } m_axi_gmem_out_0_AWREADY { I 1 bit } m_axi_gmem_out_0_AWADDR { O 64 vector } m_axi_gmem_out_0_AWID { O 1 vector } m_axi_gmem_out_0_AWLEN { O 32 vector } m_axi_gmem_out_0_AWSIZE { O 3 vector } m_axi_gmem_out_0_AWBURST { O 2 vector } m_axi_gmem_out_0_AWLOCK { O 2 vector } m_axi_gmem_out_0_AWCACHE { O 4 vector } m_axi_gmem_out_0_AWPROT { O 3 vector } m_axi_gmem_out_0_AWQOS { O 4 vector } m_axi_gmem_out_0_AWREGION { O 4 vector } m_axi_gmem_out_0_AWUSER { O 1 vector } m_axi_gmem_out_0_WVALID { O 1 bit } m_axi_gmem_out_0_WREADY { I 1 bit } m_axi_gmem_out_0_WDATA { O 512 vector } m_axi_gmem_out_0_WSTRB { O 64 vector } m_axi_gmem_out_0_WLAST { O 1 bit } m_axi_gmem_out_0_WID { O 1 vector } m_axi_gmem_out_0_WUSER { O 1 vector } m_axi_gmem_out_0_ARVALID { O 1 bit } m_axi_gmem_out_0_ARREADY { I 1 bit } m_axi_gmem_out_0_ARADDR { O 64 vector } m_axi_gmem_out_0_ARID { O 1 vector } m_axi_gmem_out_0_ARLEN { O 32 vector } m_axi_gmem_out_0_ARSIZE { O 3 vector } m_axi_gmem_out_0_ARBURST { O 2 vector } m_axi_gmem_out_0_ARLOCK { O 2 vector } m_axi_gmem_out_0_ARCACHE { O 4 vector } m_axi_gmem_out_0_ARPROT { O 3 vector } m_axi_gmem_out_0_ARQOS { O 4 vector } m_axi_gmem_out_0_ARREGION { O 4 vector } m_axi_gmem_out_0_ARUSER { O 1 vector } m_axi_gmem_out_0_RVALID { I 1 bit } m_axi_gmem_out_0_RREADY { O 1 bit } m_axi_gmem_out_0_RDATA { I 512 vector } m_axi_gmem_out_0_RLAST { I 1 bit } m_axi_gmem_out_0_RID { I 1 vector } m_axi_gmem_out_0_RFIFONUM { I 9 vector } m_axi_gmem_out_0_RUSER { I 1 vector } m_axi_gmem_out_0_RRESP { I 2 vector } m_axi_gmem_out_0_BVALID { I 1 bit } m_axi_gmem_out_0_BREADY { O 1 bit } m_axi_gmem_out_0_BRESP { I 2 vector } m_axi_gmem_out_0_BID { I 1 vector } m_axi_gmem_out_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name out_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_r \
    op interface \
    ports { out_r { I 64 vector } out_r_ap_vld { I 1 bit } } \
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


