resource "azurerm_service_plan" "apps_plan" {
  name                = "${var.prefix}-${var.env}-aps-familyhubs"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  os_type             = "${var.os_type}"
  sku_name            = "${var.sku_name}"
#   tags                = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_referral-api" {
  name                = "${var.prefix}-ca-fh-referral-api-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_referral-ui" {
  name                = "${var.prefix}-ca-fh-referral-ui-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_sd_api" {
  name                = "${var.prefix}-ca-fh-sd-api-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_user_service" {
  name                = "${var.prefix}-ca-fh-user-service-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_fx_web" {
  name                = "${var.prefix}-ca-fh-fx-web-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}

resource "azurerm_windows_web_app" "azure_stack_fx_sd" {
  name                = "${var.prefix}-ca-fh-sd-ui-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  service_plan_id = azurerm_service_plan.apps_plan.id
  
  site_config {
	application_stack {
	   dotnet_version = "${var.dotnet_version}"
	   }
  }
#   tags     = "${var.tags}"
}