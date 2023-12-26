@echo off
sc config "Background Intelligent Transfer Service" start=auto
sc stop "Background Intelligent Transfer Service"
sc start "Background Intelligent Transfer Service"

sc config "Microsoft Store Install Service" start=auto
sc stop "Microsoft Store Install Service" 
sc start "Microsoft Store Install Service"

sc config "Windows Update" start=auto
sc stop "Windows Update" 
sc start "Windows Update"

sc config "Xbox Live Game Save" start=auto
sc stop "Xbox Live Game Save"
sc start "Xbox Live Game Save"

sc config "Xbox Live Networking Service" start=auto
sc stop "Xbox Live Networking Service"
sc start "Xbox Live Networking Service"

sc config "Xbox Live Auth Manager" start=auto
sc stop "Xbox Live Auth Manager"
sc start "Xbox Live Auth Manager"

sc config "Xbox Accessory Management Service" start=auto
sc stop "Xbox Accessory Management Service"
sc start "Xbox Accessory Management Service"

Get-AppXPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}


Get-AppXPackage WindowsStore -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}


