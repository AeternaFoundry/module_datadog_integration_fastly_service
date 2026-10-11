variable "integration_fastly_services" {
  description = <<EOT
Map of integration_fastly_services, attributes below
Required:
    - service_id
Optional:
    - account_id
    - tags
EOT

  type = map(object({
    service_id = string
    account_id = optional(string)
    tags       = optional(set(string))
  }))
}

