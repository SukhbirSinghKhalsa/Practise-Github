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
resource "azurerm_resource_group" "ssk" {
 name = "apple"
 location = "east us"
}
