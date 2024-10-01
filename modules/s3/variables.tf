variable "s3_bucket_name" {
  type    = string
  description = "The name of the S3 bucket"
}

variable "s3_tags" {
  type    = map(string)
  default = {}
  description = "The tags to apply to the S3 bucket"
}