variable "aws_region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
  default     = "ami-0abcdef1234567890"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}
variable "public_key_path" {
  default = "~/.ssh/deployer_key.pub"
}
variable "availability_zones" {
  description = "List of availability zones to use for subnets"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

