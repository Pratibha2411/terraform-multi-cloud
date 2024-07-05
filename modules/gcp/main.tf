provider "google" {
  project = var.project
  region  = var.region
}

resource "google_compute_network" "vpc" {
  name                    = "vpc-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "subnet"
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.subnet_cidr
}

resource "google_compute_firewall" "default" {
  name    = "default-allow-http"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm_instance" {
  name         = "vm-instance"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network    = google_compute_network.vpc.id
    subnetwork = google_compute_subnetwork.subnet.name

    access_config {
      // Ephemeral IP
    }
  }
}

resource "google_compute_forwarding_rule" "fr" {
  name       = "forwarding-rule"
  load_balancing_scheme = "EXTERNAL"
  port_range = "80"
  target     = google_compute_target_pool.default.self_link
}

resource "google_compute_target_pool" "default" {
  name = "default-pool"
}

