## Managed By : CloudDrove
## Copyright @ CloudDrove. All Right Reserved.

# Module      : labels
# Description : Terraform module to create consistent naming for multiple names.

module "labels" {
  source  = "clouddrove/labels/azure"
  version = "1.0.0"

  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}


resource "azurerm_log_analytics_workspace" "example" {
  count                   = var.enabled && var.log_analytics_enabled ? 1 : 0
  name                    = format("%s-log-analytics", module.labels.id)
  location                = var.location
  resource_group_name     = var.resource_group_name
  sku                     = var.sku
  retention_in_days       = var.retention_in_days

}