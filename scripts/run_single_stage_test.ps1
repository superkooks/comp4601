param(
    [Parameter(Mandatory = $true)]
    [string]$TestName,

    [Parameter(Mandatory = $true)]
    [string]$TestFunction,

    [Parameter(Mandatory = $true)]
    [string[]]$Sources
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $PSScriptRoot
Set-Location $projectRoot

$compiler = "C:\msys64\ucrt64\bin\g++.exe"

if (-not (Test-Path $compiler)) {
    throw "Compiler not found: $compiler"
}

$buildDirectory = Join-Path $projectRoot "build\windows"

New-Item `
    -ItemType Directory `
    -Path $buildDirectory `
    -Force | Out-Null

$outputExecutable = Join-Path `
    $buildDirectory `
    "$TestFunction.exe"

Write-Host "Using compiler: $compiler"

$compilerArguments = @(
    "-std=c++17",
    "-O2",
    "-Wall",
    "-Wextra",
    "-Wno-unknown-pragmas",
    "-Isrc",
    "-Itestbench",
    "-DTEST_FUNCTION=$TestFunction"
)

$compilerArguments += $Sources

$compilerArguments += @(
    "testbench\test_single_stage.cpp",
    "-o",
    $outputExecutable
)

& $compiler @compilerArguments

if ($LASTEXITCODE -ne 0) {
    throw "$TestName compilation failed with exit code $LASTEXITCODE."
}

& $outputExecutable

if ($LASTEXITCODE -ne 0) {
    throw "$TestName test failed with exit code $LASTEXITCODE."
}
