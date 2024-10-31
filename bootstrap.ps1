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

Read-Host "Press any key once you have updated WinGet from https://github.com/microsoft/winget-cli/releases"

Read-Host "Press any key once you have enabled developer mode"

Read-Host "Press any key once you have installed Dev Home from https://aka.ms/devhome"

Write-Information "Installing Windows Subsystem for Linux..."
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
wsl --update
wsl --set-default-version 2
wsl --install --distribution Ubuntu --no-launch

Write-Information "Installing PowerShell..."
winget install --id Microsoft.PowerShell --exact --source winget --accept-package-agreements

Read-Host "Press any key once Cascadia Code fonts installed from https://github.com/microsoft/cascadia-code/releases"

Read-Host "Press any key once you have setup Dev Drive for D:\"

<#
# See https://learn.microsoft.com/windows/dev-drive/#storing-package-cache-on-dev-drive
Write-Information "Configure package caches for Dev Drive..."
setx /M CARGO_HOME D:\packages\cargo
setx /M GRADLE_USER_HOME "D:\packages\gradle"
setx /M MAVEN_OPTS "-Dmaven.repo.local=D:\packages\maven"
setx /M npm_config_cache D:\packages\npm
setx /M NUGET_PACKAGES D:\packages\nuget
setx /M PIP_CACHE_DIR D:\packages\pip
setx /M VCPKG_DEFAULT_BINARY_CACHE D:\packages\vcpkg
#>
