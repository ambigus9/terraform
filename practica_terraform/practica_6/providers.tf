terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.36.0"
    }
    
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  required_version = ">=1.8.0"
  }
}

provider "aws" {

  default_tags {
    tags = var.tags
  }

  region = "us-east-1"
  #alias  = "virginia"

}