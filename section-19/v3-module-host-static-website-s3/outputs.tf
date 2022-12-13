# Output definitions

## S3 Bucket ARN
output "website_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = module.website_s3_bucket.s3_bucket_arn
}

# ## S3 Bucket Name
# output "website_bucket_name" {
#   description = "Name of the bucket"
#   value = module.website_s3_bucket.s3_bucket_name
# }

## S3 Bucket Domain
output "website_bucket_domain" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = module.website_s3_bucket.s3_bucket_domain_name
}

## S3 Bucket Endpoint
output "website_bucket_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = module.website_s3_bucket.s3_bucket_website_endpoint
}