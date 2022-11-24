output "apps_service_plan" {
  value = azurerm_service_plan.apps_plan.name
  description = "Name of the Apps Service Plan"
}

output "azure_stack_referral-api" {
  value = azurerm_windows_web_app.azure_stack_referral-api.name
  description = "Name of the Apps Service Plan"
}

output "azure_stack_referral-ui" {
  value = azurerm_windows_web_app.azure_stack_referral-ui.name
  description = "Name of the Apps Service Plan"
}

output "azure_stack_sd_api" {
  value = azurerm_windows_web_app.azure_stack_sd_api.name
  description = "Name of the Apps Service Plan"
}

output "azure_stack_user_service" {
  value = azurerm_windows_web_app.azure_stack_user_service.name
  description = "Name of the Apps Service Plan"
}
output "azure_stack_fx_web" {
  value = azurerm_windows_web_app.azure_stack_fx_web.name
  description = "Name of the Apps Service Plan"
}

output "azure_stack_fx_sd" {
  value = azurerm_windows_web_app.azure_stack_fx_sd.name
  description = "Name of the Apps Service Plan"
}