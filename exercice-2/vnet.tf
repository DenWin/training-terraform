resource "azurerm_virtual_network" "vnet_training" {
  name                = "vnet-training"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.rg_training.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet_coding_dojo" {
  name                 = "subnet_coding_dojo"
  resource_group_name = azurerm_resource_group.rg_training.name
  virtual_network_name = azurerm_virtual_network.vnet_training.name
  address_prefix       = "10.0.1.0/24"
}
