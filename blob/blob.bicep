param blobName string
param storageAccountName string
param properties object

resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-06-01' = {
  name: 'bicepdemox6oa6isbofumm//myblob'
  properties: properties
}

