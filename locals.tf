locals {
  iam_prefix = "power-user"
  stack      = "${var.program}-${var.env}-${var.app}"
}