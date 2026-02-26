# module "s3_bucket" {
#   source      = "./modules/s3"   
#   bucket_name = var.bucket_name
# }

module "s3_buckets" {
  source = "./modules/s3"

  for_each    = toset(var.bucket_names)
  bucket_name = each.value
}

module "ec2_instance" {
  source         = "./modules/ec2"
  instance_type  = var.instance_type
   key_name      = aws_key_pair.this.key_name
}

