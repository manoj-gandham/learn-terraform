variable "test" {
  default = "manoj"
}

output "name_the_person" {
  value = var.test
}