# EC2 PRIVATE INSTANCE MODULE
## EC2 Instances that will be created in VPC Private Subnets
module "ec2_private_app3" {
  depends_on = [module.vpc] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "4.2.1"

  #for_each = toset([ module.vpc.private_subnets[0],module.vpc.private_subnets[1] ])
  for_each = toset(["0", "1"])

  name                   = "${var.environment}-app3"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.security_group_id]

  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))
  user_data = templatefile("app3-ums-install.tmpl", { rds_db_endpoint = module.rds_db.db_instance_address })
  tags      = local.common_tags
}