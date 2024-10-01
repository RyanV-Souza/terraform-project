resource "aws_s3_bucket" "s3-bucket" {
  bucket = "${var.org_name}-bucket-${terraform.workspace}"

  tags = {
    name = "RhyzzorBucket"
    Iac = true
    context = "${terraform.workspace}"
  }
}