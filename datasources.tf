data  "aws_s3_bucket" "s3-bucket" {
  bucket = "${var.org_name}-bucket-${terraform.workspace}"
}