provider "aws" {
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  skip_get_ec2_platforms      = true
  insecure                    = true
  region                      = var.region
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  max_retries                 = 3

  endpoints {
    ec2 = "http://172.21.0.3:6580"
  }
}

resource "aws_instance" "default" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name      = "cli-driven-test"
    timestamp = timestamp()
  }

  lifecycle {
    ignore_changes = ["tags"]
  }

  credit_specification {
    cpu_credits = "standard"
  }
}
