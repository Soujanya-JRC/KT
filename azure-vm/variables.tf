
variable "location" {
  type        = string
  description = "location"
}
variable "environment" {
  type        = string
  description = "environment"
}

variable "VNet_Name" {
  type        = string
  description = "Virtual Network Name"
}

variable "Subnet_Name" {
  type        = list(string)
  description = "Subnet_Name"
}

variable "Vnet_address" {
  type        = list(string)
  description = "Vnet_address"
}
variable "subnet_address" {
  type        = list(list(string))
  description = "subnet_address"
}

### Virtual machine

variable "VM_Name" {
  type        = string
  description = "VM_Name"
}
variable "VM_Size" {
  type        = string
  description = "VM_Size"
}
variable "VM_UserName" {
  type        = string
  description = "VM_UserName"
}
variable "VM_Password" {
  type        = string
  description = "VM_Password"
}
variable "VM_Image_Publisher" {
  type        = string
  description = "VM_Image_Publisher"
}
variable "VM_Image_Offer" {
  type        = string
  description = "VM_Image_Offer"
}
variable "VM_Image_SKU" {
  type        = string
  description = "VM_Image_SKU"
}
variable "VM_Image_Version" {
  type        = string
  description = "VM_Image_Version"
}

### NSG

variable "NSG_name" {
  type        = string
  description = "NSG_name"
}

variable "Security_rule_name" {
  type        = string
  description = "Security_rule_name"
}
variable "Security_rule_priority" {
  type        = string
  description = "Security_rule_priority"
}
variable "Security_rule_direction" {
  type        = string
  description = "Security_rule_direction"
}
variable "Security_rule_access" {
  type        = string
  description = "Security_rule_access"
}
variable "Security_rule_protocol" {
  type        = string
  description = "Security_rule_protocol"
}
variable "Security_rule_source_port_range" {
  type        = string
  description = "Security_rule_source_port_range"
}
variable "Security_rule_destination_port_range" {
  type        = string
  description = "Security_rule_destination_port_range"
}
variable "Security_rule_source_address_prefix" {
  type        = string
  description = "Security_rule_source_address_prefix"
}
variable "Security_rule_destination_address_prefix" {
  type        = string
  description = "Security_rule_destination_address_prefix"
}



### Create New User

variable "new_user_principal_name" {
  type        = string
  description = "new_user_principal_name"
}

variable "new_user_display_name" {
  type        = string
  description = "new_user_display_name"
}
variable "new_user_password" {
  type        = string
  description = "new_user_password"
}







