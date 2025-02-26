# Management ENI
resource "aws_network_interface" "mgmt_eni" {
  subnet_id       = var.subnet_mgmt_id
  security_groups = var.security_group_ids
  private_ips     = var.private_ip_mgmt != null ? [var.private_ip_mgmt] : []
  description     = "Mgmt int for F5 BigIP instance"

  tags = {
    Name = var.eni_mgmt_name
  }
}

# External ENI
resource "aws_network_interface" "external_eni" {
  subnet_id       = var.subnet_external_id
  security_groups = var.security_group_ids
  private_ips     = var.private_ip_external != null ? [var.private_ip_external] : []
  description     = "Ext/Pub int for F5 BigIP instance"

  private_ips_count = 1 # Assign a Secondary IP for BigIP VIP

  tags = {
    Name = var.eni_external_name
  }
}

# Internal ENI
resource "aws_network_interface" "internal_eni" {
  subnet_id       = var.subnet_internal_id
  security_groups = var.security_group_ids
  private_ips     = var.private_ip_internal != null ? [var.private_ip_internal] : []
  description     = "Internal int for F5 BigIP instance"

  tags = {
    Name = var.eni_internal_name
  }
}
