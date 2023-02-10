output "location-resourse-group-eua" {
  value = azurerm_resource_group.resource_group["EUA"].location

}

output "location-resourse-group-europa" {
  value = azurerm_resource_group.resource_group["Europa"].location

}

output "location-resourse-group-asia" {
  value = azurerm_resource_group.resource_group["Asia"].location

}