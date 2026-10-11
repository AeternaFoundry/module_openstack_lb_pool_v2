variable "lb_pool_v2s" {
  description = <<EOT
Map of lb_pool_v2s, attributes below
Required:
    - lb_method
    - protocol
Optional:
    - admin_state_up
    - alpn_protocols
    - ca_tls_container_ref
    - crl_container_ref
    - description
    - listener_id
    - loadbalancer_id
    - name
    - region
    - tags
    - tenant_id
    - tls_ciphers
    - tls_container_ref
    - tls_enabled
    - tls_versions
    - persistence (block):
        - cookie_name (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    lb_method            = string
    protocol             = string
    admin_state_up       = optional(bool)
    alpn_protocols       = optional(set(string))
    ca_tls_container_ref = optional(string)
    crl_container_ref    = optional(string)
    description          = optional(string)
    listener_id          = optional(string)
    loadbalancer_id      = optional(string)
    name                 = optional(string)
    region               = optional(string)
    tags                 = optional(set(string))
    tenant_id            = optional(string)
    tls_ciphers          = optional(string)
    tls_container_ref    = optional(string)
    tls_enabled          = optional(bool)
    tls_versions         = optional(set(string))
    persistence = optional(object({
      cookie_name = optional(string)
      type        = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lb_pool_v2s : (
        contains(["TCP", "UDP", "HTTP", "HTTPS", "PROXY", "SCTP", "PROXYV2"], v.protocol)
      )
    ])
    error_message = "must be one of: \"TCP\", \"UDP\", \"HTTP\", \"HTTPS\", \"PROXY\", \"SCTP\", \"PROXYV2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_pool_v2s : (
        contains(["ROUND_ROBIN", "LEAST_CONNECTIONS", "SOURCE_IP", "SOURCE_IP_PORT"], v.lb_method)
      )
    ])
    error_message = "must be one of: \"ROUND_ROBIN\", \"LEAST_CONNECTIONS\", \"SOURCE_IP\", \"SOURCE_IP_PORT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_pool_v2s : (
        v.persistence == null || (contains(["SOURCE_IP", "HTTP_COOKIE", "APP_COOKIE"], v.persistence.type))
      )
    ])
    error_message = "must be one of: \"SOURCE_IP\", \"HTTP_COOKIE\", \"APP_COOKIE\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_pool_v2s : (
        v.alpn_protocols == null || (alltrue([for x in v.alpn_protocols : contains(["http/1.0", "http/1.1", "h2"], x)]))
      )
    ])
    error_message = "must be one of: \"http/1.0\", \"http/1.1\", \"h2\""
  }
  validation {
    condition = alltrue([
      for k, v in var.lb_pool_v2s : (
        v.tls_versions == null || (alltrue([for x in v.tls_versions : contains(["TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3"], x)]))
      )
    ])
    error_message = "must be one of: \"TLSv1\", \"TLSv1.1\", \"TLSv1.2\", \"TLSv1.3\""
  }
}

