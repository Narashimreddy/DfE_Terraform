resource "azurerm_resource_group" "azure_stack" {
  name     = "${var.prefix}-${var.env}-familyhubs"
  location = var.location
   tags = {
    "Parent Business"   = "${var.Parent_Business}"
    "Enviornment"       = "${var.Enviornment}"
    "Portfolio"         = "${var.Portfolio}"
    "Service Line"      = "${var.Service_Line}"
    "Service"           = "${var.Service}"
	  "Product"           = "${var.Product}"
  }
}