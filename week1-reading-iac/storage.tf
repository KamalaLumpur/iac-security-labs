provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "iac-lab-rg"
  location = "UK South"
}

resource "azurerm_storage_account" "storage" {
  name                     = "iaclabstorage123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}