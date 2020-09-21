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

variable "ddb_table_name" {
  description = "DynamoDB Table Name"
  type = string
}