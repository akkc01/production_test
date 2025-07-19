terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
  backend "azurerm" {
    tenant_id            = "c3a55f95-a381-4915-a75d-0bfb1f99b220" # Can also be set via `ARM_TENANT_ID` environment variable.
    resource_group_name  = "rajaji"
    storage_account_name = "rajajistorageaccount"   # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "rajajicontainer"        # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }

}

provider "azurerm" {
  # Configuration options
  features {

  }

  subscription_id = var.subscription_id
}
