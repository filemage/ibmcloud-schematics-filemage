terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
    }
  }
}

provider "ibm" {
  generation       = 2
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
