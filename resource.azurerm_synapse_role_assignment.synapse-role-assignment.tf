resource "azurerm_synapse_role_assignment" "synapse-role-assignment" {
  synapse_workspace_id = azurerm_synapse_workspace.project-synapse.id
  role_name            = "Synapse SQL Administrator"
  principal_id         = data.azurerm_client_config.current.object_id
  principal_type       = "User"
}
