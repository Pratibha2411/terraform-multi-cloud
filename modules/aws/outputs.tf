output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_ids" {
  value = aws_subnet.main[*].id
}

output "instance_id" {
  value = aws_instance.web.id
}

output "lb_dns_name" {
  value = aws_lb.main.dns_name
}
