output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "subnet_id" {
  value = google_compute_subnetwork.subnet.id
}

output "instance_id" {
  value = google_compute_instance.vm_instance.id
}

output "forwarding_rule_ip" {
  value = google_compute_forwarding_rule.fr.ip_address
}

