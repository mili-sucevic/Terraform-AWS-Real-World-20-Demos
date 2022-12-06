# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = var.profile # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = var.region
}

# EC2 Block
resource "aws_instance" "ec2demo" {
  ami           = var.ec2_ami # Amazon Linux in us-east-1, update as per your region
  instance_type = var.instance_type

  tags = {
    Name = var.ec2_name
  }
}

# Key Pair Block
resource "aws_key_pair" "ec2key" {
  key_name   = "publicKey"
  public_key = file("~/.ssh/id_rsa.pub")
}