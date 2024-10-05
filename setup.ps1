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

Write-Information "Installing WinGet packages..."

$packages = @(
  "Microsoft.PowerShell",
  "Starship.Starship",
  "AgileBits.1Password",
  "Microsoft.VisualStudioCode",
  "Git.Git",
  "github-desktop",
  "OpenJS.NodeJS.LTS",
  "Elgato.CameraHub",
  "Elgato.CameraHub",
  "Elgato.WaveLink",
  "SteelSeries.GG",
  "chocolatey.chocolatey",
  "JanDeDobbeleer.OhMyPosh",
  "Docker.DockerDesktop",
  "ScooterSoftware.BeyondCompare4",
  "GitHub.cli",
  "KirillOsenkov.MSBuildStructuredLogViewer",
  "dotPDN.PaintDotNet",
  "SlackTechnologies.Slack"
)

$dotnetVersions = @(
  "6",
  "8"
)

foreach ($version in $dotnetVersions) {
  $packages += "Microsoft.DotNet.SDK.${version}"
}

foreach ($id in $packages) {
  Write-Information "Installing ${id}..."
  winget install --id $id --exact --source winget --accept-package-agreements
}

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
