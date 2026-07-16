$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

$tests = @(
    ".\scripts\run_grayscale_test.ps1",
    ".\scripts\run_gaussian_test.ps1",
    ".\scripts\run_sobel_test.ps1"
)

foreach ($test in $tests) {
    Write-Host ""
    Write-Host "Running $test"
    Write-Host "----------------------------------------"

    & $test

    if ($LASTEXITCODE -ne 0) {
        throw "Test failed: $test"
    }
}

Write-Host ""
Write-Host "All completed Canny stage tests PASSED."
