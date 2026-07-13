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
  # --- Unconfirmed validation candidates, derived from azurerm_postgresql_flexible_server_configuration's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: server_id
  #   source:    [from servers.ValidateFlexibleServerID] !ok
  # path: server_id
  #   source:    [from servers.ValidateFlexibleServerID] err != nil
  # path: value
  #   condition: length(value) > 0
  #   message:   must not be empty
}

