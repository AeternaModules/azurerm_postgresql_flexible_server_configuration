output "postgresql_flexible_server_configurations" {
  description = "All postgresql_flexible_server_configuration resources"
  value       = azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations
}
output "postgresql_flexible_server_configurations_name" {
  description = "List of name values across all postgresql_flexible_server_configurations"
  value       = [for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : v.name]
}
output "postgresql_flexible_server_configurations_server_id" {
  description = "List of server_id values across all postgresql_flexible_server_configurations"
  value       = [for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : v.server_id]
}
output "postgresql_flexible_server_configurations_value" {
  description = "List of value values across all postgresql_flexible_server_configurations"
  value       = [for k, v in azurerm_postgresql_flexible_server_configuration.postgresql_flexible_server_configurations : v.value]
}

