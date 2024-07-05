module "azure" {
  source = "../modules/azure"

  location         = var.location
  vnet_cidr        = var.vnet_cidr
  subnet_cidr      = var.subnet_cidr
  vm_size          = var.vm_size
  image_publisher  = var.image_publisher
  image_offer      = var.image_offer
  image_sku        = var.image_sku
  image_version    = var.image_version
  admin_username   = var.admin_username
  admin_password   = var.admin_password
}

