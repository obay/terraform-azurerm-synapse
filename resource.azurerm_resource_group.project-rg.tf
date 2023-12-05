resource "azurerm_resource_group" "project-rg" {
  name     = lower("${var.project_name}-rg")
  location = var.resource_group_location
}