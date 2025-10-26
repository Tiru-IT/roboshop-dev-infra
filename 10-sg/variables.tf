variable "sg_name" {
  default = [
    # database
    "mongodb", "redis", "mysql", "rabbitmq",
    # backend
    "catalogue", "user", "cart", "shipping", "payment",
    # frontend
    "frontend",
    # bastion
    "bastion",
    # frontend Load Balancer
    "frontend-LB"
  ]
}


variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}
