terraform {
  backend "azurerm" {
    resource_group_name   = "devil"
    storage_account_name = "devilstorage"
    container_name = "conta"
    key = "refresh"

  }
}