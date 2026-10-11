output "network_load_balancer_backends_lookup_id" {
  description = "Map of id values across all network_load_balancer_backends_lookup, keyed the same as var.network_load_balancer_backends_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backends.network_load_balancer_backends_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_load_balancer_backends_lookup_backend_collection" {
  description = "Map of backend_collection values across all network_load_balancer_backends_lookup, keyed the same as var.network_load_balancer_backends_lookup except keys with no backend_collection are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backends.network_load_balancer_backends_lookup : k => v.backend_collection if v.backend_collection != null && length(v.backend_collection) > 0 }
}
output "network_load_balancer_backends_lookup_backend_set_name" {
  description = "Map of backend_set_name values across all network_load_balancer_backends_lookup, keyed the same as var.network_load_balancer_backends_lookup except keys with no backend_set_name are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backends.network_load_balancer_backends_lookup : k => v.backend_set_name if v.backend_set_name != null && length(v.backend_set_name) > 0 }
}
output "network_load_balancer_backends_lookup_filter" {
  description = "Map of filter values across all network_load_balancer_backends_lookup, keyed the same as var.network_load_balancer_backends_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backends.network_load_balancer_backends_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "network_load_balancer_backends_lookup_network_load_balancer_id" {
  description = "Map of network_load_balancer_id values across all network_load_balancer_backends_lookup, keyed the same as var.network_load_balancer_backends_lookup except keys with no network_load_balancer_id are omitted"
  value       = { for k, v in data.oci_network_load_balancer_backends.network_load_balancer_backends_lookup : k => v.network_load_balancer_id if v.network_load_balancer_id != null && length(v.network_load_balancer_id) > 0 }
}

