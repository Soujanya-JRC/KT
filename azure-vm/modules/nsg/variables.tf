variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  description = "location"
}


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


variable "nic_id" {
  description = "Network Interface ID to associate with NSG"
  type        = string
}