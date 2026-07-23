set ModuleHierarchy {[{
"Name" : "canny_top", "RefName" : "canny_top","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_7_1","RefName" : "VITIS_LOOP_7_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "dataflow_in_loop_VITIS_LOOP_7_1_1_U0", "RefName" : "dataflow_in_loop_VITIS_LOOP_7_1_1","ID" : "2","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "3","Type" : "sequential"},
			{"Name" : "cond_loc_channel_U", "RefName" : "dataflow_in_loop_VITIS_LOOP_7_1_1_Block_newFuncRoot_proc","ID" : "4","Type" : "sequential"},
			{"Name" : "grayscale_U0", "RefName" : "grayscale","ID" : "5","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_grayscale_Pipeline_VITIS_LOOP_7_1_fu_50", "RefName" : "grayscale_Pipeline_VITIS_LOOP_7_1","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_7_1","RefName" : "VITIS_LOOP_7_1","ID" : "7","Type" : "pipeline"},]},]},
			{"Name" : "gaussian_valid_U", "RefName" : "gaussian_blur","ID" : "8","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_46_1_fu_54", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_46_1","ID" : "9","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_46_1","RefName" : "VITIS_LOOP_46_1","ID" : "10","Type" : "pipeline"},]},
				{"Name" : "grp_gaussian_blur_Pipeline_VITIS_LOOP_64_2_fu_67", "RefName" : "gaussian_blur_Pipeline_VITIS_LOOP_64_2","ID" : "11","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_64_2","RefName" : "VITIS_LOOP_64_2","ID" : "12","Type" : "pipeline"},]},]},
			{"Name" : "sobel_valid_U", "RefName" : "sobel","ID" : "13","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_89_1_fu_75", "RefName" : "sobel_Pipeline_VITIS_LOOP_89_1","ID" : "14","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_89_1","RefName" : "VITIS_LOOP_89_1","ID" : "15","Type" : "pipeline"},]},
				{"Name" : "grp_sobel_Pipeline_VITIS_LOOP_118_2_fu_90", "RefName" : "sobel_Pipeline_VITIS_LOOP_118_2","ID" : "16","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_118_2","RefName" : "VITIS_LOOP_118_2","ID" : "17","Type" : "pipeline"},]},]},
			{"Name" : "nonmax_valid_U", "RefName" : "non_maximum_suppression","ID" : "18","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_45_1_fu_81", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_45_1","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_45_1","RefName" : "VITIS_LOOP_45_1","ID" : "20","Type" : "pipeline"},]},
				{"Name" : "grp_non_maximum_suppression_Pipeline_VITIS_LOOP_81_2_fu_99", "RefName" : "non_maximum_suppression_Pipeline_VITIS_LOOP_81_2","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_81_2","RefName" : "VITIS_LOOP_81_2","ID" : "22","Type" : "pipeline"},]},]},
			{"Name" : "double_valid_U", "RefName" : "double_threshold","ID" : "23","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_double_threshold_Pipeline_VITIS_LOOP_16_1_fu_32", "RefName" : "double_threshold_Pipeline_VITIS_LOOP_16_1","ID" : "24","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_16_1","RefName" : "VITIS_LOOP_16_1","ID" : "25","Type" : "pipeline"},]},]},
			{"Name" : "hysteresis_valid_U", "RefName" : "hysteresis","ID" : "26","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_hysteresis_Pipeline_VITIS_LOOP_60_1_fu_73", "RefName" : "hysteresis_Pipeline_VITIS_LOOP_60_1","ID" : "27","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_60_1","RefName" : "VITIS_LOOP_60_1","ID" : "28","Type" : "pipeline"},]},
				{"Name" : "grp_hysteresis_Pipeline_VITIS_LOOP_108_2_fu_86", "RefName" : "hysteresis_Pipeline_VITIS_LOOP_108_2","ID" : "29","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_108_2","RefName" : "VITIS_LOOP_108_2","ID" : "30","Type" : "pipeline"},]},]},
			{"Name" : "output_row_U0", "RefName" : "output_row","ID" : "31","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_output_row_Pipeline_VITIS_LOOP_20_1_fu_84", "RefName" : "output_row_Pipeline_VITIS_LOOP_20_1","ID" : "32","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_20_1","RefName" : "VITIS_LOOP_20_1","ID" : "33","Type" : "pipeline"},]},]},]},]},]
}]}