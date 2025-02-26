
# Assign the Seconday IP address created in phase 1 and use it here as VIP IP
# This IP is passed through "phase-1.tfvars" meta data file

resource "bigip_ltm_virtual_server" "virtual-server" {
  name                       = "/Common/virtual-server-http"
  description                = "virtual server http"
  destination                = var.bigip_vip_ip
  port                       = 80
  profiles                   = ["/Common/http_XForwardedFor", "/Common/oneconnect"]
  client_profiles            = ["/Common/tcp-wan-optimized"]
  server_profiles            = ["/Common/tcp-lan-optimized"]
  source_address_translation = "automap"
  pool = bigip_ltm_pool.pool.name
}
