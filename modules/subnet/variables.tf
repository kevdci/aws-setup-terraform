variable "vpc_id" {
  description = "The VPC ID to associate with subnets"
  type        = string
}

variable "public_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "availability_zone" {
  description = "The availability zone for the subnet"
  type        = string
}