variable "location" {
  description = "The Azure region to create resources in"
}

variable "vnet_cidr" {
  description = "The CIDR block for the virtual network"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet"
}

variable "vm_size" {
  description = "The size of the virtual machine"
}

variable "image_publisher" {
  description = "The publisher of the image to use for the VM"
}

variable "image_offer" {
  description = "The offer of the image to use for the VM"
}

variable "image_sku" {
  description = "The SKU of the image to use for the VM"
}

variable "image_version" {
  description = "The version of the image to use for the VM"
}

variable "admin_username" {
  description = "The admin username for the VM"
}

variable "admin_password" {
  description = "The admin password for the VM"
}

