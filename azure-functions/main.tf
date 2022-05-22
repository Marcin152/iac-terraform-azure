resource "azurerm_resource_group" "rs" {
  name     = var.name_r
  location = var.location
}

resource "azurerm_storage_account" "sa" {
  name                     = var.name_sa
  resource_group_name      = azurerm_resource_group.rs.name
  location                 = azurerm_resource_group.rs.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_service_plan" "sp" {
  name                = var.name_sp
  location            = azurerm_resource_group.rs.location
  resource_group_name = azurerm_resource_group.rs.name
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_function_app" "lfa" {
  name                = var.name_lfa
  location            = azurerm_resource_group.rs.location
  resource_group_name = azurerm_resource_group.rs.name
  service_plan_id     = azurerm_service_plan.sp.id

  storage_account_name       = azurerm_storage_account.sa.name_sa
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key

  site_config {
    application_stack {
      python_version = "3.9"
    }
  }
}

resource "azurerm_function_app_function" "faf" {
  name            = "example-function-app-function"
  function_app_id = azurerm_linux_function_app.lfa.id
  language        = var.language
  test_data = jsonencode({
    "name" = "Azure"
  })
  config_json = jsonencode({
    "bindings" = [
      {
        "authLevel" = "function"
        "direction" = "in"
        "methods" = [
          "get",
          "post",
        ]
        "name" = "req"
        "type" = "httpTrigger"
      },
      {
        "direction" = "out"
        "name"      = "$return"
        "type"      = "http"
      },
    ]
  })
}
