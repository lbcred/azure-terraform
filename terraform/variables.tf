variable "environment_prefix" {
  type        = string
  description = "The name of the environment to deploy the resource."
}

variable "client_secret" {
  typ         = string
  description = "The client secret used to authenticate to Azure AD"
}
