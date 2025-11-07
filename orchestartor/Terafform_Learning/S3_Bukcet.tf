# bucket should be unqiue name

resource "aws_s3_bucket" "my_s3_bucket1" {
  bucket = "my-tf-test-bucket-vamsi-2025-ap-southeast-2"

  tags = {
    Name        = "My_bucket1"
    Environment = "Stg"
  }
}