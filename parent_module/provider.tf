terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    subscription_id = "0e875bbd-e28b-4ff4-a774-cdd3d4522a85"
  features {}
}
