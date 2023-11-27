resource "null_resource" "name_of_the_dist" {
  for_each = var.dist_names
  provisioner "local-exec" {
    command = "echo name of the dist is ${each.key - ${each.value}}"
  }
}
variable "dist_names" {
  default = {
    mncl = "abd"
    knr = "jgtl"
    kagaz = "rkp"
  }
}