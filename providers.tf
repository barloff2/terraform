terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.27.0, <5.31.0, !=5.30.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
  required_version = "~>1.6.0"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = var.tags
  }
}
