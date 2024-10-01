variable "origin_id" {
  type    = string
  description = "The id of the S3 bucket"
}

variable "bucket_domain_name" {
  type    = string
  description = "The domain name of the S3 bucket"
}

variable "cdn_price_class" {
  type    = string
  description = "The price class of the CDN"
  default = "PriceClass_200"
}

variable "cdn_tags" {
  type    = map(string)
  default = {}
  description = "The tags to apply to the CDN"
}