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


Write-Information "Installing Microsoft Visual Studio..."

$VSVersion = "2022"
$VSEdition = "Enterprise"
$VSArguments = @("--quiet")

$vsconfig = Get-Content -Raw -Path ".vsconfig" | ConvertFrom-Json
foreach ($component in $vsconfig.components) {
  $VSArguments += "--add"
  $VSArguments += $component
}

winget install --id "Microsoft.VisualStudio.${VSVersion}.${VSEdition}" --exact --source winget --accept-package-agreements --override "${VSArguments}"
winget install --id "Microsoft.VisualStudio.${VSVersion}.${VSEdition}.Preview" --exact --source winget --accept-package-agreements --override "${VSArguments}"
