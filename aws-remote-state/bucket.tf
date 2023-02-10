resource "aws_s3_bucket" "fist_bucket" {
  bucket = "curso-terraform-leonardo2022"

  versioning {
    enabled = true
  }

}

