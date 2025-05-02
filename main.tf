# Create a resource group using the generated random name
resource "azurerm_resource_group" "example_resource_group" {
  location = "eastus"
  name     = "example_resource_group"
}