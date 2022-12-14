resource "azurerm_postgresql_server" "postgresql" {
  name                = "${var.prefix}-as-fh-postgresql"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  administrator_login          = "${var.pg_user}"
  administrator_login_password = "${var.pg_pwd}"

  sku_name   = "${var.psku_name}"
  version    = "${var.pg_ver}"
  storage_mb = "${var.storage_mb}"

  backup_retention_days        = "${var.bkup_ret}"
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true
  public_network_access_enabled    = true
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLSEnforcementDisabled"
   tags = {
    "Parent Business"   = "${var.Parent_Business}"
    "Enviornment"       = "${var.Enviornment}"
    "Portfolio"         = "${var.Portfolio}"
    "Service Line"      = "${var.Service_Line}"
    "Service"           = "${var.Service}"
	  "Product"           = "${var.Product}"
  }
}