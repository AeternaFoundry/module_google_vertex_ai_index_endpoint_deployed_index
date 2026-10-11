variable "vertex_ai_index_endpoint_deployed_indices" {
  description = <<EOT
Map of vertex_ai_index_endpoint_deployed_indices, attributes below
Required:
    - deployed_index_id
    - index
    - index_endpoint
Optional:
    - deletion_policy
    - deployment_group
    - display_name
    - enable_access_logging
    - region
    - reserved_ip_ranges
    - automatic_resources (block):
        - max_replica_count (optional)
        - min_replica_count (optional)
    - dedicated_resources (block):
        - machine_spec (required, block):
            - machine_type (optional)
        - max_replica_count (optional)
        - min_replica_count (required)
    - deployed_index_auth_config (block):
        - auth_provider (optional, block):
            - allowed_issuers (optional)
            - audiences (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deployed_index_id     = string
    index                 = string
    index_endpoint        = string
    deletion_policy       = optional(string)
    deployment_group      = optional(string)
    display_name          = optional(string)
    enable_access_logging = optional(bool)
    region                = optional(string)
    reserved_ip_ranges    = optional(list(string))
    automatic_resources = optional(object({
      max_replica_count = optional(number)
      min_replica_count = optional(number)
    }))
    dedicated_resources = optional(object({
      machine_spec = object({
        machine_type = optional(string)
      })
      max_replica_count = optional(number)
      min_replica_count = number
    }))
    deployed_index_auth_config = optional(object({
      auth_provider = optional(object({
        allowed_issuers = optional(list(string))
        audiences       = optional(list(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

