resource "azurerm_role_assignment" "example" {
  scope                = "/subscriptions/xxxx"
  role_definition_name = "Owner"
  principal_id         = "12345678-xxxx-xxxx-xxxx-123456789abc"
}