resource "datadog_integration_fastly_service" "integration_fastly_services" {
  for_each = var.integration_fastly_services

  service_id = each.value.service_id
  account_id = each.value.account_id
  tags       = each.value.tags
}

