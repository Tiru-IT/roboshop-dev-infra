output "vpc_id" {
  value = module.vpc.vpc_id
}

# vpc crete ------------
 output "private_subnets_ids" {
   value = module.vpc.private_subnets_ids
 }
 
 output "public_subnets_ids" {
   value = module.vpc.public_subnets_ids

 }

 output "database_subnets_ids" {
   value = module.vpc.database_subnets_ids
 }