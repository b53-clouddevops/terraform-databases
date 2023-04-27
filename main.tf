module "docdb" {
  source                 = "./vendor/modules/docdb"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                    = var.ENV
}


module "redis" {
  source                    = "./vendor/modules/redis"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                       = var.ENV
}

module "mysql" {
  source                    = "./vendor/modules/mysql"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                       = var.ENV
  MYSQL_RDS_PORT            = var.MYSQL_RDS_PORT
  MYSQL_RDS_STORAGE         = var.MYSQL_RDS_STORAGE
  MYSQL_RDS_ENGINE_VERSION  = var.MYSQL_RDS_ENGINE_VERSION


}

# output "redis" {
#     value = module.redis.redis 
# }
