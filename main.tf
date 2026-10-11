data "oci_network_load_balancer_backends" "network_load_balancer_backends_lookup" {
  for_each = var.network_load_balancer_backends_lookup

  backend_set_name         = each.value.backend_set_name
  network_load_balancer_id = each.value.network_load_balancer_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

