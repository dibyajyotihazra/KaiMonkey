resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = var.protocol
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = ""
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}
