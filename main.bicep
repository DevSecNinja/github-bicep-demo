param location string = resourceGroup().location

module mystorageaccount 'storage/azuredeploy.bicep'= {
  name: 'modulestorage'
  params: {
    location: location
    storagePrefix: 'mvistorage'
  }
}
