terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"    # Min allowed ver is 5.0.0. Max allowed ver is <6.0.0 (but allows updates within the 5.x series).
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-05b10e08d247fb927"
  instance_type = "t3.micro"
}