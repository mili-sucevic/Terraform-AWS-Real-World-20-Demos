# ACM MODULE
module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "4.3.1"

  domain_name = trimsuffix(data.aws_route53_zone.my_domain.name, ".") # Remove the dot with trimsuffix at the end of the domain name
  zone_id     = data.aws_route53_zone.my_domain.zone_id

  subject_alternative_names = [
    "*.cmcloudlab448.info"
  ]

  tags = local.common_tags
}

# Output ACM Certificate ARN
output "this_acm_certificate_arn" {
  description = "The ARN of the certificate"
  value       = module.acm.acm_certificate_arn
}

# Status of the certificate
output "acm_certificate_status" {
  description = "Status of the certificate."
  value       = module.acm.acm_certificate_status
}