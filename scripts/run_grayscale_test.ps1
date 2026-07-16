$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

New-Item `
    -ItemType Directory `
    -Path ".\build" `
    -Force | Out-Null

$compiler = Get-Command "g++" -ErrorAction SilentlyContinue

if (-not $compiler) {
    $compiler = Get-Command "clang++" -ErrorAction SilentlyContinue
}

if (-not $compiler) {
    throw @"
No C++ compiler was found.

Install g++ or clang++, then close and reopen PowerShell.
"@
}

Write-Host "Using compiler: $($compiler.Source)"

$compilerArguments = @(
    "-std=c++17",
    "-Wall",
    "-Wextra",
    "-Iinclude",
    "src\grayscale.cpp",
    "testbench\test_grayscale.cpp",
    "-o",
    "build\test_grayscale.exe"
)

& $compiler.Source @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "Compilation failed with exit code $LASTEXITCODE."
}

Write-Host "Compilation completed successfully."

& ".\build\test_grayscale.exe"

if ($LASTEXITCODE -ne 0) {
    throw "The grayscale test failed."
}
