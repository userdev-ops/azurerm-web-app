
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

variable "restrict_ip" {
  default = "0.0.0.0"
  description = "The ipv4 address you want to allow accessing the web app"
}

variable "restrict_subnet_mask" {
  default = "0.0.0.0"
  description = "The subnet mask for the ipv4 address you want to allow accessing the web app, defaults to 0.0.0.0 (every ip allowed)"
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
