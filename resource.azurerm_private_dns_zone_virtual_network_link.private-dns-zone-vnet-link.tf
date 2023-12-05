resource "azurerm_private_dns_zone_virtual_network_link" "private-dns-zone-vnet-link" {
  name                  = lower("${var.project_name}-dns-vnet-link")
  resource_group_name   = azurerm_resource_group.project-rg.name
  private_dns_zone_name = azurerm_private_dns_zone.project-privatednszone.name
  virtual_network_id    = azurerm_virtual_network.project-vnet.id
}
