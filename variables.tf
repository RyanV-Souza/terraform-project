variable "state_bucket" {
  type        = string
  default     = "rhyzzor-terraform-state"
  description = "The name of the S3 bucket to store the state"
}