resource "azurerm_storage_account" "example" {
  name                     = "insecurestorage123"
  resource_group_name      = "prod-rg"
  location                 = "UK South"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  enable_https_traffic_only = true
  min_tls_version           ="TLS1_2"
}