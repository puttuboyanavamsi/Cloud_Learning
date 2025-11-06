resource "aws_vpc" "Testing_VPC" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "terfform_custom_vpc"
  }
}
