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

variable "external_interface" {
  description = "Interface for the external VLAN"
  type        = string
}

variable "internal_interface" {
  description = "Interface for the internal VLAN"
  type        = string
}

variable "external_vlan_tag" {
  description = "VLAN tag for the external VLAN"
  type        = number
}

variable "internal_vlan_tag" {
  description = "VLAN tag for the internal VLAN"
  type        = number
}

variable "external_selfip_name" {
  description = "external interface self ip name"
  type        = string

}

variable "external_selfip" {
  description = "external interface self ip"
  type        = string

}

variable "bigip_vip_ip" {
  description = "BigIP VIP IP"
  type        = string
}

variable "port_lockdown" {
  description = "self ip port lock down for access"
  type        = string
}


variable "internal_selfip_name" {
  description = "internal interface self ip name"
  type        = string

}

variable "internal_selfip" {
  description = "internal interface self ip"
  type        = string

}
