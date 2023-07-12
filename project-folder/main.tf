#specify region
provider "aws" {
  # Configuration options
  region = "us-east-1"
}

#creating vpc using modules
module "vpc" {
  source = "../modules/vpc"
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  public_subnet_az1_cidr = var.public_subnet_az1_cidr
  public_subnet_az2_cidr = var.public_subnet_az2_cidr
  private_app_subnet_az1_cidr = var.private_app_subnet_az1_cidr
  private_app_subnet_az2_cidr = var.private_app_subnet_az2_cidr
  private_data_subnet_az1_cidr = var.private_data_subnet_az1_cidr
  private_data_subnet_az2_cidr = var.private_data_subnet_az2_cidr
}
