


provider "aws" {
  region     = var.region
  access_key = var.scalr_aws_access_key
  secret_key = var.scalr_aws_secret_key
}

resource "aws_vpc" "default" {
  cidr_block = var.cidr_block
}