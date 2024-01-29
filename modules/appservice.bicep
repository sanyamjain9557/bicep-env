param webAppName string
param location string
param sku string

var appServicePlanName = 'AppServicePlan-${webAppName}'

resource webappserver 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
  }
}
