resource "aws_subnet" "public_subnet_terrafor" {
  vpc_id     = aws_vpc.Testing_VPC.id
  cidr_block = "10.0.0.0/25"

  tags = {
    Name = "public_subnet_tst"
  }
}

resource "aws_subnet" "prvt_subnet_terrafor" {
  vpc_id     = aws_vpc.Testing_VPC.id
  cidr_block = "10.0.0.128/25"

  tags = {
    Name = "pvt_subnet_tst"
  }
}