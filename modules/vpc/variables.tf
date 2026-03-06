variable "name_prefix" {
  description = "Name prefix for resources"
  type        = string
  default     = "demo"
}

variable "environment" {
  description = "Environment name (prod/nonprod)"
  type        = string
}

variable "cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "az" {
  description = "Availability zone for subnets"
  type        = string
  default     = "ap-south-1a"
}

variable "ssh_cidr" {
  description = "CIDR allowed for SSH"
  type        = string
  default     = "0.0.0.0/0"
}

variable "http_cidr" {
  description = "CIDR allowed for HTTP"
  type        = string
  default     = "0.0.0.0/0"
}