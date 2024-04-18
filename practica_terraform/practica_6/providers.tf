terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
  required_version = "~>1.8.0"
}

provider "aws" {
  region = "us-east-1"
  alias = "virginia"
  
  default_tags {
    tags = {
        "env": "develop"
        "ownder": "Miguel Alberto Plazas Wadynski"
        "cloud": "AWS"
        "IAC": "Terraform"
        "IAC_Version": "1.7.4"
    }
  }

}