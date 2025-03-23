################ Variables ################
variable "application_name" {
  description = "Name of the application."
  type        = string
  default     = "example"
}

variable "environment" {
  description = "Name of the environment."
  type        = string
  default     = "dev"

  validation {
    condition     = length(var.environment) <= 8 && length(regexall("[^a-zA-Z0-9-]", var.environment)) == 0
    error_message = "The environment tag must be no more than 8 characters, and only contain letters, numbers, and hyphens."
  }
}

variable "hosted_zone_id" {
  description = "The hosted zone id for the domain."
  type        = string
  default     = "Z0000000000000000000"
}

variable "host_name" {
  description = "The host name for the application."
  type        = string
  default     = "example.com"
}
