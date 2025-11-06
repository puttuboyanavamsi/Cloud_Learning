resource "aws_route_table" "public_rt_tf" {
  vpc_id = aws_vpc.Testing_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_terraform.id
  }

  tags = {
    Name = "public_route_table_tf"
  }
}

# 3️⃣ Associate Route Table with Public Subnet
resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.public_subnet_terrafor.id
  route_table_id = aws_route_table.public_rt_tf.id
}