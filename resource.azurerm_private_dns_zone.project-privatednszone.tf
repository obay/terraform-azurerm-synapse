resource "azurerm_private_dns_zone" "project-privatednszone" {
  name                = "privatelink.azuresynapse.net"
  resource_group_name = azurerm_resource_group.project-rg.name
}
