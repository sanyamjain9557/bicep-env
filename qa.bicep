param location string
param storageAccountsku string

module saccount 'modules/SA.bicep' = {
  name: 'saccountModule'
  params: {
    location: location
    storageAccountsku: storageAccountsku
  }
}
