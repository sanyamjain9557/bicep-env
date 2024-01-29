param webAppName string = 'webAppKomatsu'
param location string = resourceGroup().location
param sku string = 'F1'

var appServicePlanName = 'AppServicePlan-${webAppName}'

resource webappserver 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
  }
}
