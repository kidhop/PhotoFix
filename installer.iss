#define MyAppName "PhotoFix"
#define MyAppVersion "0.0.1"
#define MyAppPublisher "Kidhop"
#define MyAppURL ""
#define MyAppExeName "PhotoFix_0.0.1_installer"


[Setup]
AppId=PhotoFix
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
OutputBaseFilename={#MyAppExeName}
DefaultDirName={commonpf64}\PhotoFix
DefaultGroupName=PhotoFix
Uninstallable=yes
UninstallDisplayIcon={app}\PhotoFix.exe
Compression=lzma2
OutputDir=.
ArchitecturesAllowed=x64
WizardStyle=classic
PrivilegesRequired=admin
WizardSmallImageFile=Assets\icon.bmp
SetupIconFile=Assets\icon.ico

[Run]
Filename: {app}\{cm:AppName}.exe; Description: {cm:LaunchProgram,{cm:AppName}}; Flags: nowait postinstall skipifsilent

[CustomMessages]
AppName=PhotoFix
LaunchProgram=Start PhotoFix after finishing installation 


[Files]
Source: "Export\PhotoFix\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\PhotoFix"; Filename: "{app}\PhotoFix.exe"