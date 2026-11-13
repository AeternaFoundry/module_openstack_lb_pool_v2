output "lb_pool_v2s_id" {
  description = "Map of id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.id }
}
output "lb_pool_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.admin_state_up }
}
output "lb_pool_v2s_alpn_protocols" {
  description = "Map of alpn_protocols values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.alpn_protocols }
}
output "lb_pool_v2s_ca_tls_container_ref" {
  description = "Map of ca_tls_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.ca_tls_container_ref }
}
output "lb_pool_v2s_crl_container_ref" {
  description = "Map of crl_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.crl_container_ref }
}
output "lb_pool_v2s_description" {
  description = "Map of description values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.description }
}
output "lb_pool_v2s_lb_method" {
  description = "Map of lb_method values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.lb_method }
}
output "lb_pool_v2s_listener_id" {
  description = "Map of listener_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.listener_id }
}
output "lb_pool_v2s_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.loadbalancer_id }
}
output "lb_pool_v2s_name" {
  description = "Map of name values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.name }
}
output "lb_pool_v2s_persistence" {
  description = "Map of persistence values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => one(v.persistence) }
}
output "lb_pool_v2s_protocol" {
  description = "Map of protocol values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.protocol }
}
output "lb_pool_v2s_region" {
  description = "Map of region values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.region }
}
output "lb_pool_v2s_tags" {
  description = "Map of tags values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tags }
}
output "lb_pool_v2s_tenant_id" {
  description = "Map of tenant_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tenant_id }
}
output "lb_pool_v2s_tls_ciphers" {
  description = "Map of tls_ciphers values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_ciphers }
}
output "lb_pool_v2s_tls_container_ref" {
  description = "Map of tls_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_container_ref }
}
output "lb_pool_v2s_tls_enabled" {
  description = "Map of tls_enabled values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_enabled }
}
output "lb_pool_v2s_tls_versions" {
  description = "Map of tls_versions values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_versions }
}

