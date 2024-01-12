variable "test" {
  default = "manoj"
}

output "name_the_person" {
  value = upper(var.test)
}

variable "test1" {
  default = {
    name = "manoj"
    from = "mncl"
    vill = "tkp"
  }
}

output "lookup_op" {
  value = lookup(var.test1,"num","input missing")
}