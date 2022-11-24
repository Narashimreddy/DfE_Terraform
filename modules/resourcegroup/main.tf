resource "azurerm_resource_group" "azure_stack" {
  name     = "${var.prefix}-${var.env}-familyhubs"
  location = var.location
#  tags     = var.tags
}