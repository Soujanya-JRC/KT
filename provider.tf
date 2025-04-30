terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.80.0"  # or any compatible version constraint
    }
  }
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
