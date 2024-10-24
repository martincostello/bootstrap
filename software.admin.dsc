# yaml-language-server: $schema=https://aka.ms/configuration-dsc-schema/0.2
properties:
  configurationVersion: 0.2.0
  resources:

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.PowerShell
      directives:
        description: Install PowerShell
      settings:
        id: Microsoft.PowerShell
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: AgileBits.1Password
      directives:
        description: Install 1Password
      settings:
        id: AgileBits.1Password
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Starship.Starship
      directives:
        description: Install Starship
      settings:
        id: Starship.Starship
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: OpenJS.NodeJS.LTS
      directives:
        description: Install Node.js LTS
      settings:
        id: OpenJS.NodeJS.LTS
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Git.Git
      directives:
        description: Install Git
      settings:
        id: Git.Git
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: GitHub.GitHubDesktop
      directives:
        description: Install GitHub Desktop
      settings:
        id: GitHub.GitHubDesktop
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: GitHub.cli
      directives:
        description: Install GitHub CLI
      settings:
        id: GitHub.cli
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.VisualStudioCode
      directives:
        description: Install Visual Studio Code
      settings:
        id: Microsoft.VisualStudioCode
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Elgato.CameraHub
      directives:
        description: Install Elgato Camera Hub
      settings:
        id: Elgato.CameraHub
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Elgato.ControlCenter
      directives:
        description: Install Elgato Control Center
      settings:
        id: Elgato.ControlCenter
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Elgato.WaveLink
      directives:
        description: Install Elgato Wave Link
      settings:
        id: Elgato.WaveLink
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: SteelSeries.GG
      directives:
        description: Install SteelSeries GG
      settings:
        id: SteelSeries.GG
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: chocolatey.chocolatey
      directives:
        description: Install Chocolatey
      settings:
        id: chocolatey.chocolatey
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: JanDeDobbeleer.OhMyPosh
      directives:
        description: Install OhMyPosh
      settings:
        id: JanDeDobbeleer.OhMyPosh
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Docker.DockerDesktop
      directives:
        description: Install Docker Desktop
      settings:
        id: Docker.DockerDesktop
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: ScooterSoftware.BeyondCompare.4
      directives:
        description: Install BeyondCompare
      settings:
        id: ScooterSoftware.BeyondCompare.4
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.DotNet.SDK.6
      directives:
        description: Install .NET 6 SDK
      settings:
        id: Microsoft.DotNet.SDK.6
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.DotNet.SDK.8
      directives:
        description: Install .NET 8 SDK
      settings:
        id: Microsoft.DotNet.SDK.8
        source: winget

#    - resource: Microsoft.WinGet.DSC/WinGetPackage
#      id: Microsoft.DotNet.SDK.9
#      directives:
#        description: Install .NET 9 SDK
#      settings:
#        id: Microsoft.DotNet.SDK.9
#        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.DotNet.SDK.Preview
      directives:
        description: Install .NET vNext Preview SDK
      settings:
        id: Microsoft.DotNet.SDK.Preview
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: KirillOsenkov.MSBuildStructuredLogViewer
      directives:
        description: Install MSBuild Structured Log Viewer
      settings:
        id: KirillOsenkov.MSBuildStructuredLogViewer
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: dotPDN.PaintDotNet
      directives:
        description: Install Paint.NET
      settings:
        id: dotPDN.PaintDotNet
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: SlackTechnologies.Slack
      directives:
        description: Install Slack
      settings:
        id: SlackTechnologies.Slack
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: microsoft.azd
      directives:
        description: Install Azure CLI (azd)
      settings:
        id: microsoft.azd
        source: winget

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Microsoft.Sysinternals.ProcessExplorer
      directives:
        description: Install ProcessExplorer
      settings:
        id: Microsoft.Sysinternals.ProcessExplorer
        source: winget
