variable "test" {
  default = "manoj"
}

output "name_the_person" {
  value = upper(var.test)
}

variable "test1" {
  default = "manoj"
}

output "lookup_op" {
  value = var.test1
}