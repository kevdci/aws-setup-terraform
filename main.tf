provider "aws" {
  region = var.region
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
}

module "public_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  public_cidr       = var.public_subnet_cidr
  private_cidr      = var.private_subnet_cidr
  availability_zone = "us-east-1a"
}

module "private_subnet" {
  source            = "./modules/subnet"
  vpc_id            = module.vpc.vpc_id
  public_cidr       = var.public_subnet_cidr
  private_cidr      = var.private_subnet_cidr
  availability_zone = "us-east-1b"
}

module "nat_gateway" {
  source          = "./modules/nat_gateway"
  public_subnet_id = module.public_subnet.public_subnet_id
}

