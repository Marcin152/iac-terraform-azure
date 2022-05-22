variable "name_rg" {
  type = string
  default = "resource-group"
}

variable "name_sa" {
  type = string
  default = "storage-account"
}

variable "name_sc" {
  type = string
  default = "storage-container"
}

variable "name_sb" {
  type = string
  default = "storage-blob"
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "account_tier" {
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  type = string
  default = "LRS"
}

variable "container_acces_type" {
  type = string
  default = "private"
}

variable "type" {
  type = string
  default = "Block"
}

variable "source" {
  type = string
  default = "local-file.zip"
}
