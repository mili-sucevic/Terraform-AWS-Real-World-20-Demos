# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs
## public_bastion_sg_group_id
output "public_bastion_sg_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_sg.security_group_id
}

## public_bastion_sg_group_vpc_id
output "public_bastion_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_sg.security_group_vpc_id
}

## public_bastion_sg_group_name
output "public_bastion_sg_name" {
  description = "The name of the security group"
  value       = module.public_bastion_sg.security_group_name
}

# Private EC2 Instances Security Group Outputs
## private_sg_group_id
output "private_sg_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}

## private_sg_group_vpc_id
output "private_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}

## private_sg_group_name
output "private_sg_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}

output "elb_sg_id" {
  description = "The ID of the security group that you can use as part of your inbound rules for your load balancer's back-end application instances"
  value       = module.loadbalancer_sg.security_group_id
}