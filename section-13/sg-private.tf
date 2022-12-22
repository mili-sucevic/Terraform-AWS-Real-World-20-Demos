# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.16.2"

  name        = "private_sg"
  description = "Security Group with HTTP & SSH port open for entire VPC Block (IPv4 CIDR), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id

  # Ingress Rules & CIDR Blocks
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  ingress_rules       = ["ssh-tcp", "http-80-tcp", "http-8080-tcp"]

  # Egress Rule - all-all open
  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules       = ["all-all"]

  tags = local.common_tags
}