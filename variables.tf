
variable "aws-profile" {
    type = string
    description = "AWS Profile Name"
}

variable "aws_region" {
    type = string
    description = "Region the DynamoDB table is deployed to"
    default = "us-east-1"
}
variable "ddb_table_name" {
    default = "auto-cleanup-whitelist-prod"
    description = "DynamoDB Table name used with the aws-autocleanup SLS stack"
}

variable "comment" {
  description = "Comment for the whitelist item"
  type = string
}

variable "expire_at" {
  description = "Expiration of the whitelist item, in days (ex: 99999999)"
  type = string
}

variable "owner_email" {
  description = "Email address of the whitelist item owner"
  type = string
}

variable "resource_id" {
  description = "Resource ID format"
  type = string
}