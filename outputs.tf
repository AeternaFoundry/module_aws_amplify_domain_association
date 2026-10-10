output "amplify_domain_associations_id" {
  description = "Map of id values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amplify_domain_associations_app_id" {
  description = "Map of app_id values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "amplify_domain_associations_arn" {
  description = "Map of arn values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amplify_domain_associations_certificate_settings" {
  description = "Map of certificate_settings values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => one(v.certificate_settings) if v.certificate_settings != null && length(v.certificate_settings) > 0 }
}
output "amplify_domain_associations_certificate_verification_dns_record" {
  description = "Map of certificate_verification_dns_record values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.certificate_verification_dns_record if v.certificate_verification_dns_record != null && length(v.certificate_verification_dns_record) > 0 }
}
output "amplify_domain_associations_domain_name" {
  description = "Map of domain_name values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "amplify_domain_associations_enable_auto_sub_domain" {
  description = "Map of enable_auto_sub_domain values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.enable_auto_sub_domain if v.enable_auto_sub_domain != null }
}
output "amplify_domain_associations_region" {
  description = "Map of region values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amplify_domain_associations_sub_domain" {
  description = "Map of sub_domain values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.sub_domain if v.sub_domain != null && length(v.sub_domain) > 0 }
}
output "amplify_domain_associations_wait_for_verification" {
  description = "Map of wait_for_verification values across all amplify_domain_associations, keyed the same as var.amplify_domain_associations"
  value       = { for k, v in aws_amplify_domain_association.amplify_domain_associations : k => v.wait_for_verification if v.wait_for_verification != null }
}

