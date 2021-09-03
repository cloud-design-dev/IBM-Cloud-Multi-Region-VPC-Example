module "region1" {
  source         = "./environment"
  name           = "${var.name}-${var.region1}"
  resource_group = data.ibm_resource_group.project.id
  zone           = data.ibm_is_zones.region1.zones[0]
  ssh_key        = var.region1_ssh_key
  tags           = concat(var.tags, ["project:${var.name}", "region:${var.region1}"])

  providers = {
    ibm = ibm.region1
  }
}

module "region2" {
  source         = "./environment"
  name           = "${var.name}-${var.region2}"
  resource_group = data.ibm_resource_group.project.id
  zone           = data.ibm_is_zones.region2.zones[0]
  ssh_key        = var.region2_ssh_key
  tags           = concat(var.tags, ["project:${var.name}", "region:${var.region2}"])
  providers = {
    ibm = ibm.region2
  }
}