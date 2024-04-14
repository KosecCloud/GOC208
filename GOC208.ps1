Get-FileHash



# Kontrola HASHi OS
Get-FileHash E:\kurz\22621.525.220925-0207.ni_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso

certutil -hashfile SHA256 C:\Test\*.iso

# Odebrani UWA:
Get-AppxPackage *zune* | Remove-AppxPackage

Get-Module -ListAvailable
Import-Module DISM
Get-Module
Get-Command -Module DISM | ogv

Update-Help
help Mount-WindowsImage -Examples
Dismount-WindowsImage –Path "e:\kurz\W11Export" -save
