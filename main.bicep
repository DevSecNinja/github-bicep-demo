param location string = resourceGroup().location

module servicebus 'br:githubbicepdemo.azurecr.io/servicebus/servicebus:v1'= {
  name: 'servicebusmodule'
  params: {
    identity: {
      type: 'None'
    }
    location: location
    name: 'mvisbforphdemo2'
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
