terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}
resource "azurerm_resource_group" "name" {
 name = "mango"
 location = "east us"
}
resource "azurerm_storage_account" "name" {
  name                     = "eddystg"
  resource_group_name      = azurerm_resource_group.name.name
  location                 = azurerm_resource_group.name.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}
