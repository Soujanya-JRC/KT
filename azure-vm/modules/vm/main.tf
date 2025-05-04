resource "azurerm_linux_virtual_machine" "VM" {
  name                = var.VM_Name
  resource_group_name = "devil"
  location            = var.location
  size                = var.VM_Size

#   network_interface_ids = [
#   azurerm_network_interface.example.id,
#   ]s


  network_interface_ids = var.NICs


  disable_password_authentication = false
  admin_username                  = var.VM_UserName
  admin_password                  = var.VM_Password

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.VM_Image_Publisher
    offer     = var.VM_Image_Offer
    sku       = var.VM_Image_SKU
    version   = var.VM_Image_Version
  }
}