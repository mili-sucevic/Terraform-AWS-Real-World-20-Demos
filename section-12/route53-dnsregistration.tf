# DNS Registration 
## Default DNS
resource "aws_route53_record" "default_dns" {
  zone_id = data.aws_route53_zone.my_domain.zone_id
  name    = "myapps101.cmcloudlab499.info"
  type    = "A"
  alias {
    name                   = module.alb.lb_dns_name
    zone_id                = module.alb.lb_zone_id
    evaluate_target_health = true
  }
}

## Testing Host Header - Redirect to External Site from ALB HTTPS Listener Rules
resource "aws_route53_record" "app1_dns" {
  zone_id = data.aws_route53_zone.my_domain.zone_id
  name    = "azure-aks101.cmcloudlab499.info"
  type    = "A"
  alias {
    name                   = module.alb.lb_dns_name
    zone_id                = module.alb.lb_zone_id
    evaluate_target_health = true
  }
}