module "aws" {
  source            = "../modules/aws"
  aws_region        = var.aws_region
  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  availability_zones = var.availability_zones
  public_key_path = var.public_key_path
}


