provider "azurerm" {
  subscription_id = "45a9fe96-aea6-4e7e-bc76-088b8a359469"
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_acc" {
  name                     = "examplestoracc"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# resource "azurerm_storage_container" "container" {
#   name                  = "content"
#   storage_account_id    = azurerm_storage_account.storage_acc.name
#   container_access_type = "private"
# }

# resource "azurerm_storage_blob" "example" {
#   name                   = "my-awesome-content.zip"
#   storage_account_name   = azurerm_storage_account.storage_acc.name
#   storage_container_name = azurerm_storage_container.container.name
#   type                   = "Block"
#   source                 = "some-local-file.zip"
# }
