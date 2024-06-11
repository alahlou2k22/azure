resource "azurerm_windows_virtual_machine" "morpheus" {
  name                = "<%=instance.name%>"
  resource_group_name = azurerm_resource_group.morpheus.name
  location            = azurerm_resource_group.morpheus.location
  size                = "Standard_B4ms"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.morpheus.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = format("osdisk-bel-%s-%s", local.env_letter, local.application_name)
  }

  source_image_id = local.image_id
  tags = local.tags
}