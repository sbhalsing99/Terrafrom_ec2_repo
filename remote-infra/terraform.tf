terraform {
  required_version = ">= 1.4.0"

  backend "s3" {
    bucket        = "shruti-terraform-state-bucket"
    key           = "ec2/terraform.tfstate"
    region        = "us-east-1"
    use_lockfile  = true
    encrypt       = true
  }
}

provider "aws" {
  region = var.region
}
