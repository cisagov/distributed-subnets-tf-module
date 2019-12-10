output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The VPC ID"
}

output "subnet_ids" {
  value       = module.vpc.subnet_ids
  description = "The subnet IDs"
}
