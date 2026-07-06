variable "postgresql_flexible_server_configurations" {
  description = <<EOT
Map of postgresql_flexible_server_configurations, attributes below
Required:
    - name
    - server_id
    - value
EOT

  type = map(object({
    name      = string
    server_id = string
    value     = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_configurations : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.postgresql_flexible_server_configurations : (
        length(v.value) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_postgresql_flexible_server_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: server_id
  #   source:    [from servers.ValidateFlexibleServerID] !ok
  # path: server_id
  #   source:    [from servers.ValidateFlexibleServerID] err != nil
}

