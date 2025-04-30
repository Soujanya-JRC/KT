resource "azurerm_resource_group" "RG" {
  name     = "vm1-demo"
  location = "East US"
}

resource "azurerm_virtual_network" "VNET" {
  name                = "virtual-network"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "SUBNET" {
  name                 = "Sub-network"
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.VNET.name
  address_prefixes     = ["10.0.1.0/24"] 
}

resource "azurerm_public_ip" "PIP" {
    name                = "public-ip"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  allocation_method   = "Dynamic"

  
}

resource "azurerm_network_interface" "NIN" {
  name                = "example-nic"
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.SUBNET.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.PIP.id
  }
}


resource "azurerm_linux_virtual_machine" "VM" {
  name                = "example-machine"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "admin@123"
  network_interface_ids = [
    azurerm_network_interface.NIN.id,
  ]
  disable_password_authentication = false


# admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("C:/Users/user/.ssh/id-ed25519.pub")
#   }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}