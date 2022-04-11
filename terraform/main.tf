data "azurerm_resource_group" "jesusgroup" {
  name = "myResourceGroup"
}

resource "azurerm_virtual_network" "jesusvnet" {
  name = "jesus-vnet"
  address_space = [ "10.0.0.0/10" ]
  location = "australiaeast"
  resource_group_name = data.azurerm_resource_group.jesusgroup.name

  tags = {
    environment = "Terraform test"
  }

}



