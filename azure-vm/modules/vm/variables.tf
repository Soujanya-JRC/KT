
variable "location" {
  type        = string
  description = "location"
}
variable "NICs" {
  type        = list(string)
  description = "Network Interface Ids"
}
###
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


