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
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

