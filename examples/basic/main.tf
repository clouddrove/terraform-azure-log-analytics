provider "azurerm" {
  features {}
  subscription_id            = "01110-12010122022111111c"
}

module "log-analytics" {
  source                           = "./../../"
  name                             = "app"
  environment                      = "test"
  resource_group_name              = "test"
  log_analytics_workspace_location = "test"

  #### diagnostic setting
  log_analytics_workspace_id = "333-2343-343"
}
