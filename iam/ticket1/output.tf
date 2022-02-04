output bobs_arn {
  value = aws_iam_user.bob.arn
}

output bobs_unique_id {
  value = aws_iam_user.bob.unique_id
}