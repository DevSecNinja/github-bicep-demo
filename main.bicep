param location string = resourceGroup().location

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
