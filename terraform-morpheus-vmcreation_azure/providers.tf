provider "azurerm" {
  subscription_id = local.subscription_id
  features {}
  client_id     = var.client_id
  client_secret = var.client_secret
  tenant_id     = var.tenant_id
}