param webAppName string = 'app-fabrikamfiber'

param location string = resourceGroup().location

param sku string = 'S1'

param appServicePlanName string = 'asp-fabrikamfiber'

param sqlserverName string = 'sql-fabrikamfiber'

param databaseName string = 'db-fabrikamfiber'

param sqlAdministratorLogin string

@secure()
param sqlAdministratorLoginPassword string

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
      metadata: [
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

resource sqlServer 'Microsoft.Sql/servers@2024-05-01-preview' = {
  name: sqlserverName
  location: location
  properties: {
    administratorLogin: sqlAdministratorLogin
    administratorLoginPassword: sqlAdministratorLoginPassword
    version: '12.0'
  }
}

resource sqlDatabase 'Microsoft.Sql/servers/databases@2024-05-01-preview' = {
  parent: sqlServer
  name: databaseName
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    maxSizeBytes: 1073741824
  }
}

resource allowAllWindowsAzureIps 'Microsoft.Sql/servers/firewallRules@2024-05-01-preview' = {
  parent: sqlServer
  name: 'AllowYourIPRange'
  properties: {
    startIpAddress: '0.0.0.0'
    endIpAddress: '255.255.255.255'
  }
}
