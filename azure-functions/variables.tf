variable "name_r" {
  type = string
  default = "resource-group"
}

variable "name_sa" {
  type = string
  default = "storage-account"
}

variable "name_lfa" {
  type = string
  default = "linux-function-app"
}

variable "name_sp" {
  type = string
  default = "service-plan"
}

variable "name_faf" {
  type = string
  default = "function-app-function"
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
}

variable "account_replication_type" {
  type = string
  default = "LRS"
}  

variable "os_type" {
  type = string
  default = "Linux"
}

variable "sku_name" {
  type = string
  default = "S1"
}
  
variable "language" {
  type = string
  default = "Python"
}
