resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${local.short_location}-${var.environment_prefix}"
  location = var.location
}
