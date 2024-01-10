resource "azurerm_synapse_spark_pool" "synapse_SparkPool" {
  name                 = lower("${var.project_name}sp")
  synapse_workspace_id = azurerm_synapse_workspace.project-synapse.id
  node_size_family     = "MemoryOptimized"
  node_size            = "Small"
  spark_version        = "2.4"
  spark_log_folder     = "/logs"
  spark_events_folder  = "/events"

  auto_scale {
    max_node_count = 10
    min_node_count = 3
  }

  auto_pause {
    delay_in_minutes = 5
  }

  library_requirement {
    content  = <<EOF
scipy==1.5.2
joblib==0.16.0
threadpoolctl==2.1.0
scikit-learn==0.23.2
Boruta==0.3.0
graphviz==0.14.1
treelib==1.6.1
EOF
    filename = "requirements.txt"
  }
}
