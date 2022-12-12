# Configure Terraform to set the required AzureRM provider
# version and features{} block.

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.19.0"
    }
  }
}

provider "azurerm" {
  features {}
  alias           = "canadacentral"
  subscription_id = "d95b8bcd-4e1d-4cc7-8048-92f24cdc0e3d"
}
