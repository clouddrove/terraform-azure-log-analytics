provider "azurerm" {
  features {}
  subscription_id = "068245d4-3c94-42fe-9c4d-9e5e1cabc60c"
}

module "resource_group" {
  source  = "clouddrove/resource-group/azure"
  version = "1.0.2"

  name        = "app-log-analy"
  environment = "test"
  label_order = ["name", "environment"]
  location    = "Canada Central"
}

module "log-analytics" {
  source                           = "./../"
  name                             = "app"
  environment                      = "test"
  resource_group_name              = module.resource_group.resource_group_name
  log_analytics_workspace_location = module.resource_group.resource_group_location

  #### diagnostic setting
  log_analytics_workspace_id = module.log-analytics.workspace_id
}
