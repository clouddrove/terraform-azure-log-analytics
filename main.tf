

module "labels" {
  source      = "clouddrove/labels/azure"
  version     = "1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
  repository  = var.repository
}

resource "azurerm_log_analytics_workspace" "main" {
  count                      = var.enabled && var.create_log_analytics_workspace == true ? 1 : 0
  name                       = format("%s-logs", module.labels.id)
  location                   = var.log_analytics_workspace_location
  resource_group_name        = var.resource_group_name
  sku                        = var.log_analytics_workspace_sku
  retention_in_days          = var.retention_in_days
  daily_quota_gb             = var.daily_quota_gb
  internet_ingestion_enabled = var.internet_ingestion_enabled
  internet_query_enabled     = var.internet_query_enabled
  tags                       = module.labels.tags
}
