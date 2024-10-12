terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  access_key = "enter_access_key_here"
  secret_key = "enter_secret_key_here"
}

resource "aws_ecr_repository" "ai_ecr_repo" {
  name = "ai-repo"
}