resource "local_file" "example" {

  filename = "${path.module}/example.txt"

  content = "Terraform Day 2 HCL Deep Dive"

}