variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "location"
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

