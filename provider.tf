terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.4.0"
    }
}
cloud { 
    organization = "kalyan-demo-org" 
    workspaces { 
      name = "tcloud-github-apiwflow" 
    } 
  } 
}
provider "aws" {
  region = "us-east-1"
}

