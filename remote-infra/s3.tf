provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "shruti-tf-backend-bucket"
}
