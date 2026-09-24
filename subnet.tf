resource "aws_subnet" "public_sub" {
  vpc_id     = aws_vpc.my_vpc.id
  availability_zone       = "us-east-1a"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "pub-subnet"
  }
}

resource "aws_subnet" "public_sub2" {
  vpc_id     = aws_vpc.my_vpc.id
  availability_zone       = "us-east-1b"
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "pub_subnet2"
  }
}