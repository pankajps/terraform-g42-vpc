variable "vpc_name" {
  default = "tbx-vpc-test"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

variable "subnet_name" {
  default = "tbx-subenet-test"
}

variable "subnet_cidr" {
  default = "192.168.0.0/17"
}

variable "subnet_gateway" {
  default = "192.168.0.10"
}

variable "primary_dns" {
  default = "100.125.3.250"
}

variable "secondary_dns" {
  default = "100.125.2.14"
}

variable "nat_name" {
  default = "tbx-nat-test"
}

###################
variable "G42_ACCESS_KEY" {
  default = "ACCESS_KEY"
}

variable "G42_SECRET_KEY" {
  default = "SECRET_KEY"
}

variable "G42_ACCOUNT_NAME" {
  default = "ACCOUNT_NAME"
}