data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

data "aws_subnets" "default" {
  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

locals {
  subnet_id = data.aws_subnets.default.ids[0]
}
module "servers" {
  source   = "./modules/ec2_instance"
  for_each = toset(["app", "worker", "cache"])

  name          = each.key
  instance_type = var.instance_type
  environment   = "dev"

  ami                    = data.aws_ami.al2023.id
  subnet_id              = local.subnet_id
  vpc_security_group_ids = []
}
