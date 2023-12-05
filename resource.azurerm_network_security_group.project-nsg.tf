resource "azurerm_network_security_group" "project-nsg" {
  name                = lower("${var.project_name}-nsg")
  location            = azurerm_resource_group.project-rg.location
  resource_group_name = azurerm_resource_group.project-rg.name
}

resource "azurerm_network_security_rule" "AzureResourceManagerRule" {
  name                        = "AzureResourceManagerRule"
  description                 = "Allow Azure Resource Manager access"
  priority                    = 100
  access                      = "Allow"
  direction                   = "Outbound"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "AzureResourceManager"
  network_security_group_name = azurerm_network_security_group.project-nsg.name
  resource_group_name         = azurerm_network_security_group.project-nsg.resource_group_name
}

resource "azurerm_network_security_rule" "AzureFrontDoorFrontendRule" {
  name                        = "AzureFrontDoorFrontendRule"
  priority                    = 101
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "AzureFrontDoor.Frontend"
  network_security_group_name = azurerm_network_security_group.project-nsg.name
  resource_group_name         = azurerm_network_security_group.project-nsg.resource_group_name
}

resource "azurerm_network_security_rule" "AzureActiveDirectoryRule" {
  name                        = "AzureActiveDirectoryRule"
  priority                    = 102
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "AzureActiveDirectory"
  network_security_group_name = azurerm_network_security_group.project-nsg.name
  resource_group_name         = azurerm_network_security_group.project-nsg.resource_group_name
}

resource "azurerm_network_security_rule" "example4" {
  name                        = "AzureMonitorRule"
  priority                    = 103
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "AzureMonitor"
  network_security_group_name = azurerm_network_security_group.project-nsg.name
  resource_group_name         = azurerm_network_security_group.project-nsg.resource_group_name
}
