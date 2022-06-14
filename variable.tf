
#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = "test"
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "location" {
  type        = string
  default     = ""
}

variable "environment" {
  type        = string
  default     = "example"
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "tags" {
  type        = map(any)
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

variable "managedby" {
  type        = string
  default     = "anmol@clouddrove.com"
  description = "ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. `name`,`application`."
}
##comman
variable "enabled" {
  type        = bool
  default     = true
  description = "Flag to control the module creation."
}

variable "log_analytics_enabled" {
  type        = bool
  default     = true
}

variable "repository" {
  type    =string
  default = ""  
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "The name of the resource group in which to create the virtual network."
}

variable "key_name" {
  type        = string
  default     = ""
  description = "Location where resource should be created."
}

# log_analytics


variable "sku" {
  type        = string
  default     = ""
  description = "sku type is like :- basic, free, etc "
}

variable "retention_in_days" {
  type        = string
  default     = ""
  description = "The retention in days be like 30 40"
}


