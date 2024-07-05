module "gcp" {
  source = "../modules/gcp"

  project      = var.project
  region       = var.region
  subnet_cidr  = var.subnet_cidr
  machine_type = var.machine_type
  zone         = var.zone
  image        = var.image
}

