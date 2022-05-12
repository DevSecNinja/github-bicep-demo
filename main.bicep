param location string = resourceGroup().location

module mystorageaccount 'storage/azuredeploy.bicep'= {
  name: 'modulestorage'
  params: {
    location: location
    storagePrefix: 'mvistorage'
  }
}

module mystorageaccount 'br:githubbicepdemo.azurecr.io/storage/storageaccount:v1'= {
  name: 'modulestorage2'
  params: {
    location: location
    storagePrefix: 'mvistorage2'
  }
}



