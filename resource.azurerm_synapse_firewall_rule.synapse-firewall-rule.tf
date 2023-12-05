resource "azurerm_synapse_firewall_rule" "synapse-firewall-rule" {
  name                 = "allowAll"
  synapse_workspace_id = azurerm_synapse_workspace.project-synapse.id
  start_ip_address     = "0.0.0.0"
  end_ip_address       = "255.255.255.255"
}
