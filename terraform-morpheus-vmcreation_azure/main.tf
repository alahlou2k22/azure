#ressource groups pour les VM
resource "azurerm_resource_group" "morpheus" {
  name     = format("rg-bel-%s-%s-001", local.env_letter, local.application_name)
  location = local.location
}
