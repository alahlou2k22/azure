locals {
  tags = {
    "Backup"          = "True",
    "Owner"           = "<%=customOptions.owner%>",
    "Terraform"       = "False",
    "CostCenter"      = "<%=customOptions.cost_center%>",
    "ApplicationName" = local.application_name,
    "OpeningHours"    = "<%=customOptions.opening_hours%>",
    "DowntimePeriod"  = "<%=customOptions.downtime_period%>",
    "Environment"     = "dev",
    "Region"          = local.location

  }
}
