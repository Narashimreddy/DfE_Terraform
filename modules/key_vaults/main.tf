data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "kv1" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
 # tags     = "${var.tags}"
}


resource "azurerm_key_vault" "kv2" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh-admin"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
#  tags     = "${var.tags}"
}


resource "azurerm_key_vault" "kv3" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh-general"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
#  tags     = "${var.tags}"
}



resource "azurerm_key_vault" "kv4" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh-referral"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
 # tags     = "${var.tags}"
}


resource "azurerm_key_vault" "kv5" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh-servdir"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
#  tags     = "${var.tags}"
}


resource "azurerm_key_vault" "kv6" {
  depends_on = [ var.resource_group_name]
  name                        = "${var.prefix}-kv-fh-userserv"
  resource_group_name         = "${var.resource_group_name}"
  location                    = "${var.location}"
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
#   tags     = "${var.tags}"
}
