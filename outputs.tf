# output "bucket_name" {
#   value = module.s3_bucket.bucket_name
# }

output "bucket_names" {
  value = [for m in module.s3_buckets : m.bucket_name]
}