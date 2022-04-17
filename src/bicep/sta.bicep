@description('storage account name')
param storage_account_name string = 'staaa${uniqueString(resourceGroup().name)}'

@description('storage account location')
param location string = 'east asia' 


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storage_account_name
  location: location
  kind: 'StorageV2'
  properties:{
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: true
  }
  sku: {
    name: 'Standard_LRS'
  }
}
