resource "bigip_net_selfip" "external_selfip" {
  name = var.external_selfip_name
  ip   = var.external_selfip
  vlan = var.external_vlan_name
  port_lockdown = [
    var.port_lockdown
  ]

  depends_on = [bigip_net_vlan.external_vlan]
}

resource "bigip_net_selfip" "internal_selfip" {
  name = var.internal_selfip_name
  ip   = var.internal_selfip
  vlan = var.internal_vlan_name
  port_lockdown = [
    var.port_lockdown
  ]
  depends_on = [bigip_net_vlan.internal_vlan]
}

# Add default route 
resource "bigip_net_route" "default-route" {
  name    = "/Common/default-route"
  network = "0.0.0.0/0"
  gw      = cidrhost(cidrsubnet(var.internal_selfip, 0, 0), 1)

  depends_on = [bigip_net_selfip.internal_selfip]
}
