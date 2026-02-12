resource "aws_s3_bucket" "b" {
  bucket = "prod-env-omkar-s3-bucket"

  tags = {
    Name        = "prod-env-omkar-s3-bucket"
    Environment = "Production"
  }
}