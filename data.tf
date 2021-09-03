
data "ibm_resource_group" "project" {
  name = var.resource_group
}

data "ibm_is_zones" "region1" {
  region = var.region1
}

data "ibm_is_zones" "region2" {
  region = var.region2
}