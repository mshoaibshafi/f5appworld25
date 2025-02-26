variable "bigip_mgmt_address" {
  description = "F5 BigIP management IP"
  type        = string
}

variable "bigip_username" {
  description = "F5 BigIP username"
  type        = string
  default     = "admin"
}

variable "bigip_password" {
  description = "F5 BigIP password"
  type        = string
  sensitive   = true
}

variable "external_vlan_name" {
  description = "Name of the external VLAN"
  type        = string
  default     = "/Common/External"
}

variable "internal_vlan_name" {
  description = "Name of the internal VLAN"
  type        = string
  default     = "/Common/Internal"
}

variable "bigip_vip_ip" {
  description = "BigIP VIP IP"
  type        = string
}