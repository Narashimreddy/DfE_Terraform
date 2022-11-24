resource "azurerm_redis_cache" "redis" {
  name                = "${var.prefix}-as-fh-redis-${var.env}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.location}"
  capacity            = "${var.capacity}"
  family              = "${var.family}"
  sku_name            = "${var.tier}"
  enable_non_ssl_port = "${var.non_ssl_port}"
#  tags     = "${var.tags}"
}