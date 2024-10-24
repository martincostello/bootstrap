# yaml-language-server: $schema=https://aka.ms/configuration-dsc-schema/0.2
properties:
  configurationVersion: 0.2.0
  resources:

    - resource: Microsoft.Windows.Developer/Taskbar
      directives:
        description: Modify taskbar settings
      settings:
        Alignment: Middle
        SearchBoxMode: Hide
        TaskViewButton: Hide
        WidgetsButton: Hide

    - resource: Microsoft.Windows.Developer/WindowsExplorer
      directives:
        description: Modify Windows Explorer settings
      settings:
        FileExtensions: Show
        HiddenFiles: Show
        ItemCheckBoxes: Hide

    - resource: Microsoft.Windows.Developer/ShowSecondsInClock
      directives:
        description: Show seconds in clock
      settings:
        Ensure: Present

    - resource: Microsoft.Windows.Developer/EnableDarkMode
      directives:
        description: Disable dark mode
      settings:
        Ensure: Absent
        RestartExplorer: true

    - resource: Microsoft.Windows.Developer/DeveloperMode
      directives:
        description: Enable Developer Mode
      settings:
        Ensure: Present
