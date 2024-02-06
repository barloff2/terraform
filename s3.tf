resource "aws_s3_bucket" "devsecops_bucket" {
  bucket = local.s3_sufix
}