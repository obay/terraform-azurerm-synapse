resource "azurerm_private_dns_zone" "privatelink-blob-core-windows-net" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = azurerm_resource_group.project-rg.name
}
