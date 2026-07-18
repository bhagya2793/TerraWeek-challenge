provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "TerraWeek-Day06"
      Owner       = "Bhagyashri"
      Environment = terraform.workspace
    }
  }
}
