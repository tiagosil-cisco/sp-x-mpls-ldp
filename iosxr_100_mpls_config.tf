resource "iosxr_mpls_ldp" "mpls_config" {
  for_each  = local.mpls_config
  device    = each.key
  router_id = each.value.router_id

  interfaces = each.value.interfaces

}