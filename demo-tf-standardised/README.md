# Terraform 
## Launching a VPC with Public & Private subnet & NAT Gateway in AWS using Terraform!

https://harshitdawar.medium.com/launching-a-vpc-with-public-private-subnet-nat-gateway-in-aws-using-terraform-99950c671ce9

### This blog will guide you to create:
- A VPC &2 subnets in it, one is public & another one is private. 
- Then WordPress EC2 instance will be created in the public subnet, & a MySQL instance in the Private subnet. The MySQL instance will only allow the WordPress instance to connect and that too only for the database. 
- Therefore to do any updates in the MySQL instance, one more ec2 instance known as Bastion Host or Jump Box will be created to access the MySQL instance. 
- For MySQL to connect to the Internet, a NAT Gateway is created in the public subnet. 
- Multiple Security groups are also created in this complete process to provide optimal security!

Prerequisite for this Pipeline to Implement
Some knowledge of AWS & Github.
It would be a plus point for you if you are having the knowledge of JSON, because, in this Pipeline, HCL (Hashi Configuration Language) has been used which is the native language for Terraform, & it is very similar to JSON.

### Steps to do:
To create a Virtual Private Cloud (VPC) with public and private subnets and a NAT gateway in Amazon Web Services (AWS) using Terraform, you will need to perform the following steps:

1) Install and configure Terraform on your local system.
2) Create a new Terraform configuration file and specify the AWS provider details, such as the access key and secret key.
3) Define the VPC resource, giving it a unique name and the desired CIDR block range.
4) Define the public and private subnets, specifying the VPC ID, CIDR block range, and availability zone.
5) Create an internet gateway and attach it to the VPC.
6) Define a route table for the public subnet, specifying the internet gateway as the target for all internet-bound traffic.
7) Create a NAT gateway and specify the public subnet and elastic IP address for it.
8) Define a route table for the private subnet, specifying the NAT gateway as the target for all internet-bound traffic.
9) Use the Terraform apply command to create the VPC, subnets, internet gateway, NAT gateway, and route tables.
10) Verify that the VPC and its associated resources have been created successfully by logging in to the AWS Management Console.
11) Once the VPC has been created, you can create and launch EC2 instances in the public and private subnets, and configure security groups and network ACLs to control access to and from the VPC.