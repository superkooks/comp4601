& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Sobel" `
    -TestFunction "test_sobel" `
    -Sources @(
        "src\sobel.cpp",
        "testbench\sobel_reference.cpp",
        "testbench\test_sobel.cpp"
    )
