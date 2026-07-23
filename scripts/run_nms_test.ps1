& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Non-maximum suppression" `
    -TestFunction "test_nms" `
    -Sources @(
        "src\non_maximum_suppression.cpp",
        "testbench\nms_reference.cpp",
        "testbench\test_nms.cpp"
    )
