#define MyAppName "doma_launcher"
#define MyAppVersion "0.2.0"
#define MyAppPublisher "doma_launcher"
#define MyAppExeName "doma_launcher.exe"

[Setup]
AppId={{B4BFA9F4-70A3-4C69-9A0B-4A3A6AB12D1C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\doma_launcher
DefaultGroupName=doma_launcher
OutputDir=Output
OutputBaseFilename=doma_launcher_setup
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=lowest
UninstallDisplayIcon={app}\{#MyAppExeName}

[Tasks]
Name: "desktopicon"; Description: "Создать ярлык на рабочем столе"; GroupDescription: "Дополнительные значки:"

[Files]
Source: "..\dist\doma_launcher.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\doma_launcher"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\doma_launcher"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Запустить doma_launcher"; Flags: postinstall nowait skipifsilent
