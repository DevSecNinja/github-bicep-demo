param location string = resourceGroup().location
param storagePrefix string
param blobName string = 'myblob'

module mystorage 'storage/azuredeploy.bicep' = {
  scope:resourceGroup()
  name: 'myawesomestoragemvi' 
  params: {
    location: location
    storagePrefix: 'mvistorage'
  }
}


resource servicebus 'Microsoft.ServiceBus/namespaces@2021-06-01-preview' = {
  name: 'mvisbdemo'
  location: location
  tags: {
    project: 'demo'
  }
  sku: {
    name: 'Basic'
  }
  identity:{
    type: 'None'
  }
  properties:{
  }
}
