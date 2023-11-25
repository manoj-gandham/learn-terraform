data "aws_security_group" "selected" {
  id = var.security_group_id
}

variable "security_group_id" {}

output "security_group" {
  value = var.security_group_id
}