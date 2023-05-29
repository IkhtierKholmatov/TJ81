[Setup] 
AppName=TDHS update
AppVersion=1.0
;disable prompt to allow user to choose installation folder
DisableDirPage=yes              
DisableProgramGroupPage=yes
;set folder for installation files
DefaultDirName=C:\TJ81
DefaultGroupName=DHS CAPI System
Compression=lzma2
SolidCompression=yes
;set location where installation .exe file is output to
OutputDir=C:\TJ81\inno
;set default path for source folders in the [Files] section
SourceDir="C:\TJ81"
;set the name of the installation file
OutputBaseFilename=update_tjdhs2023 
;disable default creation of uninstall.exe since we don't usually want the user 
;to be able to uninstall the system
Uninstallable=no
WizardImageFile=c:\TJ81\inno\DHS.bmp
WizardSmallImageFile=C:\TJ81\inno\DHS.bmp

[InstallDelete]
; deletes any existing files/directories from previous installations
Name: {app}\PII\Data; Type: filesandordirs
Name: {app}\PII\Receive; Type: filesandordirs
Name: {app}\PII\temp; Type: filesandordirs
Name: {app}\PII\work; Type: filesandordirs
Name: {app}\PII\final; Type: filesandordirs
Name: {app}\PII\ref; Type: filesandordirs
Name: {app}\PII\upgrades; Type: filesandordirs
Name: {app}\PII\Entry\shared.db; Type: filesandordirs
Name: {app}\PII\Superv\shared.db; Type: filesandordirs

[Files]
Source: "PII\Ref\*.*";     DestDir: "{app}\PII\Ref"
Source: "Entry\*.*";   DestDir: "{app}\Entry"
Source: "Superv\*.*";  DestDir: "{app}\Superv"
Source: "Library\*.*";  DestDir: "{app}\Library"
Source: "Dicts\*.*";   DestDir: "{app}\Dicts"
Source: "Utility\*.*"; DestDir: "{app}\Utility"; Flags:recursesubdirs

[Dirs]
;create empty folders
Name: "{app}\data"
Name: "{app}\receive"
Name: "{app}\temp"
Name: "{app}\work"
Name: "{app}\final"

