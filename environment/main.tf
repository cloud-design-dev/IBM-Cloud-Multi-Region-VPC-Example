module "vpc" {
  source         = "git::https://github.com/cloud-design-dev/IBM-Cloud-VPC-Module.git"
  name           = "${var.name}-vpc"
  resource_group = var.resource_group
  tags           = concat(var.tags)
}

module "public_gateway" {
  source         = "git::https://github.com/cloud-design-dev/IBM-Cloud-VPC-Public-Gateway-Module.git"
  name           = "${var.name}-pgw"
  zone           = var.zone
  vpc            = module.vpc.id
  resource_group = var.resource_group
  tags           = concat(var.tags, ["zone:${var.zone}"])
}

module "subnet" {
  source         = "git::https://github.com/cloud-design-dev/IBM-Cloud-VPC-Subnet-Module.git"
  name           = "${var.name}-subnet"
  address_count  = "32"
  zone           = var.zone
  vpc            = module.vpc.id
  resource_group = var.resource_group
  public_gateway = module.public_gateway.id
  tags           = concat(var.tags, ["zone:${var.zone}"])
}

module "instance" {
  source            = "git::https://github.com/cloud-design-dev/IBM-Cloud-VPC-Instance-Module.git"
  vpc_id            = module.vpc.id
  subnet_id         = module.subnet.id
  ssh_keys          = [data.ibm_is_ssh_key.deployment_key.id]
  resource_group_id = var.resource_group
  name              = "${var.name}-instance"
  zone              = var.zone
  security_groups   = [module.vpc.default_security_group]
  tags              = concat(var.tags, ["zone:${var.zone}"])
  user_data         = ""
  allow_ip_spoofing = false
}