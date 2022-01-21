variable "environment_prefix" {
  type        = string
  description = "The name of the environment to deploy the resource."
}

variable "resource_group_name" {
  type        = string
  description = "The of the resource group to deploy the resource."
}

variable "location" {
  type        = string
  description = "Azure location to deploy resources into. Must be either 'uksouth' or 'ukwest'"

  validation {
    condition     = contains(["UK South", "UK West"], var.location)
    error_message = "Location must be 'UK South' or 'UK West'."
  }
}
