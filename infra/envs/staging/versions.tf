terraform {
  required_version = ">= 1.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.69"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state-staging"
    storage_account_name = "stgstatetf123456"
    container_name       = "tfstate"
    key                  = "staging.terraform.tfstate"
  }
}