resource "azurerm_private_dns_zone" "privatelink-dev-azuresynapse-net" {
  name                = "privatelink.dev.azuresynapse.net"
  resource_group_name = azurerm_resource_group.project-rg.name
}
