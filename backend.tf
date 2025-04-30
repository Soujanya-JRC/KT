terraform {
  backend "azurerm" {
    resource_group_name   = "vm-demo"
    storage_account_name = "ktvm"
    container_name = "ktvm-dev"
    key = "terraform.tfstate"

  }
}