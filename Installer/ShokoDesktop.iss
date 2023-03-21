; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVer GetFileVersion('..\Shoko.Desktop\bin\Release\net6.0-windows\ShokoDesktop.exe')
#define AppSlug Copy(AppVer, 1, Len(AppVer) - 2)
#define MyAppExeName "ShokoDesktop.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

AppId={{EFA49A76-085F-4E64-AEC4-6ACA707A5D91}
AppName=Shoko Desktop
AppVersion=4.2.0.0
AppVerName=Shoko Desktop
AppPublisher=Shoko Team
AppPublisherURL=https://ShokoAnime.com/
AppSupportURL=https://github.com/ShokoAnime
AppUpdatesURL=https://ShokoAnime.com/downloads
DefaultDirName={pf}\Shoko\Shoko Desktop
DefaultGroupName=Shoko Desktop
AllowNoIcons=yes
OutputBaseFilename=Shoko-Desktop-Setup-{#AppSlug}
UninstallDisplayIcon={app}\{#MyAppExeName}
SolidCompression=yes
InternalCompressLevel=max
Compression=lzma2/ultra64
LZMAUseSeparateProcess=yes
LZMANumBlockThreads=6
LZMADictionarySize=1048576
LZMANumFastBytes=273        
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\ShokoDesktop\Installer\FixPermissions.bat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Shoko.Desktop\bin\Release\net6.0-windows\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\Shoko Desktop"; Filename: "{app}\ShokoDesktop.exe"
Name: "{group}\{cm:UninstallProgram,Shoko Desktop}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Shoko Desktop"; Filename: "{app}\ShokoDesktop.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\FixPermissions.bat";
Filename: "{app}\ShokoDesktop.exe"; Flags: nowait postinstall skipifsilent shellexec; Description: "{cm:LaunchProgram,Shoko Desktop}"
Filename: "https://shokoanime.com/blog/shoko-version-420-released/"; Flags: shellexec runasoriginaluser postinstall; Description: "View 4.2.0 Release Notes"

[Dirs]
Name: "{app}"; Permissions: users-full
Name: "{commonappdata}\ShokoDesktop"; Permissions: users-full

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

