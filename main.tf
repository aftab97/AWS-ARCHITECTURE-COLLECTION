terraform {
  backend "s3" {
    bucket         = "gh-aws-architecture-collection-remote-state"
    key            = "state/main.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "gh-aws-architecture-collection-remote-state-db"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

# Example resource: S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
