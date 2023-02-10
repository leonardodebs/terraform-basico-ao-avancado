terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.35.0"
    }

  }
}


provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "leonardodebs"
      managed-by = "terraform"
    }

  }
}

provider "azurerm" {
  features {}
}