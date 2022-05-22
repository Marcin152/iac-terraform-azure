resource "azurerm_resource_group" "rg" {
  name     = var.name_rg
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.name_sa
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.replication_type
}

resource "azurerm_storage_container" "sc" {
  name                  = var.name.sc
  storage_account_name  = azurerm_storage_account.sa.name_sa
  container_access_type = var.container_acces_type
}

resource "azurerm_storage_blob" "sb" {
  name                   = var.name_sb
  storage_account_name   = azurerm_storage_account.sa.name_sa
  storage_container_name = azurerm_storage_container.sc.name_sc
  type                   = var.type
  source                 = var.source
}
