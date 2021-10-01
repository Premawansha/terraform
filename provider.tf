provider "aws" {
  region = "us-west-2"

}
resource "aws_vpc" "my_tf_vpc" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name     = "my_tf_vpc"
    Location = "Srilanka"
  }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.my_tf_vpc.id
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
