
#resource_link = https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway.html
# igw_terraform will get from Custom_Vpc.tf file


resource "aws_internet_gateway" "igw_terraform" {
  vpc_id = aws_vpc.Testing_VPC.id

  tags = {
    Name = "Terfform_IGW_learning"
  }
}