variable "environment" {

  description = "Deployment environment"

  type = string

  default = "dev"

  validation {

    condition = contains(
      ["dev", "staging", "prod"],
      var.environment
    )

    error_message = "Environment must be dev, staging or prod."

  }

}


variable "instance_count" {

  description = "Number of instances"

  type = number

  default = 2

}


variable "enable_monitoring" {

  description = "Enable monitoring"

  type = bool

  default = true

}


variable "app_names" {

  type = list(string)

  default = [
    "web",
    "api",
    "database"
  ]

}


variable "tags" {

  type = map(string)

  default = {

    project = "TerraWeek"

    owner = "Bhagyashri"

  }

}


variable "regions" {

  type = set(string)

  default = [
    "eastus",
    "westus"
  ]

}


variable "app_config" {

  type = object({

    name = string

    port = number

  })

  default = {

    name = "terraform-app"

    port = 8080

  }

}


variable "availability" {

  type = tuple([
    string,
    number,
    bool
  ])

  default = [
    "high",
    3,
    true
  ]

}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "tws-web"
}

variable "external_port" {
  description = "External port to expose the container"
  type        = number
  default     = 8080
}

variable "image_tag" {
  description = "Nginx Docker image tag"
  type        = string
  default     = "latest"
}

variable "extra_labels" {
  description = "Additional labels for the Docker container"
  type        = map(string)
  default     = {}
}