provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Project     = "TerraWeek-Day05"
      Owner       = "Bhagyashri"
      Environment = "Dev"
    }
  }
}
