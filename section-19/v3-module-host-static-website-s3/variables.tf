# Input Vars
variable "region" {
  description = "Provides details about a specific AWS region."
  type        = string
}

## Create Vars for S3 Bucket Name
variable "s3-bucket" {
  description = "S3 Bucket name that we pass to S3 Custom Module"
  type        = string
}

## Create Vars for S3 Bucket Tags
variable "s3-tags" {
  description = "Tags to set on the bucket"
  type        = map(string)
}