param webAppName string = 'vishnuappko'
param location string = 'East US'
param sku string = 'F1'

var appServicePlanName = 'AppServicePlan-${webAppName}'

resource webappserver 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
  }
}

resource appsite 'Microsoft.Web/sites@2022-09-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: webappserver.id
    siteConfig:{
      netFrameworkVersion: 'v6.0'
    }
  }
}
