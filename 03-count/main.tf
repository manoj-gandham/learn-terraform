resource "null_resource" "null" {
  count = 10
}


resource "null_resource" "names_of_the_vegs" {
  count = length(var.names_of_the_vegs)

  provisioner "local-exec" {
    command = "echo name of the vegetable is ${var.names_of_the_vegs[count.index]}"
  }
}

variable "names_of_the_vegs" {
  default = ["chillies", "brinjal","coloflower" ]
}