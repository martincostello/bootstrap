#! /usr/bin/env pwsh

#Requires -PSEdition Core
#Requires -Version 7

$ErrorActionPreference = "Stop"
$InformationPreference = "Continue"
$ProgressPreference = "SilentlyContinue"

& .\install-software.ps1

Write-Information "Installing Chocolatey packages..."
$chocoPackages = @(
  "poshgit"
)

foreach ($package in $chocoPackages) {
  Write-Host "Installing ${package}..."
  choco install $package --yes
}

Install-Module posh-git -Scope CurrentUser
