output "vpc_nonprod_id" {
  description = "Non-prod VPC id"
  value       = module.vpc_nonprod.vpc_id
}

output "vpc_prod_id" {
  description = "Prod VPC id"
  value       = module.vpc_prod.vpc_id
}

output "public_subnet_nonprod_id" {
  description = "Non-prod public subnet id"
  value       = module.vpc_nonprod.public_subnet_id
}

output "public_subnet_prod_id" {
  description = "Prod public subnet id"
  value       = module.vpc_prod.public_subnet_id
}

output "security_group_nonprod_id" {
  description = "Non-prod security group id"
  value       = module.vpc_nonprod.security_group_id
}

output "security_group_prod_id" {
  description = "Prod security group id"
  value       = module.vpc_prod.security_group_id
}