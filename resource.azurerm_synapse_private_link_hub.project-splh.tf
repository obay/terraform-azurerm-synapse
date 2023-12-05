resource "azurerm_synapse_private_link_hub" "project-splh" {
  name                = lower(replace("${var.project_name}-splh", "-", ""))
  resource_group_name = azurerm_resource_group.project-rg.name
  location            = azurerm_resource_group.project-rg.location
}
