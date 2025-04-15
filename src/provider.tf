terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }

  backend "s3" {
     bucket         = "fsv-terraform"
     key            = "terraform.tfstate"
     region         = "us-east-1"
     dynamodb_table = "terraform-locks"
     encrypt        = true
   }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = var.tags
  }
}
