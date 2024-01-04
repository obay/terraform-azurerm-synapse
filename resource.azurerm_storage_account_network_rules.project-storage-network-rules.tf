resource "azurerm_storage_account_network_rules" "project-storage-network-rules" {
  storage_account_id = azurerm_storage_account.project-storage.id
  default_action     = "Deny"
  # ip_rules           = [var.MyPublicIP]
}
