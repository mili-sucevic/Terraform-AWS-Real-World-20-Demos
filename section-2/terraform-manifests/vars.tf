variable "profile" {
  default = "default"
}

variable "region" {
  default = "us-east-1"
}

variable "ec2_ami" {
  default = "ami-0b0dcb5067f052a63"
}

variable "ec2_name" {
	default = "ec2-test-instance"
}

variable "instance_type" {
  default = "t2.micro"
}