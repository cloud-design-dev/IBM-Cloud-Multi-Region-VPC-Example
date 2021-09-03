variable "name" {}
variable "zone" {}
variable "resource_group" {}
variable "ssh_key" {}
variable "tags" {}
variable "image_name" {
  default = "ibm-ubuntu-20-04-minimal-amd64-2"
}