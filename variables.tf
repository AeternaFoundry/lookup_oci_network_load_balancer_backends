variable "network_load_balancer_backends_lookup" {
  description = <<EOT
Map of network_load_balancer_backends_lookup, attributes below
Required:
    - backend_set_name
    - network_load_balancer_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    backend_set_name         = string
    network_load_balancer_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

