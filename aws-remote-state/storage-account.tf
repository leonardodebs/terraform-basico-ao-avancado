//primeiro bloco - resource group
resource "azurerm_resource_group" "first_resource_group" {
  name     = "remote-state"
  location = var.location

  tags = local.common_tags
}

//segundo bloco - storage account
resource "azurerm_storage_account" "first_storage_account2022" {
  name                     = "leonardoremotestate"
  resource_group_name      = azurerm_resource_group.first_resource_group.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type
  blob_properties {
    versioning_enabled = true
  }

  tags = local.common_tags
}

//terceiro bloco - storage container
resource "azurerm_storage_container" "first_container" {
  name                 = "remote-state"
  storage_account_name = azurerm_storage_account.first_storage_account2022.name
}




