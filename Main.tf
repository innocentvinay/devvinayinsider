resource "azurerm_subnet" "Sabu1" {
  for_each             = var.subnet1
  name                 = each.value.name
  resource_group_name  = "vnet-rg"
  virtual_network_name = "Namo-vnet"
  address_prefixes     = ["10.0.2.0/24"]
}