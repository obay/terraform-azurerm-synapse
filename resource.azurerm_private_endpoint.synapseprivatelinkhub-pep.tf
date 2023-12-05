resource "azurerm_private_endpoint" "synapseprivatelinkhub-pep" {
  name                = lower("${var.project_name}-synapseprivatelinkhub-pep")
  location            = azurerm_resource_group.project-rg.location
  resource_group_name = azurerm_resource_group.project-rg.name
  subnet_id           = azurerm_subnet.project-subnet.id

  private_service_connection {
    name                           = lower("${var.project_name}-synapseprivatelinkhub-psc")
    is_manual_connection           = false
    private_connection_resource_id = azurerm_synapse_private_link_hub.project-splh.id
    subresource_names              = ["web"]
  }

  private_dns_zone_group {
    name                 = lower("${var.project_name}-dns-zone-group")
    private_dns_zone_ids = [azurerm_private_dns_zone.project-privatednszone.id]
  }
}
