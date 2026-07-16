$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

New-Item `
    -ItemType Directory `
    -Path ".\build" `
    -Force | Out-Null

$compiler = Get-Command "g++" -ErrorAction SilentlyContinue

if (-not $compiler) {
    throw "No C++ compiler was found."
}

Write-Host "Using compiler: $($compiler.Source)"

$compilerArguments = @(
    "-std=c++17",
    "-Wall",
    "-Wextra",
    "-Iinclude",
    "-Ireference",
    "src\gaussian_blur.cpp",
    "reference\gaussian_reference.cpp",
    "testbench\test_gaussian.cpp",
    "-o",
    "build\test_gaussian.exe"
)

& $compiler.Source @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "Gaussian compilation failed."
}

Write-Host "Compilation completed successfully."

& ".\build\test_gaussian.exe"

if ($LASTEXITCODE -ne 0) {
    throw "The Gaussian blur test failed."
}
