terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.91.0"
    }
  }

  backend "s3" {
    bucket = "save-terraform-states-rm356374"
    key    = "dev.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
