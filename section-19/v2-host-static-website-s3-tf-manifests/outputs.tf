output "s3_bucket_id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.mili-test-bucket.id
}

output "s3_bucket_arn" {
  description = "ARN of the S3 Bucket"
  value       = aws_s3_bucket.mili-test-bucket.arn
}

output "s3_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.mili-test-bucket.bucket_domain_name
}

output "s3_bucket_website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.mili-test-bucket.website_endpoint
}