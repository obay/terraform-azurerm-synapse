resource "azurerm_storage_data_lake_gen2_filesystem" "project-datalake" {
  name               = lower(replace("${var.project_name}-datalake", "-", ""))
  storage_account_id = azurerm_storage_account.project-storage.id
}
