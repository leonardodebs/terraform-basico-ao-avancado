variable "cidr_vpc" {
  description = "cidr block para VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "cidr block para Sub-net"
  type        = string
}

variable "environment" {
  description = "Ambiente onde o recurso vai ser utilizado"
  type        = string
}