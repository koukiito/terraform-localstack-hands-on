terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "ap-northeast-1"
  access_key                  = "sample"
  secret_key                  = "sample"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  s3_use_path_style = true
  endpoints {
    s3             = "http://localhost:4566"
  }
}
