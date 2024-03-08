terraform {
  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.91.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "${env.AZURE_SUBSCRIPTION_ID}"
  tenant_id       = "${env.AZURE_SUBSCRIPTION_TENANT_ID}"
  client_id       = "${env.AZURE_SERVICE_PRINCIPAL_APPID}>"
  client_secret   = "${env.AZURE_SERVICE_PRINCIPAL_SECRET}"
}