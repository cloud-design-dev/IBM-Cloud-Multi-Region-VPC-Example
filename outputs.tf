output "region1_vpc" {
  value = <<EOF
  VPC ID ${module.region1.vpc_id}
  PubGW ID: ${module.region1.public_gateway_id}
  Subnet ID:  ${module.region1.subnet_id}
  Instance ID:  ${module.region1.instance_id}

  EOF
}

output "region2_vpc" {
  value = <<EOF
  VPC ID ${module.region2.vpc_id}
  PubGW ID: ${module.region2.public_gateway_id}
  Subnet ID:  ${module.region2.subnet_id}
  Instance ID:  ${module.region2.instance_id}

  EOF
}