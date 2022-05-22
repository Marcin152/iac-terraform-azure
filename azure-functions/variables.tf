variable "name" {
  type = string
  default = "resource-group"
}

variable "location" {
  type = string
  default = "West-Europe"
}

variable "account_tier" {
  type = string 
  default = "Standard"
}
variable "resoruce_group_name" {
  type = string
  default = "azurerm_resource_group"

variable "account_replication_type" {
  type = string
  default = "LRS"
}  
