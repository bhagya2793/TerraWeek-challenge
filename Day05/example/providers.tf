provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project     = "TerraWeek-Day05"
      Owner       = "Bhagyashri"
      Environment = "Dev"
    }
  }
}
