resource "null_resource" "name_of_the_dist" {
  for_each = var.dist_names
}
variable "dist_names" {
  default = ["adb","mncl","knr"]
}