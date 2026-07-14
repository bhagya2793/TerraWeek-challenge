terraform {
  # Requires modern Terraform CLI
  # Latest stable version at the time of writing: Terraform 1.15.x
  required_version = ">= 1.10"

  required_providers {

    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }

  }
}