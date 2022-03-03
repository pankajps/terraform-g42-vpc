output "subnet_id" {
  description = "resorce id of aks subnet"
  value       = g42cloud_vpc_subnet.subnet.id
}

output "vpc_id" {
  description = "resorce id of psg subnet"
  value       = g42cloud_vpc.base_vpc.id
}