module "vpc-prod" {
  source = "/home/pjesus/jumia_devops/vpc-module"
  vpc_cidr = var.vpc_cidr
  shared_tags = var.shared_tags
  public_subnet_cidrs = var.public_subnet_cidrs
}