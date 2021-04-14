resource "ibm_is_security_group" "vsi_security_group" {
  name = var.vsi_security_group
  vpc  = data.ibm_is_subnet.vsi_subnet.vpc
}

resource "ibm_is_security_group_rule" "ssh_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 22
    port_max = 22
  }
}

resource "ibm_is_security_group_rule" "ftp_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 21
    port_max = 21
  }
}

resource "ibm_is_security_group_rule" "http_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 80
    port_max = 80
  }
}

resource "ibm_is_security_group_rule" "https_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 443
    port_max = 443
  }
}

resource "ibm_is_security_group_rule" "sftp_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 2222
    port_max = 2222
  }
}

resource "ibm_is_security_group_rule" "ftp_data_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "inbound"
  remote    = "0.0.0.0/0"

  tcp {
    port_min = 32768
    port_max = 60999
  }
}

resource "ibm_is_security_group_rule" "outbound_security_group_rule" {
  group     = ibm_is_security_group.vsi_security_group.id
  direction = "outbound"
  remote    = "0.0.0.0/0"
}
