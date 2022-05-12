param location string = resourceGroup().location

module mystorage 'storage/azuredeploy.bicep'= {
  name: 'mystorage-module'
  params: {
    location: location
    storagePrefix: 'mvisto'
  }
}
