# Regular Nodes creation 

resource "bigip_ltm_node" "node-10-231-21-175" {
  name             = "/Common/10.231.21.175"
  address          = "10.231.21.175"
  connection_limit = "0"
  dynamic_ratio    = "1"
  monitor          = "/Common/icmp"
  description      = "10.231.21.175"
  rate_limit       = "disabled"

  fqdn {
    address_family = "ipv4"
    interval       = "3600"
  }
}

# backend Node
resource "bigip_ltm_node" "node-10-231-20-43" {
  name             = "/Common/10.231.20.43"
  address          = "10.231.20.43"
  connection_limit = "0"
  dynamic_ratio    = "1"
  monitor          = "/Common/icmp"
  description      = "10.231.20.43"
  rate_limit       = "disabled"

  fqdn {
    address_family = "ipv4"
    interval       = "3600"
  }
}
