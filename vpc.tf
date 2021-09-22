provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA5G3MBGQF7GNPSVOO"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
