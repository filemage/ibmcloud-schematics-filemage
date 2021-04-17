resource "ibm_is_instance" "vsi_instance" {
  name           = var.vsi_instance_name
  resource_group = data.ibm_is_subnet.vsi_subnet.resource_group
  image          = local.image_id
  profile        = data.ibm_is_instance_profile.vsi_profile.id

  primary_network_interface {
    subnet          = data.ibm_is_subnet.vsi_subnet.id
    security_groups = [ibm_is_security_group.vsi_security_group.id]
  }

  vpc  = data.ibm_is_subnet.vsi_subnet.vpc
  zone = data.ibm_is_subnet.vsi_subnet.zone
  keys = [data.ibm_is_ssh_key.vsi_ssh_pub_key.id]
}