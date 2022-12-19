variable "bucket" {
  description = "The name of the bucket. If omitted, Terraform will assign a random, unique name. Must be lowercase and less than or equal to 63 characters in length. "
  type        = string

}

variable "region" {
  description = "The region where the bucket is created"
  type        = string

}
variable "enabled" {
  description = "Versioning for the bucket is enabled if set true"
  type        = bool
}
variable "object_lock_enabled" {
  description = "value"
  type        = bool
}
variable "object_ownership" {
  description = " Indicates whether this bucket has an Object Lock configuration enabled"
  type        = string
}
variable "block_public_acls" {
  description = " Say whether Amazon S3 should block public ACLs for this bucket. Defaults to false"
  type        = bool

}

variable "block_public_policy" {
  description = "Says whether Amazon S3 should block public bucket policies for this bucket. Defaults to false"
  type        = bool

}
variable "ignore_public_acls" {
  description = "Says whether Amazon S3 should ignore public ACLs for this bucket. Defaults to false."
  type        = bool

}
variable "restrict_public_buckets" {
  description = "Says whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to false"
  type        = bool

}
variable "user_id" {
  description = "Says whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to false"
  type        = bool

}
variable "owner_name" {
  description = "Says whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to false"
  type        = bool

}
