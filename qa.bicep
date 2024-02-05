param envName string
param location string
param webAppName string = 'eus${envName}webapp'
param sku string
targetScope='subscription'

module Webapprg 'modules/rg.bicep' = {
  name: 'rgroup'
  scope: 'resourceGroup'
  params: {
    location: location
    envName: envName
  }
}

module Webapp 'modules/webappservice.bicep' = {
  name: 'WebappModule'
  params: {
    location: location
    sku: sku
    webAppName: webAppName
  }
}
