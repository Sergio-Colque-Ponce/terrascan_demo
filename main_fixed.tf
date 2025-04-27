provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-secure-bucket"
  acl    = "private" # ✅ Private access only

  versioning {
    enabled = true # ✅ Habilitar versioning para recuperaciones
  }
}
