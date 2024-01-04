resource "azurerm_synapse_workspace" "project-synapse" {
  name                                 = lower("${var.project_name}-synapse")
  resource_group_name                  = azurerm_resource_group.project-rg.name
  managed_resource_group_name          = lower("${var.project_name}-managed-rg")
  location                             = var.resource_group_location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.project-datalake.id
  managed_virtual_network_enabled      = true
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password
  public_network_access_enabled        = false

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}
