resource "azurerm_network_security_group" "example" {
  name                = "open-nsg"
  location            = "UK South"
  resource_group_name = "prod-rg"

  security_rule {
    name                       = "allow-https"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}