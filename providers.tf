terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.69.0"
    }
  }

  backend "s3" {
    bucket  = "rhyzzor-terraform-state"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true

    profile = "rhyzzor"
  }
}

provider "aws" {
  profile = "rhyzzor"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

