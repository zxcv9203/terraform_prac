terraform {
  cloud {
	  organization = "yongctf"
	  workspaces {
		  name = "Example-Workspace"
	  }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b1d3b1941f23c7d5"
  instance_type = "t2.micro"
  subnet_id = "subnet-0b80d74049327dacc"
  tags = {
    Name = var.instance_name
  }
}