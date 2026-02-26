variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "az" {
  description = "Availability Zone"
  type        = string
  default     = "ap-south-1a"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

# variable "ami_id" {
#   description = "AMI ID for EC2 instance"
#   type        = string
#  }