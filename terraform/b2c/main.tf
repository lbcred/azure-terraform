resource "azurerm_aadb2c_directory" "example" {
  country_code            = "UK"
  data_residency_location = "United Kingdom"
  display_name            = "b2c-${local.short_location}-${var.environment_prefix}"
  domain_name             = "b2c-${local.short_location}-${var.environment_prefix}.onmicrosoft.com"
  resource_group_name     = data.azurerm_resource_group.resource_group.name
  sku_name                = "PremiumP1"
}
