
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}


variable "allowed_http_cidr" {
  description = "CIDR block allowed for HTTP access"
  type        = list(string)
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the EC2 instance"
  type        = string
}