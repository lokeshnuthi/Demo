terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
// Use the reusable VPC module to create non-prod and prod VPCs

module "vpc_nonprod" {
  source               = "../modules/vpc"
  name_prefix          = "demo"
  environment          = "nonprod"
  cidr_block           = "10.0.0.0/16"
  public_subnet_cidr   = "10.0.1.0/24"
  az                   = var.az
  ssh_cidr             = "0.0.0.0/0"
  http_cidr            = "0.0.0.0/0"
}

module "vpc_prod" {
  source               = "../modules/vpc"
  name_prefix          = "demo"
  environment          = "prod"
  cidr_block           = "10.1.0.0/16"
  public_subnet_cidr   = "10.1.1.0/24"
  az                   = var.az
  ssh_cidr             = "10.0.0.0/8"
  http_cidr            = "0.0.0.0/0"
}