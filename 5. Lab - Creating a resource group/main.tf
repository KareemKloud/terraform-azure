# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = "623e7665-4a42-4979-afd5-e1c3cd3cb1b3"
  client_id       = "230411ec-45e9-4650-95b2-7675131e2d1a"
  client_secret   = "46b9bf20-2d1a-4df1-95b2-c0ad888c05f3"
  tenant_id       = "0301e687-9994-4e49-a2f2-b3c307fe186c"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp"{
  name="app-grp" 
  location="North Europe"
}
