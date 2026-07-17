locals {
  name_prefix = "tws-${var.environment}"

  common_labels = merge(
    {
      project     = "terraweek"
      environment = var.environment
      managed_by  = "terraform"
    },
    var.extra_labels
  )
}