#--------------VPC------------------------------

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnet1_cidr
  availability_zone       = var.AZ1
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Web-Subnet-AZ1"
  }
