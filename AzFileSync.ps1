Install-Module -Name Az.StorageSync -AllowClobber -Force - Verbose

#Cmdlets
Get-Command -Module Az.StorageSync

#Compatibility Check
Invoke-AzStorageSyncCompatibilityCheck -Path C:\Temp




#Rückbau des Azure File Sync
Invoke-StorageSyncFileRecall -SyncGroupName '62c796ef-0f51-4396-8f31-db02b5b36883'


Invoke-AzStorageSyncChangeDetection -ResourceId '/subscriptions/83e71e5e-76af-4687-8868-4646b9f96c96/resourceGroups/Godangel/providers/Microsoft.StorageSync/storageSyncServices/primefilesync/syncGroups/srvschmidcl02_TestOrdnerSync/cloudEndpoints/579efd16-3ff1-4900-b259-3c1657d761d5'


Get-StorageSyncStatus -ServerEndpointPath 'C:\TestOrdnerSync' | Where-Object SyncDirection -eq Download | Select-Object -Property SessionId, SyncDirection, SyncScenario, StartTime, EndTime, HResult, PerItemErrorTotalCount | Format-Table

Get-StorageSyncStatus -ServerEndpointPath 'C:\TestOrdnerSync' -SyncSessionId <Session Id> | Select-Object -Property SessionId, SyncDirection, SyncScenario, StartTime, EndTime, HResult, PerItemErrorTotalCount | Format-Table
