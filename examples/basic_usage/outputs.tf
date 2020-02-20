output "vpc" {
  value       = aws_vpc.the_vpc
  description = "The VPC."
}

output "private_subnets" {
  value       = module.private_subnets.subnets
  description = "The private subnets."
}

output "public_subnets" {
  value       = module.public_subnets.subnets
  description = "The public subnets."
}
