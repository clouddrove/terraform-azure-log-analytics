## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| Metric\_enable | Is this Diagnostic Metric enabled? Defaults to true. | `bool` | `true` | no |
| category | The name of a Diagnostic Log Category Group for this Resource. | `string` | `null` | no |
| create\_log\_analytics\_workspace | The Flag for Module Enable or Disabled if it will false it will take `existing_log_analytics_workspace`. | `bool` | `true` | no |
| daily\_quota\_gb | The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. | `string` | `"-1"` | no |
| diagnostic\_setting\_enable | n/a | `bool` | `true` | no |
| enabled | Set to false to prevent the module from creating any resources. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| eventhub\_authorization\_rule\_id | Specifies the ID of an Event Hub Namespace Authorization Rule used to send Diagnostics Data. | `string` | `null` | no |
| eventhub\_name | Specifies the name of the Event Hub where Diagnostics Data should be sent. | `string` | `null` | no |
| internet\_ingestion\_enabled | Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true. | `bool` | `true` | no |
| internet\_query\_enabled | Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true. | `bool` | `true` | no |
| label\_order | Label order, e.g. sequence of application name and environment `name`,`environment`,'attribute' [`webserver`,`qa`,`devops`,`public`,] . | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| log\_analytics\_destination\_type | Possible values are AzureDiagnostics and Dedicated, default to AzureDiagnostics. When set to Dedicated, logs sent to a Log Analytics workspace will go into resource specific tables, instead of the legacy AzureDiagnostics table. | `string` | `"AzureDiagnostics"` | no |
| log\_analytics\_workspace\_id | n/a | `string` | `null` | no |
| log\_analytics\_workspace\_location | Location of the Workspace | `string` | `"West Us"` | no |
| log\_analytics\_workspace\_sku | pecifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new Sku as of 2018-04-03). Defaults to PerGB2018 | `string` | `"PerGB2018"` | no |
| managedby | ManagedBy, eg ''. | `string` | `""` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| repository | Terraform current module repo | `string` | `""` | no |
| resource\_group\_name | Resource group of deployment | `string` | `""` | no |
| retention\_in\_days | The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | `number` | `null` | no |
| storage\_account\_id | The ID of the Storage Account where logs should be sent. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| workspace\_customer\_id | n/a |
| workspace\_id | n/a |
