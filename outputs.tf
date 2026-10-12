output "identity_group_policies_id" {
  description = "Map of id values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no id are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_group_policies_exclusive" {
  description = "Map of exclusive values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no exclusive are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.exclusive if v.exclusive != null }
}
output "identity_group_policies_group_id" {
  description = "Map of group_id values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no group_id are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "identity_group_policies_group_name" {
  description = "Map of group_name values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no group_name are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "identity_group_policies_namespace" {
  description = "Map of namespace values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no namespace are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "identity_group_policies_policies" {
  description = "Map of policies values across all identity_group_policies, keyed the same as var.identity_group_policies except keys with no policies are omitted"
  value       = { for k, v in vault_identity_group_policies.identity_group_policies : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

