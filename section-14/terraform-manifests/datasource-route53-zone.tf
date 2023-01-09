# Get DNS information from AWS Route53
data "aws_route53_zone" "my_domain" {
  name = "cmcloudlab643.info"
}

# Output MyDomain Zone ID
output "my_domain_zoneid" {
  description = "The Hosted Zone id of the desired Hosted Zone"
  value       = data.aws_route53_zone.my_domain.zone_id
}

# Output MyDomain name
output "my_domain_name" {
  description = " The Hosted Zone name of the desired Hosted Zone."
  value       = data.aws_route53_zone.my_domain.name
}