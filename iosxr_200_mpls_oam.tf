resource "iosxr_mpls_oam" "oam_config" {
  for_each = var.mpls_config
  oam      = each.value.oam
}