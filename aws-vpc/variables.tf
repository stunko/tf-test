

variable "scalr_aws_access_key" {
}

variable "scalr_aws_secret_key" {
}

variable "region" {
  description = "AWS region to use"
  default     = "us-east-1"
}

variable "cidr_block" {
    default = "10.0.0.0/16"
    description = "The CIDR block for the VPC"
}