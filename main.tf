terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_ecr_repository" "ai_ecr_repo" {
  name = "ai-repo"
}