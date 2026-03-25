resource "azurerm_key_vault_secret" "db_password" {
  name         = "db-password"
  value        = "SuperSecretPassword123!"
  key_vault_id = "/subscriptions/xxxx/resourceGroups/prod-rg/providers/Microsoft.KeyVault/vaults/prod-kv"
}