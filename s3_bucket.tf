resource "aws_s3_bucket" "bucket" {
  bucket = "gt-tf-bucket"

  tags = {
    Name        = "GT-bucket"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key    = "index.html"
  source = "./index.html"
  content_type = "text/html"
}

