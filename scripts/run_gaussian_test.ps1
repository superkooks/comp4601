& "$PSScriptRoot\run_single_stage_test.ps1" `
    -TestName "Gaussian" `
    -TestFunction "test_gaussian" `
    -Sources @(
        "src\gaussian_blur.cpp",
        "testbench\gaussian_reference.cpp",
        "testbench\test_gaussian.cpp"
    )
