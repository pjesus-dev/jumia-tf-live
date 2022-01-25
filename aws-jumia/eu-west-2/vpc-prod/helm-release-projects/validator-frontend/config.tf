provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.73.0"
    }
  }
  backend "s3" {
    bucket = "jumia-devops-tfstates"
    key = "aws-jumia/eu-west-2/vpc-prod/helm-release-projects/validator-frontend"
    region = "eu-west-2"
  }
}
