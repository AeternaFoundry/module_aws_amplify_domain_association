variable "amplify_domain_associations" {
  description = <<EOT
Map of amplify_domain_associations, attributes below
Required:
    - app_id
    - domain_name
    - sub_domain (block):
        - branch_name (required)
        - prefix (required)
Optional:
    - enable_auto_sub_domain
    - region
    - wait_for_verification
    - certificate_settings (block):
        - custom_certificate_arn (optional)
        - type (required)
EOT

  type = map(object({
    app_id                 = string
    domain_name            = string
    enable_auto_sub_domain = optional(bool)
    region                 = optional(string)
    wait_for_verification  = optional(bool)
    sub_domain = list(object({
      branch_name = string
      prefix      = string
    }))
    certificate_settings = optional(object({
      custom_certificate_arn = optional(string)
      type                   = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.amplify_domain_associations : (
        length(v.sub_domain) >= 1
      )
    ])
    error_message = "Each sub_domain list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.amplify_domain_associations : (
        alltrue([for item in v.sub_domain : (length(item.branch_name) >= 1 && length(item.branch_name) <= 255)])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

