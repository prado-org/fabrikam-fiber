param webAppName string = 'app-fabrikamfiber-qa'

param location string = resourceGroup().location

param sku string = 'S1'

var appServicePlanName = 'asp-fabrikamfiber'

resource asp 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName
  location: location
  sku: {
    name: sku
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    siteConfig: {
      netFrameworkVersion: 'v4.8'
      minTlsVersion: '1.2'
      scmMinTlsVersion: '1.2'
      ftpsState: 'FtpsOnly'
      appSettings: [
        {
          name: 'CURRENT_STACK'
          value: 'dotnet'
        }
      ]
    }
    serverFarmId: asp.id
    httpsOnly: true
  }
}
