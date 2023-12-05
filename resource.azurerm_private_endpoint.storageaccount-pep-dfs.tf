resource "azurerm_private_endpoint" "storageaccount-pep-dfs" {
  name                = "storageaccount-pep-dfs"
  location            = azurerm_resource_group.project-rg.location
  resource_group_name = azurerm_resource_group.project-rg.name
  subnet_id           = azurerm_subnet.project-subnet.id

  private_service_connection {
    name                           = lower("${var.project_name}-storageaccount-psc")
    is_manual_connection           = false
    private_connection_resource_id = azurerm_storage_account.project-storage.id
    subresource_names              = ["dfs"]
  }

  private_dns_zone_group {
    name                 = lower("${var.project_name}-dns-zone-group")
    private_dns_zone_ids = [azurerm_private_dns_zone.privatelink-dfs-core-windows-net.id]
  }
}
