resource "null_resource" "null" {
  count = 10
}


resource "null_resource" "animals" {
  count = length(var.names_of_the_animals)

  provisioner "local-exec" {
    command = "echo animal name is ${var.names_of_the_animals[count.index]}"
  }
}


variable "names_of_the_animals" {
  default = [ "lion", "deer", "cheeta" ]
}