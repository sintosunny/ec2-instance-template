provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "git::https://github.com/sintosunny/terraform-ec2-modules.git//modules/ec2?ref=v1.0.0"

  instance_name = var.instance_name
  ami           = var.ami
  instance_type = var.instance_type
  volume_size   = var.volume_size
  postgres      = var.postgres
}


