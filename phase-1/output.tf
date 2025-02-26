output "admin_password" {
  value     = random_password.admin_password.result
  sensitive = true # Prevents Terraform from displaying it in CLI unless explicitly requested
}

output "management_eni_ip" {
  description = "Private IP of the Management ENI"
  value       = aws_network_interface.mgmt_eni.private_ip
}

output "external_eni_ip" {
  description = "Private IP of the External ENI"
  value       = aws_network_interface.external_eni.private_ip
}

output "external_eni_ip_count" {
  description = "Count of Private IP of the External ENI"
  value       = aws_network_interface.external_eni.private_ips_count
}

output "external_eni_ip_list" {
  description = "List of Private IP of the External ENI"
  value       = aws_network_interface.external_eni.private_ip_list
}

output "bigip_vip_ip" {
  description = "BigIP VIP IP as Secondary IP on External ENI"
  value       = aws_network_interface.external_eni.private_ip_list[1]
}


output "internal_eni_ip" {
  description = "Private IP of the Internal ENI"
  value       = aws_network_interface.internal_eni.private_ip
}
