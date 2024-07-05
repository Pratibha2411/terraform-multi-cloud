output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vm_id" {
  value = azurerm_virtual_machine.main.id
}

output "public_ip" {
  value = azurerm_public_ip.main.ip_address
}

