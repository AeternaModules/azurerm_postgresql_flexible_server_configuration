output "postgresql_flexible_server_configurations_id" {
  description = "Map of id values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "postgresql_flexible_server_configurations_name" {
  description = "Map of name values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "postgresql_flexible_server_configurations_server_id" {
  description = "Map of server_id values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}
output "postgresql_flexible_server_configurations_value" {
  description = "Map of value values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.value if v.value != null && length(v.value) > 0 }
}

