provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "git::https://github.com/clouddrove/terraform-azure-resource-group.git"

  name        = "testrg"
  environment = "test"
  label_order = ["environment",  "name"]

  enabled  = true
  location = "North Europe"
}

module "log_analytics"  {
  source               = "../"
  name                 = "acctest-01"
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
  sku                  = "PerGB2018" 
  retention_in_days    = 30

}