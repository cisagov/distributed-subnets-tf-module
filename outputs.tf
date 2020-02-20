output "subnets" {
  value       = aws_subnet.the_subnets
  description = "A map with keys equal to the subnet CIDR blocks and values equal to the subnets."
}
