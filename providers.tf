terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.61.0"
    }
  }

backend "s3" {
    bucket = "terraform-tf-state-buck"
    key    = "terraform-state/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "dynamodb-terraform-state-lock"

  }
}

provider "aws" {
  region = "ap-south-1"
}


