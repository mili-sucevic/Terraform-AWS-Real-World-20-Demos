resource "aws_s3_bucket" "mili-test-bucket" {
  bucket = var.bucket_name
  acl    = "public-read"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::${var.bucket_name}/*"
          ]
      }
  ]
}  
EOF

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags          = var.tags
  force_destroy = true
}

resource "aws_s3_bucket_object" "index" {
  bucket       = var.bucket_name
  acl          = "public-read"
  key          = "index.html"
  source       = "./index.html"
  content_type = "text/html"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  # etag = filemd5("path/to/file")
}