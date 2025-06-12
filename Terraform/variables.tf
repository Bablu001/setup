variable "region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "instance_type" {
  default = "t2.large"
}

variable "allowed_ports" {
  default = [22, 80, 443, 645, 9000, 8080, 25]
}
