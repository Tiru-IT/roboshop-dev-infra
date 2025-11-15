variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "zone_id" {
  default = "Z0434065211S39GVO4UF0"
}

variable "domain_name" {
  default = "tirusatrapu.fun"
}

variable "components" {
  default = {
    catalogue = {
        rool_priority = 10
    }

    user = {
        rool_priority = 20
    }

    cart = {
        rool_priority = 30 
    }

    shipping = {
        rool_priority = 40

    }

    payment = {
        rool_priority = 50

    }
    frontend = {
        rool_priority = 10
    }
  }
}