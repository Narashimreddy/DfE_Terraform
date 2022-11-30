output "resource_group_name" {
    value = azurerm_resource_group.azure_stack.name
    description = "Name of the resource group."
}

output "location" {
    value = azurerm_resource_group.azure_stack.location
    description = "Location id of the resource group"
}