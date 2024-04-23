# FileHash
 Get-FileHash E:\SOURCES\WIM\install.wim

# Kontrola HASHi OS
Get-FileHash E:\kurz\22621.525.220925-0207.ni_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso

certutil -hashfile SHA256 C:\Test\*.iso


# Odebrani UWA:
Get-AppxPackage *zune* | Remove-AppxPackage

Get-Module -ListAvailable

# DISM
https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/use-dism-in-windows-powershell-s14?view=windows-11

Import-Module DISM
Get-Module
Get-Command -Module DISM | ogv

Import-Module "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\Deployment Tools\amd64\DISM"
Mount-WindowsImage –ImagePath C:\Winpe64\Media\Sources\Boot.wim –Index 1 –Path C:\Winpe64\Mount
Add-WindowsDriver –Path E:\winpe64\mount –Driver E:\Software\Drivers\HyperVx64 -Recurse -ForceUnsigned

CD “C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment kit\Windows preInstallation Environment\amd64\WinPE_OCs”
Add-WindowsPackage –Path E:\winpe64\mount –PackagePath .\WinPE-NetFX.cab
Add-WindowsPackage –Path E:\winpe64\mount –PackagePath .\WinPE-Scripting.cab
Add-WindowsPackage –Path E:\winpe64\mount –PackagePath .\WinPE-WMI.cab
Add-WindowsPackage –Path E:\winpe64\mount –PackagePath .\WinPE-PowerShell.cab
Add-WindowsPackage –Path E:\winpe64\mount –PackagePath .\WinPE-DismCmdlets.cab

Dismount-WindowsImage –Path E:\winpe64\mount –Save

Update-Help
help Mount-WindowsImage -Examples
Dismount-WindowsImage –Path "e:\kurz\W11Export" -save
  
