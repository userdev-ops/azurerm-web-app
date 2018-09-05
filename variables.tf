variable "resource_group_name" {
  description = "The resource group where the resources should be created."
}

variable "location" {
  default     = "westeurope"
  description = "The azure datacenter location where the resources should be created."
}

variable "web_app_name" {
  description = "The name for the function app. Without environment naming."
}

variable "gateway_ip" {
  description = "The ip address to the gateway protecting the web application"
}

variable "account_replication_type" {
  default = "LRS"
  description = "The Storage Account replication type. See azurerm_storage_account module for posible values."
}


variable "app_settings" {
  default     = {}
  type        = "map"
  description = "Application settings to insert on creating the function app. Following updates will be ignored, and has to be set manually. Updates done on application deploy or in portal will not affect terraform state file."
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = "map"

  default = {}
}

variable "environment" {
  default     = "lab"
  description = "The environment where the infrastructure is deployed."
}

variable "release" {
  default     = ""
  description = "The release the deploy is based on."
}
