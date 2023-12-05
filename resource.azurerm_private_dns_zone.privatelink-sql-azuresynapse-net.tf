resource "azurerm_private_dns_zone" "privatelink-sql-azuresynapse-net" {
  name                = "privatelink.sql.azuresynapse.net"
  resource_group_name = azurerm_resource_group.project-rg.name
}
