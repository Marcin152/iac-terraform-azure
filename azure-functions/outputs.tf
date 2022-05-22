output "id" {
  description = "The function app ID"
  value       = azurerm_function_app_function.acr.id
}

output "primary_access_key" {
  value       = azurerm_storage_account.sa_tf_state.primary_access_key
  sensitive   = true
  description = "Azure Storage Account - Primary access key"
}
