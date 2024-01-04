resource "azurerm_storage_account" "project-storage" {
  name                          = lower(replace("${var.project_name}-storage", "-", ""))
  resource_group_name           = azurerm_resource_group.project-rg.name
  location                      = azurerm_resource_group.project-rg.location
  account_tier                  = "Standard"
  account_replication_type      = "GRS"
  account_kind                  = "StorageV2"
  is_hns_enabled                = "true"
  public_network_access_enabled = false
}
