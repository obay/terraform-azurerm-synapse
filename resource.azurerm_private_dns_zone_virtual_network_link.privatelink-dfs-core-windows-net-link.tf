resource "azurerm_private_dns_zone_virtual_network_link" "privatelink-dfs-core-windows-net-link" {
  name                  = "privatelink.dfs.core.windows.net-link"
  resource_group_name   = azurerm_resource_group.project-rg.name
  private_dns_zone_name = azurerm_private_dns_zone.privatelink-dfs-core-windows-net.name
  virtual_network_id    = azurerm_virtual_network.project-vnet.id
}
