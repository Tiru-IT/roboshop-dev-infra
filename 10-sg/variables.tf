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
    "frontend_alb",
    # backend load balancer
    "backend_alb",
    "open_vpn"
  ]
}


variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}
