output "postgresql_flexible_server_configurations_id" {
  description = "Map of id values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.id }
}
output "postgresql_flexible_server_configurations_name" {
  description = "Map of name values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.name }
}
output "postgresql_flexible_server_configurations_server_id" {
  description = "Map of server_id values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.server_id }
}
output "postgresql_flexible_server_configurations_value" {
  description = "Map of value values across all postgresql_flexible_server_configurations, keyed the same as var.postgresql_flexible_server_configurations"
  value       = { for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : k => v.value }
}

