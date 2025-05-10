provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./network.tf"
}

module "security_groups" {
  source = "./security_groups.tf"
}

module "ec2" {
  source = "./ec2.tf"
}

module "alb" {
  source = "./alb.tf"
}
