output "subnet_ids" {
  value       = aws_subnet.the_subnets[*].id
  description = "The subnet IDs"
}
