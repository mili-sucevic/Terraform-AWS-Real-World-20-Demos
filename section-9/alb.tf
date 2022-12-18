# APPLICATION LOAD BALANCER MODULE
module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = "${local.name}-alb"

  load_balancer_type = "application"

  ## Network
  vpc_id          = module.vpc.vpc_id
  subnets         = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  security_groups = [module.loadbalancer_sg.security_group_id]

  # access_logs = {
  #   bucket = "mili-alb-logs"
  # }

  ## Target Groups
  target_groups = [
    {
      name_prefix          = "app1-"
      backend_protocol     = "HTTP"
      backend_port         = 80
      target_type          = "instance"
      deregistration_delay = 10
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/healthz"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }
      protocol_version = "HTTP1"
      ## App1 Target Group - Registered Targets
      targets = {
        my_app1_vm1 = {
          target_id = element([for instance in module.ec2_private: instance.id], 0)
          port      = 80
        },
        my_app1_vm2 = {
          target_id = element([for instance in module.ec2_private: instance.id], 1)
          port      = 80
        }
      }
      tags = local.common_tags
    }
  ]


  ## Listeners
  # https_listeners = [
  #   {
  #     port               = 443
  #     protocol           = "HTTPS"
  #     certificate_arn    = "arn:aws:iam::123456789012:server-certificate/test_cert-123456789012"
  #     target_group_index = 0
  #   }
  # ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = {
    Environment = "Test"
  }
}