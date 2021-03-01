variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "aws_region" {}

variable "vpc_cidr" {}

variable "vpc_name" {}

variable "IGW_name" {}

variable "key_name" {}

variable "public_subnet1_cidr" {}

variable "public_subnet2_cidr" {}

variable "public_subnet3_cidr" {}

variable "private_subnet_cidr" {}

variable "public_subnet1_name" {}

variable "public_subnet2_name" {}

variable "public_subnet3_name" {}

variable "private_subnet_name" {}

variable Main_Routing_Table {}

variable "azs" {
  description = "Run the EC2 Instance in these Availability Zones"
  type = "list"
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "environment" { default = "dev" }

variable "instance_type" {
  type = "map"
  default = {
    dev = "t2.micro"
	test = "t2.nano"
	prod = "t2.medium"
  }
}

