terraform {
  backend "azurerm" {
      resource_group_name = "myResourceGroup"
      storage_account_name = "tfstorage1642"
      container_name = "tfcontainer1642"
      key = "terraform.state"
  }
}