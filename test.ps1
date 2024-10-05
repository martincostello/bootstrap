#! /usr/bin/env pwsh

#Requires -PSEdition Core
#Requires -Version 7

$ErrorActionPreference = "Stop"
$InformationPreference = "Continue"
$ProgressPreference = "SilentlyContinue"

$settings = Join-Path . 'ScriptAnalyzerProfile.ps1'
Invoke-ScriptAnalyzer `
    -Path . `
    -Recurse `
    -ReportSummary `
    -Settings $settings
