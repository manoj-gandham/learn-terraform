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