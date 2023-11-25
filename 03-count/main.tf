resource "null_resource" "null" {
  count = 10
}

variable "cities" {
  default = [ "hyd", "bang", "kolka"]
}

resource "null_resource" "names_cities" {
  count = length(var.cities)
  provisioner "local-exec" {
    command = "echo cities name = ${var.cities[count.index]}"
  }
}