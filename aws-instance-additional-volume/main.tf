provider "aws" {
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  skip_get_ec2_platforms      = true
  insecure                    = true
  region                      = var.region
  access_key                  = var.access_key
  secret_key                  = var.secret_key
  max_retries                 = 3


  endpoints {
    ec2 = var.endpoint
  }
}

resource "aws_instance" "default" {
  ami               = var.ami
  instance_type     = var.instance_type
  tags = {
    Name = format("i-%s", random_id.instance_id.hex)
  }
}

resource "aws_ebs_volume" "default" {
  availability_zone = format("%s%s", var.region, var.availability_zone)
  size              = 1
}

resource "random_id" "instance_id" {
  byte_length = 18
}
