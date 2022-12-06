# Resource: EC2 Instance
resource "aws_instance" "myec2vm" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t3.micro"
  user_data     = file("${path.module}/app1-install.sh")
  key_name      = aws_key_pair.ec2key.id
  tags = {
    "Name" = "EC2 Demo"
  }
}

# Key Pair Block
resource "aws_key_pair" "ec2key" {
  key_name   = "publicKey"
  public_key = file("~/.ssh/id_rsa.pub")
}