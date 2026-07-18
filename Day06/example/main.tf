locals {
  instance_type = terraform.workspace == "prod" ? "t3.medium" : "t3.micro"
}

data "aws_ami" "amazon_linux" {

  most_recent = true

  owners = ["amazon"]

  filter {
    name = "name"

    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "demo" {

  ami = data.aws_ami.amazon_linux.id

  instance_type = local.instance_type

  tags = {
    Name = "workspace-${terraform.workspace}"
  }
}
