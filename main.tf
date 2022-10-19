provider "aws" {
  region  = "eu-east-3"
  version = "~> 1.6"
}

resource "aws_vpc" "dev" {
  cidr_block       = "var.cidr_block"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"

  tags = {
    Name = "dev"
  }
}