module "website_s3_bucket" {
  source      = "./modules/aws-s3-static-website-bucket"
  bucket_name = var.s3-bucket
  tags        = var.s3-tags
}