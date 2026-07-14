# Day 1 Terraform Challenge
# No cloud account or credentials required.
# Generates a random pet name and creates a local greeting file.

resource "random_pet" "name" {
  length    = 2
  separator = "-"
}


resource "local_file" "greeting" {
  filename = "${path.module}/greeting.txt"

  content = <<-EOT
Hello from TerraWeek 2026! 🚀

Your infra pet name is: ${random_pet.name.id}

Welcome to Terraform Week Challenge.
EOT
}


output "pet_name" {
  description = "The randomly generated infrastructure pet name."
  value       = random_pet.name.id
}


output "file_path" {
  description = "Location where the greeting file was created."
  value       = local_file.greeting.filename
}