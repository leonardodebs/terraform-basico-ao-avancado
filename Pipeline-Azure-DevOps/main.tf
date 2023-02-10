terraform {

  required_version = ">=1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.35.0"
    }
	
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "leonardoremotestate"
    container_name       = "remote-state"
    key                  = "pipeline-azure-devops/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "leonardoremotestate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
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


data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "my-bucketleo2022"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}



