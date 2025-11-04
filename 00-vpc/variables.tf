variable "project" {
    default = "roboshop"
  
}

variable "environment" {
    default = "dev"
}

variable "vpc_tegs" {
  default = {
    purpose = "Roboshop-VPC"
    DontDelete = "ture"
  }
}
variable "cidr_block" {
  default = "10.0.0.0/16"
}

# vpc create ------------

variable "public_subnets_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]

}

# public subnet --------------------


variable "private_subnets_cidrs" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]

}

# private subnet --------------------


variable "database_subnets_cidrs" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]

}

# database subnet --------------------
