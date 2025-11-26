terraform {
  required_version = ">= 1.4.0"

  backend "s3" {
    bucket         = "shruti-terraform-state-bucket"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}
