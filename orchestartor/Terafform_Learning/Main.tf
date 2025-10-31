#Terfform install packages by running this command (terfform init)

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "Testing" {
  ami           = "ami-0279a86684f669718"
  instance_type = "t3.micro"

  tags = {
    Name = "My_TestinInstance"
  }
}
