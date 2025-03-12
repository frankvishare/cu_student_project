set ModuleHierarchy {[{
"Name" : "conv_fprop3","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_172_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_conv_fprop3_Pipeline_1_fu_241","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "Loop 1","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_189_3_fu_263","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_189_3","ID" : "5","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "VITIS_LOOP_175_2","ID" : "6","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_79_1","ID" : "7","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_81_2","ID" : "8","Type" : "no",
				"SubInsts" : [
				{"Name" : "grp_conv_fprop3_Pipeline_VITIS_LOOP_84_3_VITIS_LOOP_86_4_fu_248","ID" : "9","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "VITIS_LOOP_84_3_VITIS_LOOP_86_4","ID" : "10","Type" : "pipeline"},]},]},]},]},]},]
}]}