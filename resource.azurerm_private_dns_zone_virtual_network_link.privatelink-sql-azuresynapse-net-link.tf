resource "azurerm_private_dns_zone_virtual_network_link" "privatelink-sql-azuresynapse-net-link" {
  name                  = "privatelink.sql.azuresynapse.net-link"
  resource_group_name   = azurerm_resource_group.project-rg.name
  private_dns_zone_name = azurerm_private_dns_zone.privatelink-sql-azuresynapse-net.name
  virtual_network_id    = azurerm_virtual_network.project-vnet.id
}
