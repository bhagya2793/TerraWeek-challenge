provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "Dev"
      Project     = "TerraWeek-Day04"
      Owner       = "Bhagyashri"
    }
  }
}
