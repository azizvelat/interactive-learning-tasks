output "key_name" {
  value = aws_key_pair.ilearning.key_name
}

output "key_id" {
  value = aws_key_pair.ilearning.key_pair_id
}

output "region" {
  value = "us-east-2"
}


output "keys_arn" {
  value = aws_key_pair.ilearning.arn
}