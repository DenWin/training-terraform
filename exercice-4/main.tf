provider "azurerm" {
  features {}
 }

# Snippet tf-azurerm_resource_group
resource "azurerm_resource_group" "rg_training" {
   name = "rg-${terraform.workspace}-training"
   location = var.location
}