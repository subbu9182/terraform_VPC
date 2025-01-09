provider "aws" {
  region = "us-east-1"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"
}

variable "ami" {
  type = string
  default = "ami-0e2c8caa4b6378d8c"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

resource "aws_ec2_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type

}