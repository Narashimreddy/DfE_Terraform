# Resource Group configuration

env = "dev"
location = "westeurope"
prefix = "s181p01"

# Apps Service configuration

os_type = "Windows"
sku_name = "P1v2"
dotnet_version = "v6.0"

# redis configuration

redisVersion = "6"
capacity = "1"
family = "C"
tier = "Standard"
non_ssl_port = "false"

# postgresql configuration

pg_user  = "psqladmin"
pg_pwd = ""
psku_name   = "GP_Gen5_4"
pg_ver    = "11"
storage_mb = "5120"
bkup_ret = "7"

#tags

Parent_Business   = "Children’s Care"
Enviornment       = "Development"
Portfolio         = "Newly Onboarded"
Service_Line      = "Newly Onboarded"
Service           = "Children’s Care"
Product           = "Growing up Well"

