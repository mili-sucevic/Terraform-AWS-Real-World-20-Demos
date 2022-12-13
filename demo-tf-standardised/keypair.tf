resource "aws_key_pair" "key-pair" {

  # Name of the Key
  key_name = var.keypair

  # Adding the SSH authorized key !
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}