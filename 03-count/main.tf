resource "null_resource" "hello" {
  count = 10
}

variable "names" {
  default = [ "manoj", "ram","rama" ]
}

resource "null_resource" "names" {
  count = length(var.names)

  provisioner "local-exec" {
    command = "echo ${var.names[count.index]}"
  }
}