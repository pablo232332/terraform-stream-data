  provider "aws" {
    region = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
 backend "s3" {
    bucket = "terraform-data-stream-bucket"
    key = "prod/app/backend.tfstate"
    region ="eu-central-1"
    encrypt = true
  }
}
