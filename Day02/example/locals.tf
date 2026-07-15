locals {

  name_prefix = "${var.environment}-terraform"


  common_tags = merge(
    var.tags,
    {
      environment = var.environment
    }
  )


  app_name_upper = upper(var.app_config.name)


  joined_names = join(
    "-",
    var.app_names
  )

}