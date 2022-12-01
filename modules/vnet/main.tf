# Create Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-fh-vn-01"
  address_space       = "${var.vnet_address_space}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
     tags = {
        "Parent Business"   = "${var.Parent_Business}"
        "Enviornment"       = "${var.Enviornment}"
        "Portfolio"         = "${var.Portfolio}"
        "Service Line"      = "${var.Service_Line}"
        "Service"           = "${var.Service}"
        "Product"           = "${var.Product}"
  }
}

# Resource-1: Create Postgresql Subnet
resource "azurerm_subnet" "ApplicationGateway" {
  name                 = "${var.prefix}-ag-sn"
  address_space        = "${var.ag_address_space}"
  resource_group_name  = "${var.resource_group_name}"
  location             = "${var.location}"
     tags = {
        "Parent Business"   = "${var.Parent_Business}"
        "Enviornment"       = "${var.Enviornment}"
        "Portfolio"         = "${var.Portfolio}"
        "Service Line"      = "${var.Service_Line}"
        "Service"           = "${var.Service}"
        "Product"           = "${var.Product}"
  }
}

# Resource-1: Create Redis Subnet
resource "azurerm_subnet" "redis" {
  name                 = "${var.prefix}-redis-sn"
  address_space        = "${var.redis_address_space}"
  resource_group_name  = "${var.resource_group_name}"
  location             = "${var.location}"
     tags = {
        "Parent Business"   = "${var.Parent_Business}"
        "Enviornment"       = "${var.Enviornment}"
        "Portfolio"         = "${var.Portfolio}"
        "Service Line"      = "${var.Service_Line}"
        "Service"           = "${var.Service}"
        "Product"           = "${var.Product}"
  }
}

# Resource-1: Create Postgresql Subnet
resource "azurerm_subnet" "pgsql" {
  name                 = "${var.prefix}-pgsql-sn"
  address_space        = "${var.pgsql_address_space}"
  resource_group_name  = "${var.resource_group_name}"
  location             = "${var.location}"
     tags = {
        "Parent Business"   = "${var.Parent_Business}"
        "Enviornment"       = "${var.Enviornment}"
        "Portfolio"         = "${var.Portfolio}"
        "Service Line"      = "${var.Service_Line}"
        "Service"           = "${var.Service}"
        "Product"           = "${var.Product}"
  }
}

# Resource-1: Create Private Endpoint Subnet
resource "azurerm_subnet" "pvtendpoint" {
  name                 = "${var.prefix}-pvtendpt-sn"
  address_space        = "${var.pvtendpt_address_space}"
  resource_group_name  = "${var.resource_group_name}"
  location             = "${var.location}"
     tags = {
        "Parent Business"   = "${var.Parent_Business}"
        "Enviornment"       = "${var.Enviornment}"
        "Portfolio"         = "${var.Portfolio}"
        "Service Line"      = "${var.Service_Line}"
        "Service"           = "${var.Service}"
        "Product"           = "${var.Product}"
  }
}
