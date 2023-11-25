data "aws_security_group" "allow-all" {
  name = "allow all"
}

output "security_group" {
  value = data.aws_security_group.allow-all.id
}