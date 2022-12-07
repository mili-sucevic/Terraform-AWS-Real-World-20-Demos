# Terraform Output Values
output "ec2_public_ip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.mili-ec2-vm.public_ip
}

output "ec2_public_dns" {
  description = "EC2 Public DNS"
  value       = aws_instance.mili-ec2-vm.public_dns
}