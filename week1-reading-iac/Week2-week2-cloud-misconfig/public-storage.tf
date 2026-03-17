resource "azurerm_storage_account" "example" {
  name                     = "datastorage123"
  resource_group_name      = "prod-rg"
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  allow_nested_items_to_be_public = false
  public_network_access_enabled = false

}
