terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  shared_config_files      = [ "/Users/nader/Workspace/Tools/aws-cli/.aws/config" ]
  shared_credentials_files = [ "/Users/nader/Workspace/Tools/aws-cli/.aws/credentials" ]
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d78d8707cd9c1be8"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
