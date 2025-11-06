@description('storage account name')
param storage_account_name string= 'st${uniqueString(resourceGroup().name)}'
@description('storage account location ')
param location string ='west europe'

resource storageaccount 'Microsoft.Storage/storageAccounts@2025-01-01' = {
  kind:'StorageV2'
  name: storage_account_name
  location: location
  properties:{
    minimumTlsVersion: 'TLS1_2'
  }
  sku: {
    name:'Premium_LRS'}

}
