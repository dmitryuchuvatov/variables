terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "example" {
  cidr_block = "172.0.0.0/16"
  tags = {
    Name = "example_vpc"
  }
}