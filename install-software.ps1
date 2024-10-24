#! /usr/bin/env pwsh

$ErrorActionPreference = "Stop"
$InformationPreference = "Continue"
$ProgressPreference = "SilentlyContinue"

function Install-WinGet-Software {
    param(
        [Parameter(Mandatory = $true)][string] $ConfigurationFileName
    )

    winget configuration --accept-configuration-agreements --file (Join-Path $PSScriptRoot $ConfigurationFileName)

    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to configure winget."
        exit 1
    }
}

Write-Information "Checking for elevated permissions..."

$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($isAdmin) {
    Write-Information "Installing software with winget as administrator..."

    Install-WinGet-Software -ConfigurationFileName "software.admin.dsc"

    Write-Information "Software installation complete."

    exit;
}
else {
    Write-Information "Installing software with winget as current user..."

    Install-WinGet-Software -ConfigurationFileName "software.user.dsc"

    # Restart as admin
    Start-Process PowerShell -Wait -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$($MyInvocation.MyCommand.Path)' $Args;`"";

    Write-Information "Software installation complete."

    exit;
}
