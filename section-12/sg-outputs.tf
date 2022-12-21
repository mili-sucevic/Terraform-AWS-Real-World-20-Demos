# AWS Security Group Terraform Outputs

# PUBLIC BASTION SG OUTPUT
output "public_bastion_sg_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.security_group_id
}

output "public_bastion_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_sg.security_group_vpc_id
}

output "public_bastion_sg_name" {
  description = "The name of the security group"
  value       = module.public_bastion_sg.security_group_name
}

# PRIVATE EC2 SG OUTPUT
output "private_sg_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}

output "private_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}

output "private_sg_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}


## LOAD BALANCER SG OUTPUT
output "elb_sg_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = module.loadbalancer_sg.security_group_id
}