variable "TF_VERSION" {
  default     = "0.13"
  description = "The version of the Terraform engine that's used in the Schematics workspace."
}

variable "region" {
  type    = string
  description = "The region in which the VPC instance is located. Required for users to specify."
}

variable "ssh_key_name" {
  type        = string
  description = "The name of the public SSH key to use when creating the virtual server instance. Required for users to specify."
}

variable "subnet_id" {
  type = string
  description = "The ID of the subnet within the VPC that the virtual server instance uses. Required for users to specify."
}

variable "vsi_instance_name" {
  type = string
  description = "The name of the virtual server instance. Required for users to specify."
}

variable "vsi_profile" {
  default     = "bx2-2x8"
  description = "The profile of compute CPU and memory resources to use when creating the virtual server instance. To list available profiles, run the `ibmcloud is instance-profiles` command."
}

variable "vsi_security_group" {
  description = "The name of the security group that is created. Required for users to specify."
}

variable "public_image_name" {
  type    = string
  default = "filemage-ibm-1-5-12"
}

variable "custom_image_name" {
  type = string
  default = ""
}