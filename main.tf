resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-localstack-bucket"
}

# Enable versioning for the bucket
resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure bucket to prevent public access
resource "aws_s3_bucket_public_access_block" "my_bucket_public_access_block" {
  bucket = aws_s3_bucket.my_bucket.id
}
