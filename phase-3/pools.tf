
resource "bigip_ltm_monitor" "monitor" {
  name   = "/Common/terraform_monitor"
  parent = "/Common/http"
}
resource "bigip_ltm_pool" "pool" {
  name                   = "/Common/terraform-blue-pool"
  load_balancing_mode    = "round-robin"
  minimum_active_members = 1
  monitors               = [bigip_ltm_monitor.monitor.name]
}

resource "bigip_ltm_pool_attachment" "ipv4_node_attach" {
  pool       = bigip_ltm_pool.pool.name
  node       = "${bigip_ltm_node.node-10-231-20-43.address}:80"
  depends_on = [bigip_ltm_node.node-10-231-20-43]
}

