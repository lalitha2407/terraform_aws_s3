resource "aws_s3_bucket" "s3bucket" {
  bucket = var.bucket
  versioning {
    enabled = var.enabled
  }
  object_lock_enabled = var.object_lock_enabled

}
resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.s3bucket.id
  #   acl    = "private"
  access_control_policy {
    grant {
      grantee {
        id   = var.user_id
        type = "CanonicalUser"
      }
      permission = "READ"
    }

    owner {
      id = var.owner_name
    }
  }
}
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket = aws_s3_bucket.s3bucket.id

  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}