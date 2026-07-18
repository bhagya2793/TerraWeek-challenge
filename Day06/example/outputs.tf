output "workspace" {
  value = terraform.workspace
}

output "instance_type" {
  value = local.instance_type
}

output "instance_id" {
  value = aws_instance.demo.id
}
