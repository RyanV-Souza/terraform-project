resource "aws_s3_bucket" "s3-bucket" {
  bucket = "rhyzzor-bucket"

  tags = {
    name = "RhyzzorBucket"
    Iac = true
  }
}