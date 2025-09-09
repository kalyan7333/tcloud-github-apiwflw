terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.4.0"
    }
  }
  backend "remote" {
      organisation = "kalyanpath-demo"
      workspaces {
        name = "github-actions"
}

provider "aws" {
  region = "us-east-1"
}

