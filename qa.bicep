param envName string
param location string
param storageAccountsku string
param webAppName string = 'eus-${envName}-env'
param sku string

module AppServicePlan 'modules/appservice.bicep' = {
  name: 'appServicePlanModule'
  params: {
    location: location
    sku: sku
    webAppName: webAppName
  }
}

module saccount 'modules/sa.bicep' = {
  name: 'saccountModule'
  params: {
    location: location
    storageAccountsku: storageAccountsku
  }
}