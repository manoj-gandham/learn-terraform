#variable "name_of_the_colleges" {
#  default = {
#    kphb = "JNTHU"
#    bongloor = "AVNIT"
#    mangapally = "SriIndu"
#  }
#}

variable "list_of_colleges" {
  default = {
    AVNIT = {
      NAME = "MANOJ"
      count = 10
    }
    SRINIDU ={
      NAME = "RAVI"
      count = 100
    }
    GURU = {
      NAME = "SRIKANTH"
      count = 200
    }
  }
}

resource "null_resource" "Collageis_names" {
  for_each = var.list_of_colleges
  provisioner "local-exec" {
    command = "echo ${each.value["NAME"]} from ${each.value["count"]}"
  }
}