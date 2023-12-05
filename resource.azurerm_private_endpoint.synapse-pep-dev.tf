resource "azurerm_private_endpoint" "synapse-pep-dev" {
  name                = lower("${var.project_name}-synapse-pep-dev")
  location            = azurerm_resource_group.project-rg.location
  resource_group_name = azurerm_resource_group.project-rg.name
  subnet_id           = azurerm_subnet.project-subnet.id

  private_service_connection {
    name                           = lower("${var.project_name}-synapse-psc")
    is_manual_connection           = false
    private_connection_resource_id = azurerm_synapse_workspace.project-synapse.id
    subresource_names              = ["dev"]
  }

  private_dns_zone_group {
    name                 = lower("${var.project_name}-dns-zone-group")
    private_dns_zone_ids = [azurerm_private_dns_zone.privatelink-dev-azuresynapse-net.id]
  }
}
