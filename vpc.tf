provider "aws" {
  region     = "us-west-2"
  access_key = var.accesskey
  secret_key = var.secretkey
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
variable accesskey {
}
variable secretkey {
}
