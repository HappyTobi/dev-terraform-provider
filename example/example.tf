provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my-example" {
  name     = "my-example"
  location = "West Europe"
}