
resource "bigip_net_vlan" "external_vlan" {
  name = var.external_vlan_name
  tag  = var.external_vlan_tag
  interfaces {
    vlanport = var.external_interface
    tagged   = false
  }
}

resource "bigip_net_vlan" "internal_vlan" {
  name = var.internal_vlan_name
  tag  = var.internal_vlan_tag
  interfaces {
    vlanport = var.internal_interface
    tagged   = false
  }
}