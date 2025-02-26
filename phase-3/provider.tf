provider "bigip" {
  address  = var.bigip_mgmt_address
  username = var.bigip_username
  password = var.bigip_password
}


terraform {
  required_providers {
    bigip = {
      source  = "F5Networks/bigip"
      version = "1.22.7"
    }
  }
}