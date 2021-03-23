provider "aws" {
  region     = "eu-west-2"
  access_key = var.access_key
  secret_key = var.secret_key
}


module "subnets" {
  source        = "./subnets"
  vpc_id        = module.vpc.vpc_id
#  route_id      = module.vpc.route_id
#  sec_group_id  = module.vpc.sec_group_id
 # internet_gate = module.vpc.internet_gate
}
module "vpc" {
  source = "./vpc"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "iam" {
  source = "./iam"
}

#module "rds" {
 # source = "./rds"
#}

module "eks" {
  source = "./eks"
  vpc_id = module.vpc.vpc_id
  subnet1_id = module.subnets.subnet1_id
  subnet2_id = module.subnets.subnet2_id
}

