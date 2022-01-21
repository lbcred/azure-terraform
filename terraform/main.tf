# Configure the Azure Active Directory Provider
provider "azuread" {
  tenant_id = "28b45348-a97d-4eae-a79c-b3945018437a"
}

# Retrieve domain information
data "azuread_domains" "default" {
  only_initial = true
}

resource "azuread_application" "example" {
  display_name = "ExampleApp"
  sign_in_audience = "AzureADMultipleOrgs"

  web {
    homepage_url  = "https://app.${replace(var.environment_prefix, "-", "")}.net"
    redirect_uris = ["https://app.${replace(var.environment_prefix, "-", "")}.net/account"]

    implicit_grant {
      access_token_issuance_enabled = true
      id_token_issuance_enabled     = true
    }
  }
}
