resource "azurerm_resource_group" "primeiro_resource_group" {
  location = var.location
  name     = "storage_account_resource_group"

  tags = local.common_tags
}

resource "azurerm_storage_account" "primeiro_storage_account" {
  account_replication_type = var.account_replication_type
  account_tier             = var.account_tier
  location                 = var.location
  name                     = "pedrostorageaccount"
  resource_group_name      = azurerm_resource_group.primeiro_resource_group.name #Dessa forma eu consigo referenciar um atributo de um resource

  tags = {}
}

resource "azurerm_storage_container" "primeiro_storage_container" {
  name                 = ""
  storage_account_name = azurerm_storage_account.primeiro_storage_account.name
}