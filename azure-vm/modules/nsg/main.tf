# Create Network Security Group and rule
resource "azurerm_network_security_group" "NSG" {
    name                = var.NSG_name
    resource_group_name = "devil"
    location            = var.location

    security_rule {
        name                       = var.Security_rule_name
        priority                   = var.Security_rule_priority
        direction                  = var.Security_rule_direction
        access                     = var.Security_rule_access
        protocol                   = var.Security_rule_protocol
        source_port_range          = var.Security_rule_source_port_range
        destination_port_range     = var.Security_rule_destination_port_range
        source_address_prefix      = var.Security_rule_source_address_prefix
        destination_address_prefix = var.Security_rule_destination_address_prefix
    }
    
}

#Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "Nic_To_NSG" {
    network_interface_id      = var.nic_id
    network_security_group_id = azurerm_network_security_group.NSG.id
}