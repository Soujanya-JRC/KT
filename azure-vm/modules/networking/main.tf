resource "azurerm_virtual_network" "Vnet" {
  name                = var.VNet_Name
  address_space       = var.Vnet_address
  resource_group_name = var.resource_group_name
  location            = var.location
}

resource "azurerm_subnet" "SubNet" {
  count                = length(var.Subnet_Name)
  name                 = var.Subnet_Name[count.index]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.Vnet.name
  address_prefixes     = var.subnet_address[count.index]
}

resource "azurerm_network_interface" "nic" {
  count               = length(azurerm_subnet.SubNet.*.id)
  name                = "tf-nic_${count.index}"
  resource_group_name = var.resource_group_name
  location            = var.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.SubNet[count.index].id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myPublicIp[count.index].id
  }
}

# Create public IPs
resource "azurerm_public_ip" "myPublicIp" {
  count               = length(azurerm_subnet.SubNet.*.id)
  name                = "tf-Public-Ip_${count.index}"
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Dynamic"
}



