terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" # provider Version
      version = "5.31.0" # AWS provider version, not terrform version

    }
  }

  backend "s3" {
    bucket = "awsjoindevops-state-dev"
    key    = "user"
    region = "us-east-1"
    dynamodb_table = "awsjoindevops-locking-dev"
    
  }
}

provider "aws" {
   region     = "us-east-1"
}



