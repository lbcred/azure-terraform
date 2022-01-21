variable "environment_prefix" {
  type        = string
  description = "The environment to deploy this resource."
}

variable "location" {
  type        = string
  description = "Azure location to deploy resources into. Must be either 'uksouth' or 'ukwest'"

  validation {
    condition     = contains(["UK South", "UK West"], var.location)
    error_message = "Location must be 'UK South' or 'UK West'."
  }
}
