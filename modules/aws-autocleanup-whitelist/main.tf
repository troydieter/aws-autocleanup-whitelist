data "aws_dynamodb_table" "awsautocleanup_whitelist_table" {
    name = var.ddb_table_name
}

resource "aws_dynamodb_table_item" "whitelist_item" {
  table_name = data.aws_dynamodb_table.awsautocleanup_whitelist_table.id
  hash_key   = data.aws_dynamodb_table.awsautocleanup_whitelist_table.hash_key
  range_key  = data.aws_dynamodb_table.awsautocleanup_whitelist_table.range_key

  item = <<ITEM
{
  "resource_id": {"S": "${var.resource_id}"},
  "comment": {"S": "${var.comment}"},
  "expire_at": {"N": "${var.expire_at}"},
  "owner_email": {"S": "${var.owner_email}"}
}
ITEM
}

output "awsautocleanup_whitelist_table-name" {
    value = data.aws_dynamodb_table.awsautocleanup_whitelist_table.id
}

output "awsautocleanup_whitelist_table-hash_key" {
    value = data.aws_dynamodb_table.awsautocleanup_whitelist_table.hash_key
}

output "awsautocleanup_whitelist_table-range_key" {
    value = data.aws_dynamodb_table.awsautocleanup_whitelist_table.range_key
}