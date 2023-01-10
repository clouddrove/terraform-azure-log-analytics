
#Module      : LABEL
#Description : Terraform label module variables.
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] ."
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg ''."
}

variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources."
  default     = true
}


variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to add to all resources"
}
variable "log_analytics_workspace_name" {
  type        = string
  description = "Name of the Log Analytics Workspace"
  default     = "loganalytics"
}

variable "log_analytics_workspace_location" {
  type        = string
  description = "Location of the Workspace"
  default     = "West Us"
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "Resource group of deployment"
}

variable "log_analytics_workspace_sku" {
  type        = string
  default     = "PerGB2018"
  description = "pecifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018"

}


variable "email_receiver" {
  type        = list(any)
  default     = []
  description = "One or more email_receiver blocks as defined below."
}

variable "scheduled_query_rules_alert" {
  type        = any
  default     = {}
  description = "Manages an AlertingAction Scheduled Query Rules resource within Azure Monitor."
}

variable "create_log_analytics_workspace" {
  type        = bool
  default     = false
  description = "The Flag for Module Enable or Disabled if it will false it will take `existing_log_analytics_workspace`."
}

#variable "allow_resource_only_permissions" {
#  type        = bool
#  default     = true
#  description = "Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true."
#}
variable "retention_in_days" {
  type        = number
  default     = null
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
}
variable "daily_quota_gb" {
  type        = string
  default     = "-1"
  description = "The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
}

variable "internet_ingestion_enabled" {
  type        = bool
  default     = true
  description = "Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true."
}
variable "internet_query_enabled" {
  type        = bool
  default     = true
  description = "Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true."
}
