output "vpc_id" {
  value       = aws_vpc.the_vpc.id
  description = "The VPC ID"
}

output "subnet_ids" {
  value       = aws_subnet.the_subnets[*].id
  description = "The subnet IDs"
}
