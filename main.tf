terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.2"
    }
  }
  required_version = "~> 1.1.3"

  backend "azurerm" {
    resource_group_name  = "tfstates"
    storage_account_name = "flowatfstorageaccount"
    container_name       = "tfstate"
    key                  = "flowa.tfstate"
  }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "thomas-state-backend-demo" {
  name     = "git-hiub-actions-group"
  location = "West Europe"
}
