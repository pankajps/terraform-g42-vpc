# Create a VPC
resource "g42cloud_vpc" "base_vpc" {
  name = var.vpc_name
  cidr = var.vpc_cidr
}
#Subnet
resource "g42cloud_vpc_subnet" "subnet" {
  vpc_id        = g42cloud_vpc.base_vpc.id
  name          = var.subnet_name
  cidr          = var.subnet_cidr
  gateway_ip    = var.subnet_gateway
  primary_dns   = var.primary_dns
  secondary_dns = var.secondary_dns
}
#EIP
resource "g42cloud_vpc_eip" "nat" {
  publicip {
    type = "5_bgp"
  }
  bandwidth {
    name        = "NAT"
    size        = 100
    share_type  = "PER"
    charge_mode = "traffic"
  }
}
#NAT
resource "g42cloud_nat_gateway" "nat" {
  name      = var.nat_name
  spec      = "1"
  vpc_id    = g42cloud_vpc.base_vpc.id
  subnet_id = g42cloud_vpc_subnet.subnet.id
}
#SNAT
resource "g42cloud_nat_snat_rule" "snat" {
  nat_gateway_id = g42cloud_nat_gateway.nat.id
  floating_ip_id = g42cloud_vpc_eip.nat.id
  subnet_id      = g42cloud_vpc_subnet.subnet.id
}
