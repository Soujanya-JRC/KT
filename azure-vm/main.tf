resource "azurerm_resource_group" "RG" {
  name     = "devil"
  location = "East US"
}



module "Vnet"{
  source              = "./modules/networking"
  resource_group_name = azurerm_resource_group.RG.name
  location            = var.location
  VNet_Name           = var.VNet_Name
  Subnet_Name         = var.Subnet_Name
  Vnet_address        = var.Vnet_address
  subnet_address      = var.subnet_address
}

module "NSG" {
  depends_on                               = [module.Vnet]
  source                                   = "./modules/nsg"
  NSG_name                                 = var.NSG_name
  resource_group_name                      = azurerm_resource_group.RG.name
  location                                 = var.location
  nic_id                                   = module.Vnet.nic_id[0]
  Security_rule_name                       = var.Security_rule_name
  Security_rule_priority                   = var.Security_rule_priority
  Security_rule_direction                  = var.Security_rule_direction
  Security_rule_access                     = var.Security_rule_access
  Security_rule_protocol                   = var.Security_rule_protocol
  Security_rule_source_port_range          = var.Security_rule_source_port_range
  Security_rule_destination_port_range     = var.Security_rule_destination_port_range
  Security_rule_source_address_prefix      = var.Security_rule_source_address_prefix
  Security_rule_destination_address_prefix = var.Security_rule_destination_address_prefix
}

module "VM" {
  #depends_on = [module.ResourceGroup]
  source              = "./modules/vm"
  location            = var.location
  NICs                = [module.Vnet.nic_id]
  VM_Name             = var.VM_Name
  VM_Size             = var.VM_Size
  VM_UserName         = var.VM_UserName
  VM_Password         = var.VM_Password
  VM_Image_Publisher  = var.VM_Image_Publisher
  VM_Image_Offer      = var.VM_Image_Offer
  VM_Image_SKU        = var.VM_Image_SKU
  VM_Image_Version    = var.VM_Image_Version
}



