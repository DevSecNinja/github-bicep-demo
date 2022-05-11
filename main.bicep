param location string = resourceGroup().location

module servicebus 'servicebus/servicebus.bicep'= {
  name: 'servicebusmodule'
  params: {
    identity: {
      type: 'None'
    }
    location: location
    name: 'mvisbforphdemo'
    properties: {
    }
    sku: {
      name: 'Basic'
    }
    tags: {
      project: 'demo'
    }
  }
}
