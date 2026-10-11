resource "openstack_lb_pool_v2" "lb_pool_v2s" {
  for_each = var.lb_pool_v2s

  lb_method            = each.value.lb_method
  protocol             = each.value.protocol
  admin_state_up       = each.value.admin_state_up
  alpn_protocols       = each.value.alpn_protocols
  ca_tls_container_ref = each.value.ca_tls_container_ref
  crl_container_ref    = each.value.crl_container_ref
  description          = each.value.description
  listener_id          = each.value.listener_id
  loadbalancer_id      = each.value.loadbalancer_id
  name                 = each.value.name
  region               = each.value.region
  tags                 = each.value.tags
  tenant_id            = each.value.tenant_id
  tls_ciphers          = each.value.tls_ciphers
  tls_container_ref    = each.value.tls_container_ref
  tls_enabled          = each.value.tls_enabled
  tls_versions         = each.value.tls_versions

  dynamic "persistence" {
    for_each = each.value.persistence != null ? [each.value.persistence] : []
    content {
      cookie_name = persistence.value.cookie_name
      type        = persistence.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

