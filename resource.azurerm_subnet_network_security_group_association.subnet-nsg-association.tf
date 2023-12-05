resource "azurerm_subnet_network_security_group_association" "subnet-nsg-association" {
  subnet_id                 = azurerm_subnet.project-subnet.id
  network_security_group_id = azurerm_network_security_group.project-nsg.id
}