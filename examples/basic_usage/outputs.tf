output "vpc_id" {
  value       = aws_vpc.the_vpc.id
  description = "The VPC ID"
}

output "private_subnet_ids" {
  value       = module.private_subnets.subnet_ids
  description = "The private subnet IDs"
}

output "public_subnet_ids" {
  value       = module.public_subnets.subnet_ids
  description = "The public subnet IDs"
}
