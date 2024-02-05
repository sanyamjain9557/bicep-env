targetScope = 'subscription'

param envName string
param location string

var rgname = '${envName}-rg'

resource newRG 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: rgname
  location: location
}
