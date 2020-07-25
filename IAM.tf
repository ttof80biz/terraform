resource "aws_iam_user" "lb" {
  name = "auto-user"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}