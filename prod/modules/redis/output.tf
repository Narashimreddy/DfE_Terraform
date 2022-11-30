output "redis" {
    value = azurerm_redis_cache.redis.name
    description = "redis name"
}