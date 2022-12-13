# Terraform 
## Launching a VPC with Public & Private subnet & NAT Gateway in AWS using Terraform!

https://harshitdawar.medium.com/launching-a-vpc-with-public-private-subnet-nat-gateway-in-aws-using-terraform-99950c671ce9

This blog will guide you to create:
- A VPC &2 subnets in it, one is public & another one is private. 
- Then WordPress EC2 instance will be created in the public subnet, & a MySQL instance in the Private subnet. The MySQL instance will only allow the WordPress instance to connect and that too only for the database. 
- Therefore to do any updates in the MySQL instance, one more ec2 instance known as Bastion Host or Jump Box will be created to access the MySQL instance. 
- For MySQL to connect to the Internet, a NAT Gateway is created in the public subnet. 
- Multiple Security groups are also created in this complete process to provide optimal security!

Prerequisite for this Pipeline to Implement
Some knowledge of AWS & Github.
It would be a plus point for you if you are having the knowledge of JSON, because, in this Pipeline, HCL (Hashi Configuration Language) has been used which is the native language for Terraform, & it is very similar to JSON.

https://harshitdawar.medium.com/launching-a-vpc-with-public-private-subnet-nat-gateway-in-aws-using-terraform-99950c671ce9