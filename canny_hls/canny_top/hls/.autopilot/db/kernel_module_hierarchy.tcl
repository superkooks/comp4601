set ModuleHierarchy {[{
"Name" : "canny_top", "RefName" : "canny_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2_fu_120", "RefName" : "canny_top_Pipeline_VITIS_LOOP_30_1_VITIS_LOOP_31_2","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2","RefName" : "VITIS_LOOP_30_1_VITIS_LOOP_31_2","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_69_2_fu_128", "RefName" : "canny_top_Pipeline_VITIS_LOOP_68_1_VITIS_LOOP_69_2","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_68_1_VITIS_LOOP_69_2","RefName" : "VITIS_LOOP_68_1_VITIS_LOOP_69_2","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2_fu_136", "RefName" : "canny_top_Pipeline_VITIS_LOOP_22_1_VITIS_LOOP_23_2","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_22_1_VITIS_LOOP_23_2","RefName" : "VITIS_LOOP_22_1_VITIS_LOOP_23_2","ID" : "6","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2_fu_146", "RefName" : "canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "7","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","RefName" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_21_fu_154", "RefName" : "canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_21","ID" : "9","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","RefName" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_22_fu_162", "RefName" : "canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_22","ID" : "11","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","RefName" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "12","Type" : "pipeline"},]},
	{"Name" : "grp_canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_23_fu_170", "RefName" : "canny_top_Pipeline_VITIS_LOOP_44_1_VITIS_LOOP_45_23","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","RefName" : "VITIS_LOOP_44_1_VITIS_LOOP_45_2","ID" : "14","Type" : "pipeline"},]},
	{"Name" : "grp_dataflow_parent_loop_proc_fu_178", "RefName" : "dataflow_parent_loop_proc","ID" : "15","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_11_1","RefName" : "VITIS_LOOP_11_1","ID" : "16","Type" : "no",
		"SubInsts" : [
		{"Name" : "dataflow_in_loop_VITIS_LOOP_11_1_1_U0", "RefName" : "dataflow_in_loop_VITIS_LOOP_11_1_1","ID" : "17","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "cond_loc_channel_U", "RefName" : "dataflow_in_loop_VITIS_LOOP_11_1_1_Block_newFuncRoot_proc","ID" : "18","Type" : "sequential"},
				{"Name" : "grayscale_U0", "RefName" : "grayscale","ID" : "19","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_grayscale_Pipeline_VITIS_LOOP_7_1_fu_54", "RefName" : "grayscale_Pipeline_VITIS_LOOP_7_1","ID" : "20","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_7_1","RefName" : "VITIS_LOOP_7_1","ID" : "21","Type" : "pipeline"},]},]},
				{"Name" : "gaussian_valid_U", "RefName" : "gaussian_blur","ID" : "22","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_46_1_fu_54", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_46_1","ID" : "23","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_46_1","RefName" : "VITIS_LOOP_46_1","ID" : "24","Type" : "pipeline"},]},
					{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_64_2_fu_67", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_64_2","ID" : "25","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_64_2","RefName" : "VITIS_LOOP_64_2","ID" : "26","Type" : "pipeline"},]},]},
				{"Name" : "sobel_valid_U", "RefName" : "sobel","ID" : "27","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_89_1_fu_75", "RefName" : "sobel_Pipeline_VITIS_LOOP_89_1","ID" : "28","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_89_1","RefName" : "VITIS_LOOP_89_1","ID" : "29","Type" : "pipeline"},]},
					{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_118_2_fu_90", "RefName" : "sobel_Pipeline_VITIS_LOOP_118_2","ID" : "30","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_118_2","RefName" : "VITIS_LOOP_118_2","ID" : "31","Type" : "pipeline"},]},]},
				{"Name" : "nonmax_valid_U", "RefName" : "non_maximum_suppression","ID" : "32","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_45_1_fu_81", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_45_1","ID" : "33","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_45_1","RefName" : "VITIS_LOOP_45_1","ID" : "34","Type" : "pipeline"},]},
					{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_81_2_fu_99", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_81_2","ID" : "35","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_81_2","RefName" : "VITIS_LOOP_81_2","ID" : "36","Type" : "pipeline"},]},]},
				{"Name" : "double_valid_U", "RefName" : "double_threshold","ID" : "37","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_double_threshold_Pipeline_VITIS_LOOP_16_1_fu_32", "RefName" : "double_threshold_Pipeline_VITIS_LOOP_16_1","ID" : "38","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_16_1","RefName" : "VITIS_LOOP_16_1","ID" : "39","Type" : "pipeline"},]},]},
				{"Name" : "hysteresis1_valid_U", "RefName" : "hysteresis_1_s","ID" : "40","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_hysteresis_1_Pipeline_VITIS_LOOP_66_1_fu_73", "RefName" : "hysteresis_1_Pipeline_VITIS_LOOP_66_1","ID" : "41","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_66_1","RefName" : "VITIS_LOOP_66_1","ID" : "42","Type" : "pipeline"},]},
					{"Name" : "grp_hysteresis_1_Pipeline_VITIS_LOOP_114_2_fu_86", "RefName" : "hysteresis_1_Pipeline_VITIS_LOOP_114_2","ID" : "43","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_114_2","RefName" : "VITIS_LOOP_114_2","ID" : "44","Type" : "pipeline"},]},]},
				{"Name" : "hysteresis2_valid_U", "RefName" : "hysteresis_2_s","ID" : "45","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_hysteresis_2_Pipeline_VITIS_LOOP_66_1_fu_71", "RefName" : "hysteresis_2_Pipeline_VITIS_LOOP_66_1","ID" : "46","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_66_1","RefName" : "VITIS_LOOP_66_1","ID" : "47","Type" : "pipeline"},]},
					{"Name" : "grp_hysteresis_2_Pipeline_VITIS_LOOP_114_2_fu_84", "RefName" : "hysteresis_2_Pipeline_VITIS_LOOP_114_2","ID" : "48","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_114_2","RefName" : "VITIS_LOOP_114_2","ID" : "49","Type" : "pipeline"},]},]},
				{"Name" : "hysteresis3_valid_U", "RefName" : "hysteresis_3_s","ID" : "50","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_hysteresis_3_Pipeline_VITIS_LOOP_66_1_fu_71", "RefName" : "hysteresis_3_Pipeline_VITIS_LOOP_66_1","ID" : "51","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_66_1","RefName" : "VITIS_LOOP_66_1","ID" : "52","Type" : "pipeline"},]},
					{"Name" : "grp_hysteresis_3_Pipeline_VITIS_LOOP_114_2_fu_84", "RefName" : "hysteresis_3_Pipeline_VITIS_LOOP_114_2","ID" : "53","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_114_2","RefName" : "VITIS_LOOP_114_2","ID" : "54","Type" : "pipeline"},]},]},
				{"Name" : "hysteresis4_valid_U", "RefName" : "hysteresis_4_s","ID" : "55","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_hysteresis_4_Pipeline_VITIS_LOOP_66_1_fu_71", "RefName" : "hysteresis_4_Pipeline_VITIS_LOOP_66_1","ID" : "56","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_66_1","RefName" : "VITIS_LOOP_66_1","ID" : "57","Type" : "pipeline"},]},
					{"Name" : "grp_hysteresis_4_Pipeline_VITIS_LOOP_114_2_fu_84", "RefName" : "hysteresis_4_Pipeline_VITIS_LOOP_114_2","ID" : "58","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_114_2","RefName" : "VITIS_LOOP_114_2","ID" : "59","Type" : "pipeline"},]},]},
				{"Name" : "output_row_U0", "RefName" : "output_row","ID" : "60","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_output_row_Pipeline_VITIS_LOOP_20_1_fu_82", "RefName" : "output_row_Pipeline_VITIS_LOOP_20_1","ID" : "61","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_20_1","RefName" : "VITIS_LOOP_20_1","ID" : "62","Type" : "pipeline"},]},]},]},]},]},]
}]}