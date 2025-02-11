param webAppName string = 'app-fabrikamfiber-qa'

param location string = resourceGroup().location

param sku string = 'S1'

var appServicePlanName = 'asp-fabrikamfiber'

resource asp 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
  }
}

resource webApp 'Microsoft.Web/sites@2024-04-01' = {
  name: webAppName
  location: location
  kind: 'app'
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    siteConfig: {
      netFrameworkVersion: 'v4.8'
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      ftpsState: 'FtpsOnly'
    }
    serverFarmId: asp.id
    httpsOnly: true
  }
}
