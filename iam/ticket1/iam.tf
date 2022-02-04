resource "aws_iam_user" "bob" {
  name = "bob"
  tags = local.task_tags 
}


resource "aws_iam_group" "developers" {
  name = "sysusers"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"


  users = [
    aws_iam_user.bob.name
  ]

  group = aws_iam_group.developers.name
}

