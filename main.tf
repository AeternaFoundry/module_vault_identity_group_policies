resource "vault_identity_group_policies" "identity_group_policies" {
  for_each = var.identity_group_policies

  group_id  = each.value.group_id
  policies  = each.value.policies
  exclusive = each.value.exclusive
  namespace = each.value.namespace
}

