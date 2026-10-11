resource "google_vertex_ai_index_endpoint_deployed_index" "vertex_ai_index_endpoint_deployed_indices" {
  for_each = var.vertex_ai_index_endpoint_deployed_indices

  deployed_index_id     = each.value.deployed_index_id
  index                 = each.value.index
  index_endpoint        = each.value.index_endpoint
  deletion_policy       = each.value.deletion_policy
  deployment_group      = each.value.deployment_group
  display_name          = each.value.display_name
  enable_access_logging = each.value.enable_access_logging
  region                = each.value.region
  reserved_ip_ranges    = each.value.reserved_ip_ranges

  dynamic "automatic_resources" {
    for_each = each.value.automatic_resources != null ? [each.value.automatic_resources] : []
    content {
      max_replica_count = automatic_resources.value.max_replica_count
      min_replica_count = automatic_resources.value.min_replica_count
    }
  }

  dynamic "dedicated_resources" {
    for_each = each.value.dedicated_resources != null ? [each.value.dedicated_resources] : []
    content {
      machine_spec {
        machine_type = dedicated_resources.value.machine_spec.machine_type
      }
      max_replica_count = dedicated_resources.value.max_replica_count
      min_replica_count = dedicated_resources.value.min_replica_count
    }
  }

  dynamic "deployed_index_auth_config" {
    for_each = each.value.deployed_index_auth_config != null ? [each.value.deployed_index_auth_config] : []
    content {
      dynamic "auth_provider" {
        for_each = deployed_index_auth_config.value.auth_provider != null ? [deployed_index_auth_config.value.auth_provider] : []
        content {
          allowed_issuers = auth_provider.value.allowed_issuers
          audiences       = auth_provider.value.audiences
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

