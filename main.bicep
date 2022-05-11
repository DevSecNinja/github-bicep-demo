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
    name: 'Standard'
  }
  identity:{
    type: 'None'
  }
  properties:{
  }
}

param name string = 'mytopics'

resource topic 'Microsoft.ServiceBus/namespaces/topics@2021-06-01-preview'= {
  name: 'mvisbdemo/${name}'
  properties: {}
  dependsOn:[
    servicebus
  ]
}
