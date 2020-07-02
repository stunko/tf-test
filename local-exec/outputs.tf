output "null_resource_id" {
  description = "An arbitrary value that changes each time the resource is replaced"
  value       = null_resource.default.id
}
