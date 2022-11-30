output "postgresql" {
    value = azurerm_postgresql_server.postgresql.name
    description = "postgresql name"
}