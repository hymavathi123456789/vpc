provider "aws" {
  region = var.region
}
resource "aws_vpc" "test" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"
  tags = {
    Name = "test"
  }
}