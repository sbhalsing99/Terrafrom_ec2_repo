backend "s3" {
    bucket         = "shruti-terraform-state-bucket"   # S3 bucket name
    key            = "ec2/terraform.tfstate"           # path inside bucket
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
