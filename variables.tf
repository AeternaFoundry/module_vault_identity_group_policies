variable "identity_group_policies" {
  description = <<EOT
Map of identity_group_policies, attributes below
Required:
    - group_id
    - policies
Optional:
    - exclusive
    - namespace
EOT

  type = map(object({
    group_id  = string
    policies  = set(string)
    exclusive = optional(bool)
    namespace = optional(string)
  }))
}

