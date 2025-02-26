variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "reg_key" {
  description = "F5 BIG-IP License Registration Key"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "security_group_ids" {
  description = "List of security groups to attach to the ENIs"
  type        = list(string)
}

variable "subnet_mgmt_id" {
  description = "Subnet ID for the management ENI"
  type        = string
}

variable "subnet_internal_id" {
  description = "Subnet ID for the internal ENI"
  type        = string
}

variable "subnet_external_id" {
  description = "Subnet ID for the external ENI"
  type        = string
}

variable "private_ip_mgmt" {
  description = "Optional private IP for the management ENI"
  type        = string
  default     = null
}

variable "private_ip_internal" {
  description = "Optional private IP for the internal ENI"
  type        = string
  default     = null
}

variable "private_ip_external" {
  description = "Optional private IP for the external ENI"
  type        = string
  default     = null
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "eni_mgmt_name" {
  description = "Name tag for the management ENI"
  type        = string
}

variable "eni_internal_name" {
  description = "Name tag for the internal ENI"
  type        = string
}

variable "eni_external_name" {
  description = "Name tag for the external ENI"
  type        = string
}

# Device Indexes for ENIs
variable "device_index_mgmt" {
  description = "Device index for Management ENI"
  type        = number
  default     = 0
}

variable "device_index_external" {
  description = "Device index for External ENI"
  type        = number
  default     = 1
}

variable "device_index_internal" {
  description = "Device index for Internal ENI"
  type        = number
  default     = 2
}

variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-west-2" # Default region (can be overridden)
}
