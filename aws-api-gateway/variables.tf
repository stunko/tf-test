
variable "scalr_aws_access_key" {
  description = "AWS Access Key (sensitive)"
}

variable "scalr_aws_secret_key" {
  description = "AWS Secret Key (sensitive)"
}

variable "region" {
  description = "AWS region to launch the VM into"
  default     = "us-east-1"
}