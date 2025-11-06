# Create Security Group for EC2
resource "aws_security_group" "public_instance_tf" {
  name        = "public_instance_tf"
  description = "Allow SSH and HTTP access"
  vpc_id      = aws_vpc.Testing_VPC.id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public_instance_tf"
  }
}

# EC2 Instance in Public Subnet
resource "aws_instance" "public_instance_Terraform" {
  ami           = "ami-0c55b159cbfafe1f0"  # Example: Amazon Linux 2 (replace with one from your region)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet_terrafor.id
  vpc_security_group_ids = [aws_security_group.public_instance_tf.id]
  associate_public_ip_address = true  # IMPORTANT: allows internet access

  key_name = "your-keypair-name"  # Replace with your AWS key pair name

  tags = {
    Name = "public_ec2_instance"
  }
}
