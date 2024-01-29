param location string
param storageAccountsku string

module AppServicePlan 'modules/appservice.bicep' = {
  name: 'appServicePlanModule'
  params: {
    location: location
  }
}

module saccount 'modules/SA.bicep' = {
  name: 'saccountModule'
  params: {
    location: location
    storageAccountsku: storageAccountsku
  }
}