resource "azurerm_private_dns_zone" "privatelink-dfs-core-windows-net" {
  name                = "privatelink.dfs.core.windows.net"
  resource_group_name = azurerm_resource_group.project-rg.name
}
