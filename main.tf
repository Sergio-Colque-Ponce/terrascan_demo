provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unsecure-bucket"
  acl    = "public-read" # ❌ Publicly accessible!
}