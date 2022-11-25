resource "azurerm_redis_cache" "redis" {
  name                = "${var.prefix}-as-fh-redis"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  redis_version        = "${var.redisVersion}"
  capacity            = "${var.capacity}"
  family              = "${var.family}"
  sku_name            = "${var.tier}"
  enable_non_ssl_port = "${var.non_ssl_port}"
   tags = {
    "Parent Business"   = "${var.Parent_Business}"
    "Enviornment"       = "${var.Enviornment}"
    "Portfolio"         = "${var.Portfolio}"
    "Service Line"      = "${var.Service_Line}"
    "Service"           = "${var.Service}"
	  "Product"           = "${var.Product}"
  }
}