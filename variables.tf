################ Variables ################
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
