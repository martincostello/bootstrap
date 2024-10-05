#! /usr/bin/env pwsh

#Requires -PSEdition Core
#Requires -Version 7

$ErrorActionPreference = "Stop"
$InformationPreference = "Continue"
$ProgressPreference = "SilentlyContinue"

Write-Information "Checking for elevated permissions..."
if (-Not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] 'Administrator')) {
    Write-Warning "This script must be run as an administrator."
    return
}

Write-Information "Installing WinGet..."
$osVersion = Get-CimInstance -ClassName Win32_OperatingSystem
if ($osVersion.Version.Major -ge 11) {
    Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
} else {
    Read-Host "Press any key once you have installed WinGet"
}

Read-Host "Press any key once you have enabled developer mode"

Write-Information "Installing Windows Subsystem for Linux..."
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
wsl --install --no-launch
wsl --set-default-version 2

Write-Information "Installing PowerShell..."
winget install --id Microsoft.PowerShell --exact --source winget --accept-package-agreements
