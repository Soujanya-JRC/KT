output "Subnet_id" {
  value = azurerm_subnet.SubNet[*].id
}

output "nic_id" {
  value = azurerm_network_interface.nic[*].id
}

output "myPublicIp_id" {
  value = azurerm_public_ip.myPublicIp[*].id
}