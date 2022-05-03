terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.0"
    }
  }
}

provider "ibm" {
  region           = var.region
  ibmcloud_timeout = 300
}

data "ibm_is_region" "region" {
  name = var.region
}

data "ibm_is_subnet" "vsi_subnet" {
  identifier = var.subnet_id
}

data "ibm_is_ssh_key" "vsi_ssh_pub_key" {
  name = var.ssh_key_name
}

data "ibm_is_instance_profile" "vsi_profile" {
  name = var.vsi_profile
}

data "ibm_is_image" "custom_image" {
  name = var.custom_image_name
}

output "vsi_instance_address" {
  value = var.create_floating_ip == true ? ibm_is_floating_ip.vsi_floating_ip[0].address : ibm_is_instance.vsi_instance.primary_network_interface[0].primary_ipv4_address
}
