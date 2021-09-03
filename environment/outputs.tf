output "vpc_id" {
  value = module.vpc.id
}

output "public_gateway_id" {
  value = module.public_gateway.id
}

output "subnet_id" {
  value = module.subnet.id
}

output "instance_id" {
  value = module.instance.id
}

output "instance_ip" {
  value = module.instance.primary_ipv4_address
}