#-----------------VPC Variables----------------

variable "vpc_cidr" {
  description = "Private CIDR to be used on VPC"
  type = string
  default = "10.0.0.0/16"
}

#------------------Public Subnets-------------------

variable "public_subnet_cidrs" {
  description = "List of each public subnet CIRD that you want to create"
  type = map
  default = {
    "10.0.0.0/24" = "eu-west-2a"
    "10.0.1.0/24" = "eu-west-2b"
    "10.0.2.0/24" = "eu-west-2c"
  }
}

#------------------Public Subnets-------------------

variable "shared_tags" {
  type = map
  description = "Common tags to all resources"
  default = {
    Owner = "paulo.jesus"
    Team = "sre"
    Project = "devops-challenge"
    Env = "prod"
  }
}