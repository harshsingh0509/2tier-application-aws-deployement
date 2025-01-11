provider "aws" {
  region = var.region
}

module "network" {
  source = "./modules/network"
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  region = var.region
}

module "app" {
  source      = "./modules/app"
  key_name    = var.key_name
  subnet_id   = module.network.subnet_id
}

module "db" {
  source              = "./modules/db"
  subnet_id           = module.network.subnet_id
  secondary_subnet_id = module.network.secondary_subnet_id
}
