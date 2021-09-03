variable "region1" {
  type        = string
  description = "Name of the first region where resources will be deployed."
  default     = ""
}

variable "region2" {
  type        = string
  description = "Name of the second region where resources will be deployed."
  default     = ""
}


variable "region1_ssh_key" {
  type        = string
  description = "The SSH Key that will be added to the compute instances in Region 1."
  default     = ""
}

variable "region2_ssh_key" {
  type        = string
  description = "The SSH Key that will be added to the compute instances in Region 2."
  default     = ""
}

variable "tags" {
  type        = list(string)
  description = "Default set of tags to append to resources."
  default     = []
}

variable "resource_group" {
  type        = string
  description = "Resource group where resources will be deployed."
  default     = ""
}

variable "name" {
  type        = string
  description = "Name for VPC and associated resources."
  default     = ""
}
