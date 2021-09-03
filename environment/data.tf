data "ibm_is_ssh_key" "deployment_key" {
  name = var.ssh_key
}

data "ibm_is_image" "image" {
  name = var.image_name
}