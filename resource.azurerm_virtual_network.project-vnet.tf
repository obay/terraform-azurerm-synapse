# Create a Virtual Network for World Bank Synapse workspace

resource "azurerm_virtual_network" "project-vnet" {
  name                = lower("${var.project_name}-vnet")
  location            = azurerm_resource_group.project-rg.location
  resource_group_name = azurerm_resource_group.project-rg.name
  address_space       = [var.vnet_address_space]
}

