#Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.96"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name      = "storage_rg"
    storage_account_name     = "terraform1034"
    container_name           = "terraform"
    key                      = "terraform-Dev.tfstate"
  }
}
 
module "resourcegroup" {
  source              = "./modules/resourcegroup"
  location            = var.location
  env                 = "${var.env}"
  prefix              = "${var.prefix}"
  Parent_Business     = "${var.Parent_Business}"
  Enviornment         = "${var.Enviornment}"
  Portfolio           = "${var.Portfolio}"
  Service_Line        = "${var.Service_Line}"
  Service             = "${var.Service}"
	Product             = "${var.Product}"
}

module "appsservices" {
  source              = "./modules/apps_service"
  location            = module.resourcegroup.location
  resource_group_name = module.resourcegroup.resource_group_name
  env                 = "${var.env}"
  prefix              = "${var.prefix}"
  os_type             = "${var.os_type}"
  sku_name            = "${var.sku_name}" 
  dotnet_version      = "${var.dotnet_version}" 
  Parent_Business     = "${var.Parent_Business}"
  Enviornment         = "${var.Enviornment}"
  Portfolio           = "${var.Portfolio}"
  Service_Line        = "${var.Service_Line}"
  Service             = "${var.Service}"
	Product             = "${var.Product}"
}


module "redis" {
  source              = "./modules/redis"
  location            = module.resourcegroup.location
  resource_group_name = module.resourcegroup.resource_group_name
  env                 = "${var.env}"
  prefix              = "${var.prefix}"
  redisVersion        = "${var.redisVersion}"
  capacity            = "${var.capacity}"
  family              = "${var.family}"
  tier                = "${var.tier}"
  non_ssl_port        = "${var.non_ssl_port}"
  Parent_Business     = "${var.Parent_Business}"
  Enviornment         = "${var.Enviornment}"
  Portfolio           = "${var.Portfolio}"
  Service_Line        = "${var.Service_Line}"
  Service             = "${var.Service}"
	Product             = "${var.Product}"
}


module "postgresql" {
  source                       = "./modules/postgresql"
  location                     = module.resourcegroup.location
  resource_group_name          = module.resourcegroup.resource_group_name
  env                          = "${var.env}"
  prefix                       = "${var.prefix}"
  pg_user                      = "${var.pg_user}"
  pg_pwd                       = "${var.pg_pwd}"
  psku_name                    = "${var.psku_name}"
  pg_ver                       = "${var.pg_ver}"
  storage_mb                   = "${var.storage_mb}"
  bkup_ret                     = "${var.bkup_ret}"
  Parent_Business     = "${var.Parent_Business}"
  Enviornment         = "${var.Enviornment}"
  Portfolio           = "${var.Portfolio}"
  Service_Line        = "${var.Service_Line}"
  Service             = "${var.Service}"
	Product             = "${var.Product}"
}


module "key_vault" {
  source                       = "./modules/key_vaults"
  location                     = module.resourcegroup.location
  resource_group_name          = module.resourcegroup.resource_group_name
  env                          = "${var.env}"
  prefix                       = "${var.prefix}"
  Parent_Business     = "${var.Parent_Business}"
  Enviornment         = "${var.Enviornment}"
  Portfolio           = "${var.Portfolio}"
  Service_Line        = "${var.Service_Line}"
  Service             = "${var.Service}"
	Product             = "${var.Product}"
}
