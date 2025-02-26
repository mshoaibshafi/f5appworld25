
resource "null_resource" "write_phase1_config" {
  triggers = {
    always_run = timestamp() # Forces execution on every apply
  }

  provisioner "local-exec" {
    command = <<EOT
      echo 'bigip_mgmt_address = "https://${aws_network_interface.mgmt_eni.private_ip}"' > ../phase-2/phase-1.tfvars
      echo 'external_selfip = "${aws_network_interface.external_eni.private_ip}/22"' >> ../phase-2/phase-1.tfvars
      echo 'internal_selfip = "${aws_network_interface.internal_eni.private_ip}/22"' >> ../phase-2/phase-1.tfvars
      echo 'bigip_password = "${random_password.admin_password.result}"' >> ../phase-2/phase-1.tfvars
      echo 'bigip_vip_ip = "${aws_network_interface.external_eni.private_ip_list[1]}"' >> ../phase-2/phase-1.tfvars

      echo 'bigip_mgmt_address = "https://${aws_network_interface.mgmt_eni.private_ip}"' > ../phase-3/phase-1.tfvars
      echo 'bigip_vip_ip = "${aws_network_interface.external_eni.private_ip_list[1]}"' >> ../phase-3/phase-1.tfvars
      echo 'bigip_password = "${random_password.admin_password.result}"' >> ../phase-3/phase-1.tfvars

    EOT
  }

  depends_on = [aws_instance.my_ec2]
}