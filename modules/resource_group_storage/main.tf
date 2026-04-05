terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "storage_account_final" {
  source  = "goldbergnik1993-cloud/resource-group-storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-terraform-task"
  location            = "West Europe"

  storage_account_name = "goldbergstorage2026test" 
}

output "final_storage_id" {
  value = module.storage_account_final.storage_account_id
}
