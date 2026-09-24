resource "aws_internet_gateway" "public_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "pub_igw"
  }
}