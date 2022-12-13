# Launch a Webserver Instance hosting WordPress in it.
resource "aws_instance" "wordpress" {
  depends_on = [
    aws_vpc.vpc,
    aws_subnet.public-subnet,
    aws_subnet.private-subnet,
    aws_security_group.bastion-sg,
    aws_security_group.mysql-bastion-ssh-sg
  ]

  # AMI ID - Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public-subnet.id

  key_name = aws_key_pair.key-pair.key_name

  # Security groups to use
  vpc_security_group_ids = [aws_security_group.wp-sg.id]

  tags = {
    Name = "wordpress-terraform"
  }

  # Installing required softwares into the system
  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("/home/cloud_user/github/Terraform-AWS-Real-World-20-Demos/demo-tf-standardised/private-key/tf-deploy.pem")
    host        = aws_instance.wordpress.public_ip
  }

  # Code for installing the softwares
  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo yum install php php-mysqlnd httpd -y",
      "wget https://wordpress.org/wordpress-4.8.14.tar.gz",
      "tar -xzf wordpress-4.8.14.tar.gz",
      "sudo cp -r wordpress /var/www/html/",
      "sudo chown -R apache.apache /var/www/html/",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo systemctl restart httpd"
    ]
  }
}