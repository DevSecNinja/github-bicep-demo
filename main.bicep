param location string = resourceGroup().location
param storagePrefix string
param blobName string = 'myblob'

module mystorage 'storage/azuredeploy.bicep' = {
  scope:resourceGroup()
  name: 'myawesomestoragemvi' 
  params: {
    location: location
    storagePrefix: storagePrefix
  }
}

module myblob 'blob/blob.bicep' = {
  scope:resourceGroup()
  name: 'myblob'
  params: {
    blobName: blobName
    storageAccountName: mystorage.outputs.storageName
    properties: {
      publicAccess: 'false'
    }
  }
  dependsOn: [
    mystorage
  ]
}
