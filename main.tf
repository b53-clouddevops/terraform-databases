module "docdb" {
  source                 = "./vendor/modules/docdb"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                    = var.ENV
}


module "redis" {
  source                 = "./vendor/modules/redis"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                    = var.ENV
}

module "mysql" {
  source                 = "./vendor/modules/mysql"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ENV                    = var.ENV
}

# output "redis" {
#     value = module.redis.redis 
# }