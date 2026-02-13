variable "aws_region" {
  default = "ap-south-1"
}

# variable "bucket_name" {
#   description = "S3 bucket name"
#   type        = string
# }

variable "bucket_names" {
  type = list(string)
}