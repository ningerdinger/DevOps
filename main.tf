provider "azurerm" {
  subscription_id = "45a9fe96-aea6-4e7e-bc76-088b8a359469"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-test1"
  location = "West Europe"
}
