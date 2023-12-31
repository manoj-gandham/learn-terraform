# In terraform we can declare the variables as below

variable "name" {
  default = "manoj"
}

output "name" {
  value = var.name
}

# But in shell script we can declare bit easily
# name=${manoj}
# echo=$name

variable "city" {
  default = "hyd"
}

output "city" {
  value = "name of the city = ${var.city}"
}

variable "sample_list" {
  default = [
    100,
    true,
    "hello",
    10.2
  ]
}

output "sample_list" {
  value = var.sample_list[3]
}

variable "sample_map" {
  default = {
    number1 = 123
    boolean = true
    string = "hello"
    number2 = 12.4
  }
}

output "print_number2" {
  value = var.sample_map["number2"]
}
output "print_boolean" {
  value = var.sample_map["boolean"]
}

variable "env" {}

output "environmemt" {
  value = var.env
}

variable "auto_num1" {}

output "print_demo" {
  value = var.auto_num1
}