resource "azurerm_synapse_sql_pool" "synapse_sql_pool" {
  name                 = lower("${var.project_name}sqlpool")
  synapse_workspace_id = azurerm_synapse_workspace.project-synapse.id
  sku_name             = "DW100c"
  create_mode          = "Default"
  collation            = "SQL_Latin1_General_CP1_CI_AS"
}