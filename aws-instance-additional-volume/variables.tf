variable "endpoint" {
  default = "http://localhost:5000"
  description = "Configuration block for customizing service endpoints"
}

variable "region" {
  description = "This is the AWS region"
  default = "us-west-1"
}

variable "availability_zone" {
  description = "The AZ where the EBS volume will exist."
  default = "a"
}

variable "instance_type" {
  description = "This is the AWS instance type"
  default = "m1.small"
}

variable "ami" {
  description = "This is the AWS default instance ami"
  default = "mock_instance_ami"
}

variable "access_key" {
  description = "This is the AWS access key"
  default = "mock_access_key"
}

variable "secret_key" {
  description = "This is the AWS secret key"
  default = "mock_secret_key"
}
