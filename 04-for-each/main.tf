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
      "NAME" = "MANOJ"
    }
    SRINIDU ={
      "NAME" = "RAVI"
    }
    GURU = {
      "NAME" = "SRIKANTH"
    }
  }
}

resource "null_resource" "Collageis_names" {
  for_each = var.list_of_colleges
  provisioner "local-exec" {
    command = "echo ${each.value} from ${each.key}"
  }
}