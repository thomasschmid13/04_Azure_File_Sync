Install-Module -Name Az.StorageSync -AllowClobber -Force - Verbose

#Cmdlets
Get-Command -Module Az.StorageSync

#Compatibility Check
Invoke-AzStorageSyncCompatibilityCheck -Path C:\Temp
