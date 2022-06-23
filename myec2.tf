terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "my-instance" {
   ami          = "ami-0729e439b6769d6ab"
  instance_type = var.instance_type

}

variable "instance_type" {
  default = "t2.nano"
}
