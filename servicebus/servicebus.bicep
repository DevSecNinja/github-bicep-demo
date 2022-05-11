param name string
param location string
param tags object
param sku object
param identity object
param properties object


resource servicebus 'Microsoft.ServiceBus/namespaces@2021-06-01-preview' = {
  name: name
  location: location
  tags: tags
  sku: sku
  identity: identity
  properties: properties
}
