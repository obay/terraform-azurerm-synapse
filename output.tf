output "project_datalake_id" {
  value       = azurerm_storage_data_lake_gen2_filesystem.project-datalake.id
  description = "The ID of the Data Lake File System"
}
