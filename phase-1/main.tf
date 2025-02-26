resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }

  network_interface {
    network_interface_id = aws_network_interface.mgmt_eni.id
    device_index         = var.device_index_mgmt
  }

  network_interface {
    network_interface_id = aws_network_interface.external_eni.id
    device_index         = var.device_index_external
  }

  network_interface {
    network_interface_id = aws_network_interface.internal_eni.id
    device_index         = var.device_index_internal
  }

  user_data = <<-EOT
    #!/bin/bash
    
    sleep 300  # Delay to ensure system is fully up

    tmsh modify auth user admin password "${random_password.admin_password.result}"
    tmsh save sys config
    sleep 60

    # Install BIG-IP License using the provided Registration Key
    tmsh install sys license registration-key "${var.reg_key}"
    sleep 90

    # Resource Provisioning
    tmsh modify sys provision ltm level nominal
    tmsh save sys config
    sleep 120

    # Disable Setup Utility
    tmsh modify sys global-settings gui-setup disabled
    tmsh save sys config    
    
    # Restart HTTPD Service
    tmsh restart sys service httpd

  EOT
}

resource "random_password" "admin_password" {
  length           = 16
  lower            = true
  numeric          = true
  special          = true
  upper            = true
  override_special = "$"
}

