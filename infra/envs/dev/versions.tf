terraform {
  required_version = ">= 1.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.69"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tfstate-resource-group"
    storage_account_name = "tfsstaten907t6"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}