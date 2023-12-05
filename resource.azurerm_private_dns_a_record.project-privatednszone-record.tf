resource "azurerm_private_dns_a_record" "project-privatednszone-record" {
  name                = azurerm_synapse_workspace.project-synapse.name
  zone_name           = azurerm_private_dns_zone.project-privatednszone.name
  resource_group_name = azurerm_resource_group.project-rg.name
  ttl                 = 300
  records             = [azurerm_private_endpoint.synapse-pep-dev.private_service_connection[0].private_ip_address]
}