# Create a Subnet for World Bank Synapse workspace
resource "azurerm_subnet" "project-subnet" {
  name                 = lower("${var.project_name}-subnet")
  resource_group_name  = azurerm_resource_group.project-rg.name
  virtual_network_name = azurerm_virtual_network.project-vnet.name
  address_prefixes     = [var.subnet_address_prefixes]
}