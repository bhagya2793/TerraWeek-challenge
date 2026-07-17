provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "TerraWeek-Day3"
      Environment = "Dev"
      Owner       = "Bhagyashri"
    }
  }
}
