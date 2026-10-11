output "lb_pool_v2s_id" {
  description = "Map of id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lb_pool_v2s_admin_state_up" {
  description = "Map of admin_state_up values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no admin_state_up are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.admin_state_up if v.admin_state_up != null }
}
output "lb_pool_v2s_alpn_protocols" {
  description = "Map of alpn_protocols values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no alpn_protocols are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.alpn_protocols if v.alpn_protocols != null && length(v.alpn_protocols) > 0 }
}
output "lb_pool_v2s_ca_tls_container_ref" {
  description = "Map of ca_tls_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no ca_tls_container_ref are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.ca_tls_container_ref if v.ca_tls_container_ref != null && length(v.ca_tls_container_ref) > 0 }
}
output "lb_pool_v2s_crl_container_ref" {
  description = "Map of crl_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no crl_container_ref are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.crl_container_ref if v.crl_container_ref != null && length(v.crl_container_ref) > 0 }
}
output "lb_pool_v2s_description" {
  description = "Map of description values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no description are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.description if v.description != null && length(v.description) > 0 }
}
output "lb_pool_v2s_lb_method" {
  description = "Map of lb_method values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no lb_method are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.lb_method if v.lb_method != null && length(v.lb_method) > 0 }
}
output "lb_pool_v2s_listener_id" {
  description = "Map of listener_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no listener_id are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.listener_id if v.listener_id != null && length(v.listener_id) > 0 }
}
output "lb_pool_v2s_loadbalancer_id" {
  description = "Map of loadbalancer_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no loadbalancer_id are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.loadbalancer_id if v.loadbalancer_id != null && length(v.loadbalancer_id) > 0 }
}
output "lb_pool_v2s_name" {
  description = "Map of name values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "lb_pool_v2s_persistence" {
  description = "Map of persistence values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no persistence are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => one(v.persistence) if v.persistence != null && length(v.persistence) > 0 }
}
output "lb_pool_v2s_protocol" {
  description = "Map of protocol values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no protocol are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "lb_pool_v2s_region" {
  description = "Map of region values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "lb_pool_v2s_tags" {
  description = "Map of tags values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tags are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "lb_pool_v2s_tenant_id" {
  description = "Map of tenant_id values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tenant_id are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tenant_id if v.tenant_id != null && length(v.tenant_id) > 0 }
}
output "lb_pool_v2s_tls_ciphers" {
  description = "Map of tls_ciphers values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tls_ciphers are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_ciphers if v.tls_ciphers != null && length(v.tls_ciphers) > 0 }
}
output "lb_pool_v2s_tls_container_ref" {
  description = "Map of tls_container_ref values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tls_container_ref are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_container_ref if v.tls_container_ref != null && length(v.tls_container_ref) > 0 }
}
output "lb_pool_v2s_tls_enabled" {
  description = "Map of tls_enabled values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tls_enabled are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_enabled if v.tls_enabled != null }
}
output "lb_pool_v2s_tls_versions" {
  description = "Map of tls_versions values across all lb_pool_v2s, keyed the same as var.lb_pool_v2s except keys with no tls_versions are omitted"
  value       = { for k, v in openstack_lb_pool_v2.lb_pool_v2s : k => v.tls_versions if v.tls_versions != null && length(v.tls_versions) > 0 }
}

