# data "azurerm_virtual_network" "network" {
#   name                = var.vnet_name
#   resource_group_name = var.network_rgp
# }

data "azurerm_subnet" "subnet" {
  name                 = local.snet_name
  virtual_network_name = local.vnet_name
  resource_group_name  = local.rg_network
}

resource "azurerm_network_interface" "morpheus" {
  name                = format("nic-bel-%s-%s-001", local.env_letter, local.application_name)
  location            = azurerm_resource_group.morpheus.location
  resource_group_name = azurerm_resource_group.morpheus.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "<%=customOptions.IP%>"
  }
}
