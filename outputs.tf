output "integration_fastly_services_id" {
  description = "Map of id values across all integration_fastly_services, keyed the same as var.integration_fastly_services except keys with no id are omitted"
  value       = { for k, v in datadog_integration_fastly_service.integration_fastly_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_fastly_services_account_id" {
  description = "Map of account_id values across all integration_fastly_services, keyed the same as var.integration_fastly_services except keys with no account_id are omitted"
  value       = { for k, v in datadog_integration_fastly_service.integration_fastly_services : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "integration_fastly_services_service_id" {
  description = "Map of service_id values across all integration_fastly_services, keyed the same as var.integration_fastly_services except keys with no service_id are omitted"
  value       = { for k, v in datadog_integration_fastly_service.integration_fastly_services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "integration_fastly_services_tags" {
  description = "Map of tags values across all integration_fastly_services, keyed the same as var.integration_fastly_services except keys with no tags are omitted"
  value       = { for k, v in datadog_integration_fastly_service.integration_fastly_services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

