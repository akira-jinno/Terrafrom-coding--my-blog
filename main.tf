provider "aws" {
  region = var.region
}

module "vpc" {
  source    = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
}

module "alb" {
  source     = "./modules/alb"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}
