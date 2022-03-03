output "subnetid" {
  value       = g42cloud_vpc_subnet.subnet.id
}

output "vpcid" {
  value       = g42cloud_vpc.base_vpc.id
}