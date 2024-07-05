variable "aws_region" {
  description = "The AWS region to create resources in"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
}

variable "instance_type" {
  description = "The instance type for the VM"
}
variable "public_key_path" {
  default = "~/.ssh/deployer_key.pub"
}
variable "availability_zones" {
  description = "List of availability zones to use for subnets"
  type        = list(string)
}


