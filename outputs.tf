output "vertex_ai_index_endpoint_deployed_indices_id" {
  description = "Map of id values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_automatic_resources" {
  description = "Map of automatic_resources values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no automatic_resources are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => one(v.automatic_resources) if v.automatic_resources != null && length(v.automatic_resources) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_create_time" {
  description = "Map of create_time values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_dedicated_resources" {
  description = "Map of dedicated_resources values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no dedicated_resources are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => one(v.dedicated_resources) if v.dedicated_resources != null && length(v.dedicated_resources) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_deployed_index_auth_config" {
  description = "Map of deployed_index_auth_config values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no deployed_index_auth_config are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => one(v.deployed_index_auth_config) if v.deployed_index_auth_config != null && length(v.deployed_index_auth_config) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_deployed_index_id" {
  description = "Map of deployed_index_id values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no deployed_index_id are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.deployed_index_id if v.deployed_index_id != null && length(v.deployed_index_id) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_deployment_group" {
  description = "Map of deployment_group values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no deployment_group are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.deployment_group if v.deployment_group != null && length(v.deployment_group) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_display_name" {
  description = "Map of display_name values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no display_name are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_enable_access_logging" {
  description = "Map of enable_access_logging values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no enable_access_logging are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.enable_access_logging if v.enable_access_logging != null }
}
output "vertex_ai_index_endpoint_deployed_indices_index" {
  description = "Map of index values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no index are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.index if v.index != null && length(v.index) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_index_endpoint" {
  description = "Map of index_endpoint values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no index_endpoint are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.index_endpoint if v.index_endpoint != null && length(v.index_endpoint) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_index_sync_time" {
  description = "Map of index_sync_time values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no index_sync_time are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.index_sync_time if v.index_sync_time != null && length(v.index_sync_time) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_name" {
  description = "Map of name values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_private_endpoints" {
  description = "Map of private_endpoints values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no private_endpoints are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.private_endpoints if v.private_endpoints != null && length(v.private_endpoints) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_region" {
  description = "Map of region values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vertex_ai_index_endpoint_deployed_indices_reserved_ip_ranges" {
  description = "Map of reserved_ip_ranges values across all vertex_ai_index_endpoint_deployed_indices, keyed the same as var.vertex_ai_index_endpoint_deployed_indices except keys with no reserved_ip_ranges are omitted"
  value       = { for k, v in google_vertex_ai_index_endpoint_deployed_index.vertex_ai_index_endpoint_deployed_indices : k => v.reserved_ip_ranges if v.reserved_ip_ranges != null && length(v.reserved_ip_ranges) > 0 }
}

