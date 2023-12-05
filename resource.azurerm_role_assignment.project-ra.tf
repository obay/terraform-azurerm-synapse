resource "azurerm_role_assignment" "project-ra" {
  principal_id         = data.azurerm_client_config.current.object_id
  role_definition_name = "Storage Blob Data Contributor"
  scope                = azurerm_storage_account.project-storage.id
}
