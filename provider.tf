terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.68.0"
    }
  }

#  backend "s3" {
#    bucket = "mytfbuck"
#    key    = "terraform-backend/terraformsbd.tfstate"
#    region = "us-east-1"
#  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "terraform-admin"
}