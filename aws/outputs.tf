output "vpc_id" {
  value = module.aws.vpc_id
}

output "subnet_ids" {
  value = module.aws.subnet_ids
}

output "instance_id" {
  value = module.aws.instance_id
}

output "lb_dns_name" {
  value = module.aws.lb_dns_name
}
