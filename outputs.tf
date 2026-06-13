output "resource_group_name" {
  description = "Resource Group name"
  value       = data.azurerm_resource_group.main.name
}

output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.main.id
}

output "vm_public_ip" {
  description = "VM Public IP address"
  value       = azurerm_public_ip.main.ip_address
}

output "vm_name" {
  description = "VM name"
  value       = azurerm_linux_virtual_machine.main.name
}
