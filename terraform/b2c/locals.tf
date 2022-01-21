locals {
  location_map = {
    "UK South" = "uks"
    "UK West"  = "ukw"
  }

  short_location = local.location_map[var.location]
}
