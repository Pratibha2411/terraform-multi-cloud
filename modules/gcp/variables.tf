variable "project" {
  description = "The GCP project ID"
}

variable "region" {
  description = "The GCP region to create resources in"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
}

variable "machine_type" {
  description = "The machine type for the instance"
}

variable "zone" {
  description = "The GCP zone to create resources in"
}

variable "image" {
  description = "The image to use for the instance"
}

