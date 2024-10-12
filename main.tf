terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
}

module "ecr" {
  source = "./ecr"
}

module "ecs" {
  source = "./ecs"
}

module "ecs_task" {
  source = "./ecs_task"
}