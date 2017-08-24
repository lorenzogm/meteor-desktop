#define AppName "AppName"
#define CompanyName "CompanyName"
#define AppVersion "1.0.0"
#define SourceFolder "output\AppName-win32-x64"

[Setup]
AppId={#AppName}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppPublisher={#CompanyName}
OutputDir=latest
OutputBaseFilename={#AppName}-win32-x64-{#AppVersion}
DisableDirPage=yes
DefaultDirName=C:\{#AppName}
DefaultGroupName={#AppName}
UninstallDisplayIcon={app}\{#AppName}.exe
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=none

[Files]
Source: "{#SourceFolder}\*"; Excludes: "resources\app\db"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\{#AppName}"; Filename: "{app}\{#AppName}.exe"

