resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "shruti-terraform-state-bucket"   # MUST be globally unique
  force_destroy = false
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tf_state_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_encryption" "encryption" {
  bucket = aws_s3_bucket.tf_state_bucket.id

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
