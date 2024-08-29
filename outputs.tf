#output "s3_bucket_name" {
#  value = module.noc_services_s3_bucket.name
#}

output "ec2_instance_ids" {
  value = [for instance in module.ec2_instance : instance.id]
}
