# yaml-language-server: $schema=https://aka.ms/configuration-dsc-schema/0.2
properties:
  configurationVersion: 0.2.0
  resources:

    - resource: Microsoft.WinGet.DSC/WinGetPackage
      id: Spotify.Spotify
      directives:
        description: Install Spotify
      settings:
        id: Spotify.Spotify
        source: winget