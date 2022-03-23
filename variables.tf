variable "vpc_name" {
  default = "tbx-vpc-module"
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

variable "eip_type" {
  default = "5_bgp"
}
variable "eip_size" {
  default = 100
}
variable "eip_share_type" {
  default = "PER"
}
variable "eip_charge_mode" {
  default = "traffic"
}