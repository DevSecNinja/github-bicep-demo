param blobName string
param storageAccountName string
param properties object

resource blobContainer 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  name: '${storageAccountName}/${blobName}'
  properties: properties
}

