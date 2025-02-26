resource "bigip_ltm_irule" "consumer-irule" {
  name  = "/Common/consumer-irule-v2.0.2"
  irule = file("irules/consumer-irule-v2.0.2.tcl")

}
