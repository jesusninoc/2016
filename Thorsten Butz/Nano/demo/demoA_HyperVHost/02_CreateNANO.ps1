﻿#region PREREQUISITES

    # Variables
    $password = ConvertTo-SecureString -AsPlainText -Force -String 'Pa$$w0rd'
    $iso_X = 'C:\depot\iso_x\en_windows_server_2016_technical_preview_4_x64_dvd_7258292\'
    $VirtualHardDiskPath = (Get-VMHost).VirtualHardDiskPath 

    # Nano creation module (from WS 2016 ISO) 
    Import-Module C:\NanoServer_TP4\NanoServerImageGenerator.psm1 

#endregion

#region  NANO1 
#endregion

#region NANO2

    # GEN 2 VM: DNS + DSC + IIS + ReverseForwarders + DomainJoin
#endregion

#region NANO3

    # GEN 2 VM: Hyper-V + Container + Cluster + DSC + DomainJoin

#endregion


<#  EDIT NANO IMAGE
    
    # In case you missed something ..
    $newpassword = Read-Host 'New Password' -AsSecureString

    Edit-NanoServerImage `
    -BasePath 'C:\NanoServer_TP4\Base' `
    -TargetPath 'C:\Hyper-V\Virtual Hard Disks\sea-nano1.vhd' `
    -AdministratorPassword $password 

#>