terraform {

  required_version = ">=1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }
  backend "s3" {
    bucket = "my-bucketleo2022"
    key    = "aws-vm-modulo-local/terraform.tfstate"
    region = "us-east-1"
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



module "network" {
  source      = "./network"
  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "desenvolvimento"
}