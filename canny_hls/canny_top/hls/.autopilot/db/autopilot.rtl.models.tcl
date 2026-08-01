set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME canny_top_entry_proc}
  {SRCNAME grayscale_Pipeline_burst_read MODELNAME grayscale_Pipeline_burst_read RTLNAME canny_top_grayscale_Pipeline_burst_read
    SUBMODULES {
      {MODELNAME canny_top_flow_control_loop_pipe_sequential_init RTLNAME canny_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME grayscale_Pipeline_unpack_bytes MODELNAME grayscale_Pipeline_unpack_bytes RTLNAME canny_top_grayscale_Pipeline_unpack_bytes}
  {SRCNAME grayscale_Pipeline_unpack_pixels MODELNAME grayscale_Pipeline_unpack_pixels RTLNAME canny_top_grayscale_Pipeline_unpack_pixels
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_65_5_8_1_1 RTLNAME canny_top_sparsemux_65_5_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME canny_top_mul_8ns_8ns_15_1_1 RTLNAME canny_top_mul_8ns_8ns_15_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 RTLNAME canny_top_mac_muladd_8ns_5ns_15s_15_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 RTLNAME canny_top_mac_muladd_8ns_8ns_15ns_16_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME grayscale MODELNAME grayscale RTLNAME canny_top_grayscale
    SUBMODULES {
      {MODELNAME canny_top_grayscale_row_words_RAM_AUTO_1R1W RTLNAME canny_top_grayscale_row_words_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_grayscale_row_bytes_RAM_AUTO_1R1W RTLNAME canny_top_grayscale_row_bytes_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_94_2 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_94_2 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_94_2
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_9_2_8_1_1 RTLNAME canny_top_sparsemux_9_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gaussian_blur_Pipeline_VITIS_LOOP_157_7 MODELNAME gaussian_blur_Pipeline_VITIS_LOOP_157_7 RTLNAME canny_top_gaussian_blur_Pipeline_VITIS_LOOP_157_7
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_11_3_12_1_1 RTLNAME canny_top_sparsemux_11_3_12_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME gaussian_blur MODELNAME gaussian_blur RTLNAME canny_top_gaussian_blur
    SUBMODULES {
      {MODELNAME canny_top_srem_10ns_4ns_10_14_seq_1 RTLNAME canny_top_srem_10ns_4ns_10_14_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 13 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_srem_11ns_4ns_11_15_seq_1 RTLNAME canny_top_srem_11ns_4ns_11_15_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 14 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_urem_9ns_4ns_3_13_seq_1 RTLNAME canny_top_urem_9ns_4ns_3_13_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 12 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_gaussian_blur_lineBuffer_RAM_AUTO_1R1W RTLNAME canny_top_gaussian_blur_lineBuffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME sobel_Pipeline_VITIS_LOOP_96_2 MODELNAME sobel_Pipeline_VITIS_LOOP_96_2 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_96_2}
  {SRCNAME sobel_Pipeline_VITIS_LOOP_149_6 MODELNAME sobel_Pipeline_VITIS_LOOP_149_6 RTLNAME canny_top_sobel_Pipeline_VITIS_LOOP_149_6
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_7_2_8_1_1 RTLNAME canny_top_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME canny_top_mul_10ns_11ns_20_1_1 RTLNAME canny_top_mul_10ns_11ns_20_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_10ns_19_1_1 RTLNAME canny_top_mul_10ns_10ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_mul_10ns_13ns_22_1_1 RTLNAME canny_top_mul_10ns_13ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_sparsemux_9_3_2_1_1 RTLNAME canny_top_sparsemux_9_3_2_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME sobel MODELNAME sobel RTLNAME canny_top_sobel
    SUBMODULES {
      {MODELNAME canny_top_urem_32s_3ns_2_36_seq_1 RTLNAME canny_top_urem_32s_3ns_2_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_sobel_lineBuffer_RAM_AUTO_1R1W RTLNAME canny_top_sobel_lineBuffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_50_2 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_50_2 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_50_2}
  {SRCNAME non_maximum_suppression_Pipeline_VITIS_LOOP_105_5 MODELNAME non_maximum_suppression_Pipeline_VITIS_LOOP_105_5 RTLNAME canny_top_non_maximum_suppression_Pipeline_VITIS_LOOP_105_5
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_11_4_16_1_1 RTLNAME canny_top_sparsemux_11_4_16_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME canny_top_sparsemux_7_2_16_1_1 RTLNAME canny_top_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME non_maximum_suppression MODELNAME non_maximum_suppression RTLNAME canny_top_non_maximum_suppression
    SUBMODULES {
      {MODELNAME canny_top_srem_10ns_3ns_10_14_seq_1 RTLNAME canny_top_srem_10ns_3ns_10_14_seq_1 BINDTYPE op TYPE srem IMPL auto_seq LATENCY 13 ALLOW_PRAGMA 1}
      {MODELNAME canny_top_non_maximum_suppression_lineBuffer_magnitude_RAM_AUTO_1R1W RTLNAME canny_top_non_maximum_suppression_lineBuffer_magnitude_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME double_threshold MODELNAME double_threshold RTLNAME canny_top_double_threshold
    SUBMODULES {
      {MODELNAME canny_top_flow_control_loop_pipe RTLNAME canny_top_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_top_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME hysteresis<1>_Pipeline_VITIS_LOOP_78_2 MODELNAME hysteresis_1_Pipeline_VITIS_LOOP_78_2 RTLNAME canny_top_hysteresis_1_Pipeline_VITIS_LOOP_78_2}
  {SRCNAME hysteresis<1>_Pipeline_VITIS_LOOP_143_5 MODELNAME hysteresis_1_Pipeline_VITIS_LOOP_143_5 RTLNAME canny_top_hysteresis_1_Pipeline_VITIS_LOOP_143_5
    SUBMODULES {
      {MODELNAME canny_top_sparsemux_7_2_8_1_1_x RTLNAME canny_top_sparsemux_7_2_8_1_1_x BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
    }
  }
  {SRCNAME hysteresis<1> MODELNAME hysteresis_1_s RTLNAME canny_top_hysteresis_1_s}
  {SRCNAME hysteresis<2>_Pipeline_VITIS_LOOP_78_2 MODELNAME hysteresis_2_Pipeline_VITIS_LOOP_78_2 RTLNAME canny_top_hysteresis_2_Pipeline_VITIS_LOOP_78_2}
  {SRCNAME hysteresis<2>_Pipeline_VITIS_LOOP_143_5 MODELNAME hysteresis_2_Pipeline_VITIS_LOOP_143_5 RTLNAME canny_top_hysteresis_2_Pipeline_VITIS_LOOP_143_5}
  {SRCNAME hysteresis<2> MODELNAME hysteresis_2_s RTLNAME canny_top_hysteresis_2_s}
  {SRCNAME hysteresis<3>_Pipeline_VITIS_LOOP_78_2 MODELNAME hysteresis_3_Pipeline_VITIS_LOOP_78_2 RTLNAME canny_top_hysteresis_3_Pipeline_VITIS_LOOP_78_2}
  {SRCNAME hysteresis<3>_Pipeline_VITIS_LOOP_143_5 MODELNAME hysteresis_3_Pipeline_VITIS_LOOP_143_5 RTLNAME canny_top_hysteresis_3_Pipeline_VITIS_LOOP_143_5}
  {SRCNAME hysteresis<3> MODELNAME hysteresis_3_s RTLNAME canny_top_hysteresis_3_s}
  {SRCNAME hysteresis<4>_Pipeline_VITIS_LOOP_78_2 MODELNAME hysteresis_4_Pipeline_VITIS_LOOP_78_2 RTLNAME canny_top_hysteresis_4_Pipeline_VITIS_LOOP_78_2}
  {SRCNAME hysteresis<4>_Pipeline_VITIS_LOOP_143_5 MODELNAME hysteresis_4_Pipeline_VITIS_LOOP_143_5 RTLNAME canny_top_hysteresis_4_Pipeline_VITIS_LOOP_143_5}
  {SRCNAME hysteresis<4> MODELNAME hysteresis_4_s RTLNAME canny_top_hysteresis_4_s}
  {SRCNAME write_frame MODELNAME write_frame RTLNAME canny_top_write_frame
    SUBMODULES {
      {MODELNAME canny_top_flow_control_loop_delay_pipe RTLNAME canny_top_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME canny_top_flow_control_loop_delay_pipe_U}
    }
  }
  {SRCNAME canny_top MODELNAME canny_top RTLNAME canny_top IS_TOP 1
    SUBMODULES {
      {MODELNAME canny_top_fifo_w64_d11_S RTLNAME canny_top_fifo_w64_d11_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME out_r_c_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gray_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gauss_out_U}
      {MODELNAME canny_top_fifo_w24_d1024_A RTLNAME canny_top_fifo_w24_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME sobel_out_U}
      {MODELNAME canny_top_fifo_w16_d1024_A RTLNAME canny_top_fifo_w16_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME nms_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME thresh_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hyst1_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hyst2_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hyst3_out_U}
      {MODELNAME canny_top_fifo_w8_d1024_A RTLNAME canny_top_fifo_w8_d1024_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hyst4_out_U}
      {MODELNAME canny_top_start_for_write_frame_U0 RTLNAME canny_top_start_for_write_frame_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_frame_U0_U}
      {MODELNAME canny_top_start_for_gaussian_blur_U0 RTLNAME canny_top_start_for_gaussian_blur_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_gaussian_blur_U0_U}
      {MODELNAME canny_top_start_for_sobel_U0 RTLNAME canny_top_start_for_sobel_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_sobel_U0_U}
      {MODELNAME canny_top_start_for_non_maximum_suppression_U0 RTLNAME canny_top_start_for_non_maximum_suppression_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_non_maximum_suppression_U0_U}
      {MODELNAME canny_top_start_for_double_threshold_U0 RTLNAME canny_top_start_for_double_threshold_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_double_threshold_U0_U}
      {MODELNAME canny_top_start_for_hysteresis_1_U0 RTLNAME canny_top_start_for_hysteresis_1_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hysteresis_1_U0_U}
      {MODELNAME canny_top_start_for_hysteresis_2_U0 RTLNAME canny_top_start_for_hysteresis_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hysteresis_2_U0_U}
      {MODELNAME canny_top_start_for_hysteresis_3_U0 RTLNAME canny_top_start_for_hysteresis_3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hysteresis_3_U0_U}
      {MODELNAME canny_top_start_for_hysteresis_4_U0 RTLNAME canny_top_start_for_hysteresis_4_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_hysteresis_4_U0_U}
      {MODELNAME canny_top_gmem0_m_axi RTLNAME canny_top_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_top_gmem_m_axi RTLNAME canny_top_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME canny_top_control_s_axi RTLNAME canny_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
