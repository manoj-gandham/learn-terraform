variable "name_of_the_colleges" {
  default = {
    kphb = "JNTHU"
    bongloor = "AVNIT"
    mangapally = "SriIndu"
  }
}

resource "null_resource" "Collageis_names" {
  for_each = var.name_of_the_colleges
  provisioner "local-exec" {
    command = "echo ${each.value} from ${each.key}"
  }
}