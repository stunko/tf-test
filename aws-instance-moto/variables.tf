variable "aws_access_key" {
  description = "AWS Access Key (mock)"
  default     = "mock_access_key"
}

variable "aws_secret_key" {
  description = "AWS Secret Key (mock)"
  default     = "mock_secret_key"
}

variable "region" {
  description = "AWS region to launch the VM into"
  default     = "us-east-1"
}

variable "instance_type" {
  default = "m4.large"
}

variable "subnet_id" {
  description = "VPC Subnet into which to launch your instance"
  default     = "subnet-3d82d101"
}

variable "ami" {
  default = "ami-0cfee17793b08a293"
}
